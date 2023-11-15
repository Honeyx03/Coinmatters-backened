const bcrypt = require("bcrypt");
const userModel = require("../models/userModel");
const jwt = require("jsonwebtoken");

function generateAuthToken(user) {
  const payload = user;
  const secretKey = process.env.TOKEN_SECRET; 
  const options = { expiresIn: "1h" }; 

  return jwt.sign(payload, secretKey, options);
}

class UserController {
  async registerUser(req, res) {
    try {
      const { username, email, password } = req.body;
      const hashedPassword = await bcrypt.hash(password, 10);

      await userModel.createUser(username, email, hashedPassword);

      res.status(201).json({ message: "User registered successfully" });
    } catch (error) {
      console.error("Error registering user:", error);
      res.status(500).json({ error: "Internal server error" });
    }
  }

  async loginUser(req, res) {
    try {
      const { email, password } = req.body;

      const user = await userModel.findUserByEmail(email);
      if (!user) {
        return res.status(401).json({ error: "Invalid credentials" });
      }

      const passwordMatch = await bcrypt.compare(password, user.password);
      if (!passwordMatch) {
        return res.status(401).json({ error: "Invalid credentials" });
      }

      const token = generateAuthToken(user);
      
      res.status(200).json({ token });
    } catch (error) {
      console.error("Error logging in:", error);
      res.status(500).json({ error: "Internal server error" });
    }
  }
  async userData(req, res){
    const secretKey = process.env.TOKEN_SECRET; 
    jwt.verify(req.token, secretKey, (err, authorizedData) => {
      if(err){
          //If error send Forbidden (403)
          console.log('ERROR: Could not connect to the protected route');
          res.sendStatus(403);
      } else {
          //If token is successfully verified, we can send the autorized data 
          res.json({
              message: 'Successful log in',
              authorizedData
          });
          console.log('SUCCESS: Connected to protected route');
      }
  })
  }
}

module.exports = new UserController();
