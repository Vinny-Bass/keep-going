const http = require('http');

const server = http.createServer((req, res) => {
  if (req.url === '/batman' && req.method === 'GET') {
    const data = {
      name: 'Bruce Wayne',
      habilities: 'Worlds great detective, rich, handsome',
      weakness: 'any dark ally, catwoman',
    };
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(data));
  } else {
    res.statusCode = 404;
    res.end('404 Not Found');
  }
});

server.listen(3000, () => {
  console.log('Server listening on port 3000');
});