//// app.js
const express = require('express');
const app = express();
const port = 3002;

app.get('/', (req, res) => {
  res.send('Hello, World! This is my Node.js app deployed via GitHub Actions!');
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
