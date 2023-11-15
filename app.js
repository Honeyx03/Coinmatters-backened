const { checkToken } = require("./verification/checkAuth") 

// DEPENDENCIES
const cors = require("cors");
const express = require("express");
const userController = require("./controllers/userController"); 

// CONFIGURATION
const app = express();

// MIDDLEWARE
app.use(cors());
app.use(express.json());

// ROUTES
app.get("/", (req, res) => {
  res.send("Welcome to CoinMatters App, where ya coin really matters");
});

app.post("/register", userController.registerUser);
app.post("/login", userController.loginUser);
app.get('/users', checkToken, userController.userData)

// 404 PAGE
app.get("*", (req, res) => {
  res.status(404).send("Page not found");
});

// EXPORT
module.exports = app;
