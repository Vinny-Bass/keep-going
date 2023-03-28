const http = require('http');

const hostname = 'localhost';

const port = 3000;

const server = http.createServer((req, res) => {
  if (req.url === '/batman' && req.method === 'GET') {
    res.statusCode = 200;
	res.setHeader('Content-Type', 'application/json');
    const data = {
      "name": "Bruce wayne",
      "habilities": "Worlds great detective, rich, handsome",
      "weakness": "any dark ally, catwoman"
    };
    const json = JSON.stringify(data, null, 2); 
    res.end(json);
  } else {
    res.statusCode = 404;
    res.end('Route not found');
  }
});

server.listen(port, hostname, () => {
  console.log('Server running at port 3000');
});

