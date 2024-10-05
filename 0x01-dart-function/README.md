# Dart Function

# Intro
The files in this directory dive deeper into the functionality of Dart.

# Reference Code Snippets

Variables can be printed in strings in more than one way:

```
    main() {
        String location = "California";
        print("I went to ${location}");
        print('I went to $location')
    }
    // both print "I went to California"
```

List access and manipulation
```
main() {
    var list = [1, 2, 3, 4];

    list.removeAt(list.indexOf(2))
    // list.indexOf(2) returns 1, since list[1] == 2
    // list.removeAt(1) removes list[1], which holds the value of 2.

    print(list)
    // prints [1, 3, 4];
}
```
