const db = require("../db/dbConfig.js");

const getAllProducts = async () => {
  try {
  const allProducts = await db.any("SELECT * FROM products");
  return allProducts;
  } catch (err) {
  return err;
  }};

const getProduct = async (id) => {
  try {
    const oneProduct = await db.one("SELECT * FROM products WHERE id=$1", id);
    return oneProduct;
  } catch (error) {
    return error;
  }
};

const newProduct = async (product) => {
  try {
    const newProduct = await db.one(
        "INSERT INTO products (product_name, size, price, retailer_id, thumbnail) VALUES($1, $2, $3, $4, $5) RETURNING *",
        [product.product_name, product.size, product.price, product.retailer_id, product.thumbnail]
      );
    return newProduct;
  } catch (error) {
    return error;
  }
};

const deleteProduct = async (id) => {
  try {
    const deletedProduct = await db.one(
      "DELETE FROM products WHERE id=$1 RETURNING *",
      id
    );
    return deletedProduct;
  } catch (error) {
    return error;
  }
};

const updateProduct = async (id, product) => {
  try {
    const updatedProduct = await db.one(
      "UPDATE products SET product_name=$1, size=$2, price=$3, retailer_id=$4, thumbnail=$5 WHERE id=$7 RETURNING *",
      [product.product_name, product.size, product.price, product.retailer_id, product.thumbnail]
    );
    return updatedProduct;
  } catch (error) {
    return error;
  }
};
module.exports = {
  getAllProducts,
  getProduct,
  newProduct,
  deleteProduct,
  updateProduct,
};