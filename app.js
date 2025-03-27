const http = require('http');

// Create an HTTP server
const server = http.createServer((req, res) => {
  // Get the current date and time
  const currentDate = new Date();
  const formattedDate = currentDate.toString();

  // Print the current date and time to the console
  console.log("Current Date and Time: " + formattedDate);

  // Send the current date and time to the web browser
  res.writeHead(200, { 'Content-Type': 'text/html' });
  res.end(`<h1>Current Date and Time: ${formattedDate}</h1>`);
});

// Set the server to listen on port 8080
server.listen(8080, () => {
  console.log('Server is listening on http://localhost:8080');
});
