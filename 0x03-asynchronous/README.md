# Dart Asynchronous

# Intro
Dart supports asynchronous programming to allow a program to complete work while waiting for another operation to finish. This can be used to fetching data over a network, writing to a database, or read data from a file.

# Future

A `future` is an instance of the Future class. A future represents the result of an asynchronous operation, and can have two states - uncompleted or completed.

**Uncompleted**
When you call an asynchronous function, it returns an uncomplete future. The future is waiting for the functions asynchronous operation.

**Completed**
If the asynchronous operation succeeds, the future completes with a value, otherwise it completes with an error

**Completing with a value**
A future with a type will produce that data type as its value. For example, a future with type `Future<String>` produces a string value. If a future doesn't produce a usable value. 

**Completing with an error**
If the async operation performed by the function fails for any reason, the future completes with an error. 

# Async and Await

## Authors/Contributors to this project
This README was made with :heart: by Allison Binger, student at Atlas School Tulsa. Find me on [GitHub](https://github.com/allisonabinger) or [LinkedIn](https://linkedin.com/in/allisonbinger)! :smile_cat:
