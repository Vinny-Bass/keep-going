const http = require('http')

const server = http.createServer((req, res) => {
    res.end('Hello World from the server')
})

server.listen(3000, 'localhost', () => {
    console.log('Server is listening at localhost on port 3000')
})

