# Dart Classes

# Intro
Dart is an object-oriented language - it supports classes, interfaces, and more OOP features. The following project explores the Class functionality in Dart. The references for the examples in this README can be found [here](https://www.tutorialspoint.com/dart_programming/dart_programming_classes.htm)

# Declaring and Using a Class in Dart

The `class` keyword is used to declare a class.

A class definition can include fields, setters and getters, constructors, and functions.

```
    class class_name {
        [ fields ]
        [ getters/setters ]
        [ constructors ]
        [ functions ]
    }
```

Creating an instance of the class uses the `new` keyword.
```
    var object_name = new class_name([ arguments ])
```

**Fields**
Variables declared in a class representing data pertaining to objects.

**Functions**
Actions an object can take (aka methods).

```
    class Car {
        // field
        String engine = "E1001";

        // function
        void disp() {
            print(engine)
        }
    }
```

**Accessing Attributes and Functions**
The dot notation is used to access the data members of a class

```
// accessing an attribute
obj.field_name

// accessing a function
obj.function_name()
```

**Constructors**
Allocates memory for the objects of the class. A constructor is a special function of the class that is responsible for initializing the variables of the class. Dart defines a constructor with the same name as that of the class. It cannot be parameterized and does not have a return type. If you don't declare a constructor, a default no-argument constructor is provided for you.

```
    void main() { 
        Car c = new Car('E1001'); 
    } 
    class Car { 
        Car(String engine) { 
            print(engine); 
        } 
    }
```

Named Constructors allows for multiple constructors: 
```           
    class Car {                   
        Car() {                           
            print("Non-parameterized constructor invoked");
        }                                   
        Car.namedConst(String engine) { 
            print("The engine is : ${engine}");    
        }                               
    }

    void main() {           
        Car c1 = new Car.namedConst('E1001');  
        // prints The engine is : E1001                                     
        Car c2 = new Car();
        // Non-parameterized constructor invoked
    }
```

**this**
The `this` keyword refers to the current instance of the class. 

Since the parameter of the constructor and the name of the class's field are both `engine`, the `this` keyword is used to avoid ambiguity.
```
    void main() { 
        Car c1 = new Car('E1001'); 
    }  
    class Car { 
        String engine; 
        Car(String engine) { 
            this.engine = engine; 
            print("The engine is : ${engine}"); 
        } 
    } 
```

**Setters and Getters**
Initializes and retrieves the values of the fields of a class. Also called accessors and mutators, they allow the program to intialize and retrieve values of class fields respectively.

```
    class Student { 
        String name; 
        int age; 

        String get stud_name { 
            return name; 
        } 

        void set stud_name(String name) { 
            this.name = name; 
        } 

        void set stud_age(int age) { 
            if(age<= 0) { 
            print("Age should be greater than 5"); 
            }  else { 
                this.age = age; 
            } 
        } 

        int get stud_age { 
            return age;     
        } 
    }  
    void main() { 
        Student s1 = new Student(); 
        s1.stud_name = 'MARK'; 
        s1.stud_age = 0; // prints Age should be greater than 5
        print(s1.stud_name); // prints MARK
        print(s1.stud_age); // prints Null
    } 
```

# Class Inheritance in Dart
Dart supports the concept of inheritance. Child classes inherit all properties and methods except constructors from the parent class.

Dart does not support multiple inheritance.

```  
    class Shape { 
        void cal_area() { 
            print("calling calc area defined in the Shape class"); 
        } 
    }  

    class Circle extends Shape {}

    void main() { 
        var obj = new Circle(); 
        obj.cal_area(); // prints calling calc area defined in the Shape class
    }
```

**Types of Inheritance**

Single - Every class can at the most extend from one parent class
Multiple - A class can inherit from multiple classes (NOT supported in Dart)
Multi-level - A class can inherit from another child class.

**Class Inheritance and Method Overriding**
Method Overriding is a mechanism by which the child class redefines a method in its parent class. The number and type of function parameters must match while overriding the method, or else Dart will throw an error.

```
    class Parent { 
        void m1(int a){ print("value of a ${a}");} 
    }

    class Child extends Parent { 
        @override 
        void m1(int b) { 
            print("value of b ${b}"); 
        } 
    }
    void main() { 
        Child c = new Child(); 
        c.m1(12); // prints value of b 12
    } 
```

**Static**
The `static` keyword can be applied to the data members of a class like fields or methods. A static variable retains its values till the program finishes execution.

**Super**
the `super` keyword is used to refer to the immediate parent of a class. It can be used to refer to the super class version of a variable, property, or method.

## Authors/Contributors to this project
This README was made with :heart: by Allison Binger, student at Atlas School Tulsa. Find me on [GitHub](https://github.com/allisonabinger) or [LinkedIn](https://linkedin.com/in/allisonbinger)! :smile_cat:
