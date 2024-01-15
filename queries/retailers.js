const db = require("../db/dbConfig.js");

// ALL Retailers
const getAllRetailers = async () => {
    try {
      const allRetailers = await db.any("SELECT * FROM retailers");
      return allRetailers;
    } catch (error) {
      return error;
    }
};

// ONE Retailer
const getRetailer = async (id) => {
  try {
    const oneRetailer = await db.one("SELECT * FROM retailers WHERE retailer_id=$1", id);
    return oneRetailer;
  } catch (error) {
    return error;
  }
};

// DELETE
const deleteRetailer = async (id) => {
  try {
    const deletedRetailer = await db.one(
      "DELETE FROM retailers WHERE retailer_id=$1 RETURNING *",
      id
    );
    return deletedRetailer;
  } catch (error) {
    return error;
  }
};

// UPDATE
const updateRetailer = async (id, retailer) => {
  try {
    const updatedRetailer = await db.one(
      "UPDATE retailers SET retailer_name=$1, zipcodes_array=$2, website=$3 WHERE retailer_id=$4 RETURNING *",
      [retailer.retailer_name, retailer.zipcodes_array, retailer.website, id]
    );
    return updatedRetailer;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllRetailers,
  getRetailer,
  deleteRetailer,
  updateRetailer
};