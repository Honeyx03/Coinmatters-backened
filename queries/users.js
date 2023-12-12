const db = require("../db/dbConfig.js");

// ALL Users
const getAllUsers = async () => {
    try {
      const allUsers = await db.any("SELECT * FROM users");
      return allUsers;
    } catch (error) {
      return error;
    }
};

// ONE User
const getUser = async (id) => {
  try {
    const oneUser = await db.one("SELECT * FROM users WHERE user_id=$1", id);
    return oneUser;
  } catch (error) {
    return error;
  }
};

// DELETE
const deleteUser = async (id) => {
  try {
    const deletedUser = await db.one(
      "DELETE FROM users WHERE user_id=$1 RETURNING *",
      id
    );
    return deletedUser;
  } catch (error) {
    return error;
  }
};

// UPDATE
const updateUser = async (id, user) => {
  try {
    const updatedUser = await db.one(
      "UPDATE users SET username=$1, email=$2, password=$3, created_at=$4 where user_id=$5 RETURNING *",
      [user.username, user.email, user.password, user.created_at, id]
    );
    return updatedUser;
  } catch (error) {
    return error;
  }
};

// CREATE TABLE users (
//     id SERIAL PRIMARY KEY,
//     username VARCHAR(255) UNIQUE NOT NULL,
//     email TEXT UNIQUE NOT NULL,
//     password TEXT NOT NULL,
//     created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
//    );

module.exports = {
  getAllUsers,
  getUser,
  deleteUser,
  updateUser
};