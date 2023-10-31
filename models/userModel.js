const db = require("../db/dbConfig");

class UserModel {
  async createUser(username, email, hashedPassword) {
    return db.one(
      "INSERT INTO users (username, email, password) VALUES ($1, $2, $3) RETURNING id",
      [username, email, hashedPassword]
    );
  }

  async findUserByEmail(email) {
    return db.oneOrNone("SELECT * FROM users WHERE email = $1", email);
  }
}

module.exports = new UserModel();
