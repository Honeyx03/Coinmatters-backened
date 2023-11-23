const jwt = require('jsonwebtoken');

const checkToken = (req, res, next) => {
    if(typeof req.cookies.dataToken !== "undefined"){
        req.token = req.cookies.dataToken
        next()
    } else {
        res.sendStatus(403)

    }
}

const checkLoginMiddleware = (req, res, next) => {
    const dataTokenCookie = req.cookies.dataToken;
    if (!dataTokenCookie) {
        return res.status(401).send('Unauthorized');
    }

    jwt.verify(dataTokenCookie, process.env.TOKEN_SECRET, (err, decoded) => {
        if (err) {
        return res.status(401).send('Unauthorized');
        }

        next();
    });
};

const logOutVerify = (req, res, next) => {
    try {
        // Clear the "dataToken" cookie on the server side
        res.clearCookie('dataToken', { httpOnly: true });
        next()
      } catch (error) {
        console.error('Error logging out:', error);
        res.status(500).json({ error: 'Internal server error' });
      }
}

module.exports = { checkToken, checkLoginMiddleware, logOutVerify };