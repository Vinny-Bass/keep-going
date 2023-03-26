# Backend Chapter

Before starting the exercises, you should understand some important concepts:
1. What is backend ?
2. What is a server ?
3. How the client-server model works ?
4. What is an API ?
5. What is a JSON ?

Remember that if any of this subjects is not clear with the explanations, just go and google it :)

## What is BackEnd?
Backend refers to the server-side of a web application, which handles tasks like data storage, processing, and communication between the web application and databases. In simple terms, the backend is responsible for processing user requests, executing business logic, and managing data.

When a user interacts with the frontend (the visible part of a web application), the backend receives and processes the user's input, performs the necessary operations, and sends the results back to the frontend to be displayed to the user. The backend is essentially the "behind-the-scenes" part of a web application that enables it to function smoothly and efficiently.

In the context of a real-world analogy, the backend can be compared to the kitchen of a restaurant. The frontend represents the dining area where customers interact with the menu and place orders, while the backend (kitchen) is where the actual work happens to fulfill those orders.

## What is a server? 

A server can be thought of as a librarian in a library. In this analogy, the library represents the server, the books represent the data or resources, and the librarian is the one who manages and provides access to those resources.

When a visitor (client) comes to the library seeking information, they approach the librarian (server) with their request. The visitor might be looking for a specific book, article, or piece of information.

The librarian (server) listens to the visitor's (client's) request, searches the library (database or storage), retrieves the requested book or resource, and hands it over to the visitor (client). The librarian (server) is responsible for managing the library's (server's) resources, organizing them, and providing access to the visitors (clients) as needed.

In this analogy, the librarian (server) plays a crucial role in connecting the visitors (clients) with the information (data or resources) they need. The server manages, processes, and delivers the data in response to the client's requests, just like a librarian who helps visitors find the books or information they are looking for.

## How the client-server model works?
The client-server model can be thought of as a restaurant experience. In this analogy, the customer (client) and the restaurant staff, particularly the waiter (server), interact with each other to fulfill a specific request.

When a customer (client) enters the restaurant, they sit at a table and browse the menu. The menu represents the available resources or services that the restaurant (web application) offers. The customer then makes a decision and places an order by communicating their choice to the waiter (server).

The waiter (server) listens to the customer's (client's) request, takes it to the kitchen (backend), where the order is prepared (data is processed or fetched). Once the meal (data or resource) is ready, the waiter (server) brings it back to the customer (client) and serves it.

In this analogy, the customer (client) initiates the interaction by making a request, and the waiter (server) responds by fulfilling that request. The client and server work together to complete the process, while the actual work (preparing the meal or processing data) happens behind the scenes (in the kitchen or backend).

## What is an API?
An API (Application Programming Interface) can be thought of as the menu in a restaurant. In this analogy, the menu represents the API, which provides a list of available dishes (functions or services) that the restaurant (application) offers.

When a customer (client) wants to order food, they don't go into the kitchen (backend) themselves to prepare the meal. Instead, they use the menu (API) to see what dishes are available and communicate their choice to the waiter (server). The menu (API) acts as an interface, simplifying the customer's interaction with the restaurant by providing a predefined set of options to choose from.

Similarly, in the digital world, an API is a predefined set of rules and methods that allows different software applications to communicate with each other. Developers use APIs to access the functionality or data provided by a particular application or service, without having to know the internal details of how that application works.

In both cases, the API (menu) simplifies the interaction by providing a clear and structured way for clients to access available resources or services.

## What is a JSON?
JSON (JavaScript Object Notation) is a lightweight data format that is easy to read and write for both humans and machines. It is used to exchange and store data between different parts of a web application, such as between the client and the server.

Imagine JSON as a digital postcard. When you send a postcard to a friend, you write a message on it and provide the address where it should be delivered. The postcard (JSON) carries the message (data) in a readable and organized manner. The message on the postcard is written in a simple format that both the sender and the receiver can easily understand.

Similarly, JSON uses a simple and structured format to represent data as key-value pairs. The keys are like labels describing the data, and the values are the actual data. For example:

```json
{
  "name": "John",
  "age": 30,
  "city": "New York"
}
```

In this JSON example, "name", "age", and "city" are the keys, and "John", 30, and "New York" are the corresponding values. JSON's simple and organized format makes it a popular choice for exchanging and storing data in web applications.