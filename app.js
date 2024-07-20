// Import the http module
const http = require('http');

// Create a server object
const server = http.createServer((req, res) => {
  // Write a response header
  res.writeHead(200, {'Content-Type': 'text/plain'});
  // Write a response body
<<<<<<< HEAD
  res.end('welcome Thailand!\n');
=======
  res.end('welcome Thailand v3!\n');
>>>>>>> new-fix
});

// Listen on port 3000
server.listen(3000, () => {
  // Log a message when the server starts
  console.log('Server running at http://localhost:3000/');
});
