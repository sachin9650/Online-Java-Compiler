<%@ taglib uri="/struts-tags" prefix="s"%>

<html>
	<head>
		<style>
			.intro
			{
				width:100%;
				height:500px;
				border-style:groove;
				border-width: 10px;
				background-image:url("menu.png");
			}
			
			hr 
			{ 
				display: block;
				color:black;
				margin-top: 0.5em;
				margin-bottom: 0.5em;
				margin-left: 5px;
				margin-right: 100px;
				border-top: 1px solid #ccc;
				border-style: inset;
				border-width: 1px;
			}
			
			.para
			{
				padding:10px;
			}
			
			.heading
			{
				margin-left:10px;
				padding:5px;
				font-family:CenturySchoolbook;
				font-size:40px;
				color:white;
				width:500px;
				background-color:rgb(57,114,183);
			}
			
			.compiled_txtarea
			{
				border-width: 5px;
				border-style: inset;
				font-family:CenturySchoolbook;
				font-size: 15px;
			}
			
		</style>
	</head>
	
	<body>
		<div class="intro">
			<h3 class="heading">Frequently Asked Interview Questions </h3>
			<hr />
			<p class="para">
				<textarea class="compiled_txtarea" rows="15" cols="90">What is Polymorphism?
The Polymorphism can be referred as one name many forms. It is the ability of methods to behave differently, depending upon the object who is calling it. The key features of Polymorphism are :
1. Allows using one interface for multiple implementations.
2. Supports Method Overloading: Multiple methods with same name, but different formal argument.
3. Supports Method Overridden: Multiple methods have the same name, same return type, and same formal argument list.

Explain garbage collection?
The Java uses the garbage collection to free the memory. By cleaning those objects that are no longer reference by any of the program. Step involve in cleaning up the garbage collection :
Garbage Object Collection : First step is to collection and group all those object which are no more reference with any of the program. We can use the different methods to collect the garbage object like using runtime.gc() or system.gc().
Run Finalize method : To free up those object which is collected by the garbage collector java must execute the Finalize method to delete all those dynamically created object.

What is an immutable object?
An immutable object is one that we cannot change once it is created. Steps involved in creation of an immutable object are :
- Make all of its data fields private.
- Methods which can perform changes in any of the data fields after the construction of object must be avoided.

How are this() and super() used with constructors?
this() Constructors : 
- It is used to pointing the current class instance. 
- It can be used with variables or methods. 
- It is used to call constructer of same class. 
- Private variable cannot be accessed using this().

super() Constructer : 
- It is used to call constructor of parent class.
- Must be the first statement in the body of constructor.
- Using this we can access private variables in the super class.

What are Access Specifiers available in Java?
Java offers four access specifiers, described below :
Public : Public classes, methods, and fields can be accessed by every class.
Protected : Protected methods and fields can only be accessed within the same class to which the methods and fields belong.
Default (no specifier) : When we do not set access to specific level, then such a class, method, or field will be accessible from inside the same package to which the class, method, or field belongs.
Private : Private methods and fields can only be accessed within the same class to which the methods and fields belong. Private methods and fields are not inherited by subclasses.

What is Constructor?
- A constructor is used to initialize a newly created object.
- It is called just after the memory is allocated for the object.
- It can be used to initialize the objects.
- It is not mandatory to write a constructor for the class.
- Name of constructor is same as the class name.
- They cannot be inherited.
- A constructor is invoked whenever an object of its associated class is created.

What are the List interface and its main implementation?
The List helps in collections of objects. Lists may contain duplicate elements. The main implementations of the List interface are as follows :
ArrayList : Resizable-array implementation of the List interface.
Vector : Synchronized resizable-array implementation of the List.
LinkedList : Doubly-linked list implementation of the List interface. Better performance than the ArrayList implementation when elements are inserted or deleted timely.

Explain the user defined Exceptions?
User Defined Exceptions are exceptions defined by the user for specific purposed. This allows custom exceptions to be generated and caught in the same way as normal exceptions. While defining a User Defined Exception, we need to take care of the following aspects :
- It should be extend from Exception class.
- Use toString() method to display information about the exception.

Describe life cycle of thread?
Threads follow the single flow of control. A thread is execution in a program. The life cycles of threads are listed below :
Newborn state : After the creations of Thread instance the thread is in this state but before the start() method invocation. Thread is considered not alive in this phase.
Runnable state : A thread starts its life from Runnable state. After the invoking of start() method thread enters Runnable state.
Running state : A thread first enters Runnable state.
Blocked state : A thread can enter in this state because of waiting the resources that are hold by another thread.
Dead state : A thread can be considered dead when its run() method completes. If any thread comes on this state that means it cannot ever run again.

What is an Applets?
Applets : 
- These are small java programs.
- They can send from one computer to another computer over the internet using the Applet Viewer that supports java.
- Applets can run in a Web browser as it is a java program. It can be a fully functional Java application because it has the entire Java API at its disposal.
- Applets follow the security rules given by the Web browser.
- Applet security is also known as sandbox security.

What is the Set interface?
- A set interface is a collection of element which cannot be duplicated.
- The set interface contains methods inherited from the collection.
- It provides methods to access the elements of a finite mathematical set.
- Two Set objects are equal if they contain the same elements.
- It models the mathematical set abstraction.

What is a HashSet and TreeSet?
HashSet :
- The HashSet is an unsorted, unordered Set.
- It is Collection set that restricts duplicate elements and also repositioning of elements.
- It implements the Set interface and extends AbstractSet.
- It uses hash code of the object being inserted. 

TreeSet :
- The TreeSet is a Set implemented when we want elements in a sorted order.
- Sorting of element is done according to the natural order of elements or by the help of comparator provided at creation time.

How do you decide when to use HashMap and when to use TreeMap and what is difference between these two?
- HashMap is used when we want to perform insertion, deletion, and locate elements in a Map.
- TreeMap is used when we want to traverse the elements in a sorted order. Depending upon the size of collection, adding elements to HashMap is easy. For sorted elements traversal we can convert the HashMap into TreeMap.
HashMap :
- Lets us to have null values and also one null key
- Iterator in the HashMap is Fail-Safe.
- It is Unsynchronized.
HashTable :
- It does not allow null value as key and value.
- It is not synchronized.

What is the Comparable interface?
- The Comparable interface is used to sort collections and arrays of objects using the collections.sort() and java.utils. 
- The objects of the class implementing the comparable interface can be ordered. 
- All classes implementing the Comparable interface must implement the compareTo() method that has the return type as an integer. 
- The signature of the compareTo() method is as follows :
int i = object1.compareTo(object2)

If object1 < object2: The value of i returned will be negative.
If object1 > object2: The value of i returned will be positive.
If object1 = object2: The value of i returned will be zero.
When should I use abstract classes and when should I use interfaces?

Use Interface, when :
- Design changing frequently or when various implementations only share method signatures.
- We need some classes to use some methods which we do not want to be included in the class.
Use Abstract Class, when :
- Various implementations are of the same kind and use common behavior.
- Enabling with generalized form of abstraction and leave the implementation task with the inheriting subclass.
- Creating planned inheritance hierarchies.

Explain the Polymorphism principle?
- The Polymorphism can be referred as one name many forms. It is the ability of the methods to behave differently, depending upon the object who is calling it. 
- Polymorphism exists in three distinct forms in java :
1. Method overloading
2. Method overriding through inheritance
3. Method overriding through the java interface

What are the difference between throw and throws?
The difference between throw and throws are :
- Throw is used to trigger an exception where as throws is used in the declaration of exception.
- Without throws, checked exception cannot be handled where as checked exception can be propagated with throws.
- Throw is used inside the method where as throws is used with the method signature.
- Throw is followed by an instance but throws is followed by class.

What is difference between preemptive scheduling and time slicing?
Differences between preemptive and time scheduling are :
- In Preemptive scheduling the highest priority task executes until it enters the waiting or dead stated or a higher priority task comes into existence.
- Time slicing, a task executes for a predefined time period and then the pool of ready tasks. The scheduler then determines which task should execute next, based on priority and other factor.
Explain traversing through a collector using Iterator.

What are the principle concepts of OOPS?
There are four principle concepts upon which object oriented design and programming test. They are :
1. Abstraction : 
Abstraction refers to the act of representing essential features without including the background details or explanations.
2. Polymorphism : 
It is the ability to create a variable, a function, or an object that has more than one form.
3. Inheritance : 
Inheritance is the process by which objects of one class acquire the properties of objects of another class.
4. Encapsulation : 
Encapsulation is a technique used for hiding the properties and behaviors of an object and allowing outside access only as appropriate. It prevents other objects from directly altering or accessing the properties or methods of the encapsulated object.

What are the basic features of java?
The basic features of java are given below :
- Java is simple.
- Java provides immense security.
- Java provides high portability.
- Java provides object oriented programming features.
- Java provides robustness.
- Java is multithreaded.
- Java provides architecture neutrality. 
- Java is distributed.
- Java is dynamic.

How java becomes object oriented?
- Java follows the paradigm of OO programming.
- Java follows modular approach.
- Java follows the abstraction aspect.
- Java follows the OO principle encapsulation.
- Java follows the OO principle polymorphism.
- Java follows the OO principle inheritance.

How java becomes robust?
- Java provides multi-platformed environment.
- Java provides high reliability in the design.
- Java is a strictly typed language.
- Java checks the code at runtime.
- Java provides predictablity.
- java provides various keywords.

How a Java program compiles?
- First the source file name must be extended with .java extension. e.g. Myprog.java
- Execute the javac compiler.
- javac compiler creates a file called Myprog.class i.e. the bytecode version of Myprog.java.
- The bytecode is executed by the Java runtime-systems which is called Java Virtual Machine (JVM).
- JVM is platform dependent.

What is 'public static void main ( String args[ ] ) ' signifies?
- The access specifier is the 'public' keyword .
- 'static' keyword allows main() to be called without instantiating a particular instance of a class.
- 'void' affirms the compiler that no value is returned by main().
- 'main()' method is called at the beginning of a Java program.
- 'String args()' tells a parameter named args,which is an instance array of class String.

What 'System.out.println()' signifies?
- 'System' is a predefined class .
- System class gives access to the system.
- 'out' is the output stream.
- 'println' is printing the line on the console.
- This is a console output statement.

What is a variable in Java program?
- It's a memory location.
- The memory location is given some name.
- The memory location is being assigned some value.
- The value may change of the variable.
- The memory location size changes with the type of the variable.

What is JVM?
- JVM is the acronym stands for 'Java Virtual Machine'.
- JVM provides the execution environment.
- JVM is not platform independent..
- JVM is the Java run-time system.
- JVM is an interpreter of bytecode.
- JVM also makes the sytem secured.

What is bytecode?
- Bytecode is an instruction set.
- Bytecode extends wiith .class.
- 'javac' compiler translates the .java file into .class.
- JVM interpretes bytecode.
- Bytecode facility makes Java platform-independent.
- It also confirms security to the Java code.

What is Java applet?
- Applet is a java program.
- It has been designed for transmitting the Java code over the internet.
- It is automatically executed by Java-enabled Web Browser.
- Applet can respond to the user input.
- Applet is dynamically programmed.
				</textarea>
			</p>
		</div>
	</body>
</html>