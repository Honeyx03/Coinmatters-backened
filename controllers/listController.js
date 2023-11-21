const express = require("express");

const { getUser } = require("../queries/users.js");
const lists = express.Router({ mergeParams: true });
const {
  getAllLists,
  getList,
  newList,
  deleteList,
  updateList,
} = require("../queries/lists");
const productsController = require("./productsController.js");
lists.use("/:listsId/products", productsController);

// INDEX
lists.get("/", async (req, res) => {
    const { userId } = req.params;
    try {
      const allLists = await getAllLists(userId);
      res.json(allLists);
    } catch (err) {
      res.json({ error: "No lists found" });
    }
  });

// SHOW
lists.get("/:id", async (req, res) => {
  const { id } = req.params;
  const list = await getList(id);
  if (list) {
    res.json(list);
  } else {
    res.status(404).json({ error: "not found" });
  }
});

// CREATE
lists.post("/", async (req, res) => {
    try {
      const list = await newList(req.body);
      res.status(200).json(list);
    } catch (error) {
      res.status(400).json({ error: error });
    }
  });

// UPDATE
lists.put("/:id", async (req, res) => {
  const { id } = req.params;
  const updatedList = await updateList(id, req.body);
  if (updatedList.id) {
    res.status(200).json(updatedList);
  } else {
    res.status(404).json("List not found");
  }
});

// DELETE
lists.delete("/:id", async (req, res) => {
  const { id } = req.params;
  const deletedList = await deleteList(id);
  if (deletedList.id) {
    res.status(200).json(deletedList);
  } else {
    res.status(404).json({ error: "List not found" });
  }
});

module.exports = lists;