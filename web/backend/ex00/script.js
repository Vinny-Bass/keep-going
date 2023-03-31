const http = require('http')

const server = http.createServer((req, res) => {
        res.end('Hello World from the server')
})

server.listen(3000, 'localhost', () => {
        console.log("A server is running on localhost:3000.")
})