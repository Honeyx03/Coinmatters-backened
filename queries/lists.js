const db = require("../db/dbConfig.js");

const getAllLists = async (user_id) => {
    try {
    const allLists = await db.any(
    "SELECT * FROM lists WHERE user_id=$1",
    user_id
    );
    return allLists;
    } catch (err) {
    return err;
    }};

const getList = async (id) => {
  try {
    const oneList = await db.one("SELECT * FROM lists WHERE list_id = $1", id);
    return oneList;
  } catch (error) {
    return error;
  }
};

const newList = async (list) => {
  try {
    const newList = await db.one(
      "INSERT INTO lists (list_name, user_id) VALUES($1, $2) RETURNING *",
      [
        list.list_name,
        list.user_id,
      ]
    );
    return newList;
  } catch (error) {
    return error;
  }
};

const deleteList = async (id) => {
  try {
    const deletedList = await db.one(
      "DELETE FROM lists WHERE list_id=$1 RETURNING *",
      id
    );
    return deletedList;
  } catch (error) {
    return error;
  }
};

const updateList = async (id, list) => {
  try {
    const updatedList = await db.one(
      "UPDATE lists SET list_name=$1, where user_id=$2 RETURNING *",
      [
        list.list_name,
        id,
      ]
    );
    return updatedList;
  } catch (error) {
    return error;
  }
};
module.exports = {
  getAllLists,
  getList,
  newList,
  deleteList,
  updateList,
};