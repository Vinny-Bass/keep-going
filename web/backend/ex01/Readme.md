# EX01 - Starting with API's

<b>Goal</b>: In any language, create a file that runs a server on the 3000 port, this server should have a route as following `/batman`, and should be able to receive a GET request and return this JSON data:
```json
{
  "name": "Bruce wayne",
  "habilities": "Worlds great detective, rich, handsome",
  "weakness": "any dark ally, catwoman",
}
```

<b>How to test</b>: 

Testing by yourself, run the following command, if works, you should see the data above on your terminal.
```
curl http://localhost:3000/batman
```

After you run your server just run:
```
./test_script.sh
```

<b>Important:</b> Your server needs to be running at the time you run the test file and make the push, otherwise the test will fail.

<b>Important:</b> If you receive permissions error whe trying to run the test file, just run this on your terminal:
```
chmod +x ./test_script
```