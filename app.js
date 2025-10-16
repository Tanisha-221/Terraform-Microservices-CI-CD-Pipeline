// app.js
const express = require('express');
const path = require('path');
const app = express();

// Serve static files from the current directory
app.use(express.static(__dirname));

// Basic route
app.get('/', (req, res) => {
  res.send(`
    <h1>Hello Azure DevOps CI/CD!</h1>
    <img src="/newplot.png" alt="Sample Image">
    <img src="/Friedrich_Engels_portrait_(cropped).jpg" alt="Sample Image">
  `);
});

// Export the app for use in other modules
module.exports = app;

// Start server only if not in a test environment
if (process.env.NODE_ENV !== 'test') {
  const port = process.env.PORT || 80;
  app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
  });
}
