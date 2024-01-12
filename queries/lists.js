const db = require("../db/dbConfig.js");

const getAllLists = async () => {
    try {
    const allLists = await db.any(
    "SELECT * FROM lists");
    return allLists;
    } catch (err) {
    return err;
    }};

const getUserLists = async (user_id) => {
    try {
      const userLists = await db.any(
      "SELECT * FROM lists WHERE user_id=$1",
      user_id
      );
      return userLists;
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
      "INSERT INTO lists (user_id, list_name, products, note) VALUES($1, $2, $3, $4) RETURNING *",
      [
        list.user_id,
        list.list_name,
        list.products,
        list.note
      ]
    );
    return newList;
  } catch (error) {
    return error;
  }
};


const newUserList = async (list) => {
  try {
    const userList = await db.one(
      "INSERT INTO lists (user_id, list_name, products, note) VALUES($1, $2, $3, $4) RETURNING *",
      [
        list.user_id,
        list.list_name,
        list.products,
        list.note
      ]
    );
    return userList;
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
      "UPDATE lists SET user_id=$1, list_name=$2, products=$3, note=$4 WHERE id=$6 RETURNING *",
      [
        list.list_name,
        list.products,
        list.note, 
        id
      ]
    );
    return updatedList;
  } catch (error) {
    return error;
  }
};
module.exports = {
  getAllLists,
  getUserLists,
  getList,
  newList,
  newUserList,
  deleteList,
  updateList,
};