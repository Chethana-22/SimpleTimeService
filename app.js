const { timeStamp } = require('console');
const express = require('express');
const app = express();
const port = 8080;

app.use((req, res, next) =>{
    const XForwarded = req.headers['x-forwarded-for'];
    req.clientIP = XForwarded ? XForwarded.split(',')[0].trim() : req.connection.remoteAddress;
    next();
});

app.get('/', (req, res) => {
    res.json({
        timestamp : new Date().toISOString(),
        ip : req.clientIP,
    });
});

app.listen(port, () => {
    console.log(`SimpleTimeService app listening at ${port}`);
});