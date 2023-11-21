const { checkToken } = require("./verification/checkAuth") 

// DEPENDENCIES
const cors = require("cors");
const express = require("express");
const registerController = require("./controllers/registerController"); 

// CONFIGURATION
const app = express();

// MIDDLEWARE
app.use(cors());
app.use(express.json());

// ROUTES
app.get("/", (req, res) => {
  res.send("Welcome to CoinMatters App, where ya coin really matters");
});

app.post("/register", registerController.registerUser);
app.post("/login", registerController.loginUser);
app.get('/users', checkToken, registerController.userData)

// Users ROUTES
const usersController = require("./controllers/usersController.js");
app.use("/users", usersController);

// 404 PAGE
app.get("*", (req, res) => {
  res.status(404).send("Page not found");
});

// EXPORT
module.exports = app;
