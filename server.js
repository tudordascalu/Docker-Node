#!/bin/bash
require("dotenv");
const express = require("express");
const app = express();
const { PORT = 3000 } = process.env;

app.get("/", (req, res) => {
  res.send("Hello there, have a nice one!");
});

app.listen(PORT, () => {
  console.log(`App is listening on port ${PORT}`);
});
