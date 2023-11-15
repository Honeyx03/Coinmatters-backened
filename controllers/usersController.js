const express = require("express");
const users = express.Router();

const {
  getAllUsers,
  getUser,
  deleteUser,
  updateUser,
} = require("../queries/users.js");
const { validateURL } = require("../validations/checkUsers.js");
const productsController = require("./productsController.js");
users.use("/:userId/products", productsController);

// INDEX
users.get("/", async (req, res) => {
    const allUsers = await getAllUsers();
    if (allUsers[0]) {
      res.status(200).json(allUsers);
    } else {
      res.status(500).json({ error: "server error" });
    }
});

// SHOW
users.get("/:id", async (req, res) => {
  const id = req.params.id;
  const user = await getUser(id);
  if (user) {
    res.json(user);
  } else {
    res.status(404).json({ error: "not found" });
  }
});

// DELETE
users.delete("/:id", async (req, res) => {
  const { id } = req.params;
  const deletedUser = await deleteUser(id);
  if (deletedUser.id) {
    res.status(200).json(deletedUser);
  } else {
    res.status(404).json("User not found");
  }
});

// UPDATE
users.put("/:id", validateURL, async (req, res) => {
  const { id } = req.params;
  const updatedUser = await updateUser(id, req.body);
  res.status(200).json(updatedUser);
});

module.exports = users;