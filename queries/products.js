const db = require("../db/dbConfig.js");

const getAllProducts = async (id) => {
    try {
    const allProducts = await db.any(
    "SELECT * FROM products_list WHERE user_id=$1",
    id
    );
    return allProducts;
    } catch (err) {
    return err;
    }};

const getProduct = async (id) => {
  try {
    const oneProduct = await db.one("SELECT * FROM products_list WHERE id=$1", id);
    return oneProduct;
  } catch (error) {
    return error;
  }
};

const newProduct = async (product) => {
  try {
    const newProduct = await db.one(
      "INSERT INTO products_list (title, source, price, thumbnail, product_href, user_id) VALUES($1, $2, $3, $4, $5, $6) RETURNING *",
      [
        product.title,
        product.source,
        product.price,
        product.thumbnail,
        product.product_href,
        product.user_id,
      ]
    );
    return newProduct;
  } catch (error) {
    return error;
  }
};

const deleteProduct = async (id) => {
  try {
    const deletedProduct = await db.one(
      "DELETE FROM products_list WHERE id=$1 RETURNING *",
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
      "UPDATE products_list SET title=$1, source=$2, price=$3, thumbnail=$4, product_href=$5, user_id=$6 where id=$7 RETURNING *",
      [
        product.title,
        product.source,
        product.price,
        product.thumbnail,
        product.product_href,
        product.user_id,
        id,
      ]
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