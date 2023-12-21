const express = require("express");

const { getUser } = require("../queries/users.js");
const products = express.Router({ mergeParams: true });
const {
  getAllProducts,
  getProduct,
  newProduct,
  deleteProduct,
  updateProduct,
} = require("../queries/products.js");

// INDEX
products.get("/", async (req, res) => {
    const { listId } = req.params;

    try {
      const allProducts = await getAllProducts(listId);
      res.json(allProducts);
    } catch (err) {
      res.json(err);
    }
  });

// SHOW
products.get("/:id", async (req, res) => {
  const { id } = req.params;
  const product = await getProduct(id);
  if (product) {
    res.json(product);
  } else {
    res.status(404).json({ error: "not found" });
  }
});

// UPDATE
products.put("/:id", async (req, res) => {
  const { id } = req.params;
  const updatedProduct = await updateProduct(id, req.body);
  if (updatedProduct.id) {
    res.status(200).json(updatedProduct);
  } else {
    res.status(404).json("Product not found");
  }
});

products.post("/", async (req, res) => {
  const product = await newProduct(req.body);
  res.status(200).json(product);
});

// DELETE
products.delete("/:id", async (req, res) => {
  const { id } = req.params;

  const deletedProduct = await deleteProduct(id);
  if (deletedProduct.id) {
    res.status(200).json(deletedProduct);
  } else {
    res.status(404).json({ error: "Product not found" });
  }
});

module.exports = products;