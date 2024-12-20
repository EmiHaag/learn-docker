const os = require("os");
const http = require("http");

// Obtén el hostname asignado por Docker
const hostname = os.hostname();

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end(`Response from container: ${hostname}\n`);
});

const PORT = 3000;
server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
