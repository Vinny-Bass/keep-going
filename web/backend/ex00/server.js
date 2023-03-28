const http = require("http");

const host = 'localhost';
const port = 3000;

const requestListener = function (req, res) {
	res.writeHead(200);
	res.end("Hello world!");
};

const server = http.createServer(requestListener);
server.listen(port, host, () => {
	console.log(`Server is running on http://${host}:${port}`);
});
