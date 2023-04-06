# EX03 - More data manipulation

<b>Goal</b>: In any language, create a file that runs a server on the 3000 port, this server should have a route as following `/user`, and should be able to receive a POST containing the following data:

```json
{
  "name": "Clark Kent",
  "occupation": "journalist",
  "age": 46,
  "friends": ["Bruce Wayne", "Barry Allen", "Louis Lane"]
}
```

You should get this data and add to an `data.json` file in this repo, if the file do not exists you should create it. You need to add an ID to the data also, so the final data on data.json file will be:

```json
{
  "id": "any uuid",
  "name": "Clark Kent",
  "occupation": "journalist",
  "age": 46,
  "friends": ["Bruce Wayne", "Barry Allen", "Louis Lane"]
}
```

The id should be an valid UUID (search on google). You also should validate if the format of data is correct on POST request, for example the age field should not be able to receive an string (you need to trhow an error, search on google how to trhow errors in the language that you are using)

You application should be able to return the data via GET request to /user also, and should return the same data received on POST but with the ID field.

<b>How to test</b>: 

After you run your server just run:
```
./test_script.sh
```

<b>Important:</b> Your server needs to be running at the time you run the test file and make the push, otherwise the test will fail.

<b>Important:</b> If you receive permissions error whe trying to run the test file, just run this on your terminal:
```
chmod +x ./test_script
```