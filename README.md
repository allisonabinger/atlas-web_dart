  <h1 align="center">
  <img src="./assets/Dart-logo.png" align="left" width="50">
   Introduction to Dart
  <img src="./assets/Dart-logo.png" align="right" width="50"></h1>


## What is Dart?
Dart is a client-optimized programming language designed for the development of fast apps on any platform. It can offer multi-platform development and a flexible execution runtime platform for app frameworks. 

## Rundown of the Dart language

**main**
Every app requires the top-level `main()` function, which is where execution starts. 

```
    void main() {
        print('Hello, World!');
    }
```

**Variables**
Most variables can be created using `var` if it is initialized.
```
    var name = 'Bob';
    // this is ok, declares name as a string
```

Dart is type safe, using static type checking. You can declare the variable with its data type. 
```
    String name = 'Bob';
    // declares name as a string
```

**Null Safety**
The Dart language enforces null safety to prevent errors.

Specifying a type for a variable can allow for null values with the `?` character.

You must initialize variables before using them. Nullable variables will default to null and are initialized be default. Non-nullable variables must have a value initialized.

```
    String? name
    // Allowed. Nullable type. Can be null or string.

    String name
    // Not allowed. Non-nullable type. Cannot be null but can be string.
```

You also cannot access properties or call methods on an expression with a nullable type. 

You don't have to initialize a local variable where it's declared, but you have to assign it a value before its used. 

```
    int userCount;

    if (countingIsFun) {
        userCount = countUsers();
    } else {
        userCount = 0;
    }

    print(userCount)
    // userCount is non-null by the time it's passed to print()
```

The `late` modifier is used to declare a non-nullable variable that is initialized after it's declaration.

If a variable is sure to be set before it's used, you can fix the Dart control flow error by marking the variable as `late`

```
    late String description;

    void main() {
        description = 'Nice to see you!'
        print (description)
    }
```

A `final` variable can only be set once.

```
    final name = 'Bob'; // without type annotation
    final String nickname = 'Bobby';

    name = 'Christy'; // Static analysis: failure. 
```

Use `const` for variables that you want to be compile-time constants. If the const variable is at the class level, mark it `static const`.



---
---
&nbsp;
&nbsp;
&nbsp;

# Concepts:

[**UnitTest**](https://docs.python.org/3/library/unittest.html)
Unit Testing Framework - supports test automation, sharing of setup and shutdown code for tests, aggregation of tests into collections, and independence of the tests from the reporting framework. 

[**Mock Object Library*](https://docs.python.org/3/library/unittest.mock.html)
Using `unittest.mock` to replace parts of your system under test with mock objects, and to make assertions about how they have been used. Additionally, `patch()` acts a function decorator, class decorator, or a context manager. Inside the body of the function or `with` statement, the target is patched with a new object.


## Resources and Descriptions
[Resource]()
[Resource]()

&nbsp;
---
&nbsp;

# Code Examples and Highlighted Tasks

## Filtered Logger

### Concepts Used


&nbsp;
---
&nbsp;

## Authors/Contributors to this project
This README was made with :heart: by Allison Binger, student at Atlas School Tulsa. Find me on [GitHub](https://github.com/allisonabinger) or [LinkedIn](https://linkedin.com/in/allisonbinger)! :smile_cat:
