const db = require("../db/dbConfig");

class UserModel {
  async createUser(username, email, hashedPassword) {
    return db.one(
      "INSERT INTO users (username, email, password) VALUES ($1, $2, $3) RETURNING id",
      [username, email, hashedPassword]
    );
  }
}
// class UserLogin {
// async findUserByUsername(username) {
//   return db.oneOrNone("SELECT * FROM users WHERE username = $1", username);
// }
// }


module.exports = new UserModel();
