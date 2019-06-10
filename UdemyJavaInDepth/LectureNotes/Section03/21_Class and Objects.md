Hi, there. this is Dheeru Mundluru. And welcome back.

We know that Java is an object-oriented programming language.

On a preview from the previous section, we also say that an object-oriented programming language helps model real world scenarios in a more natural way.

And it does so with the help of objects and classes.

And object-oriented programming, as its name suggests, is all about objects.

And an object is created from a class.

And in the last section, we will look at the HelloWorld class.

Both classes and objects are the most fundamental units in an object-oriented programming language.

In this lecture, we will first understand class and objects at a conceptual level, that is, how they represent real world scenarios.

And then we will see how they represent in a Java program.

Object-oriented programming, which in short is often referred to as OOP, creates its roots

back to 1960s.

So, it's a very old programming paradigm.

And it was considered to implement large complex projects in a simpler way.

And by that, we mean they help model real-world scenarios in a more natural way.

So, that's the main benefit of object-oriented programming.

Let's take a look at a few real-world examples.

One example is a student registering in a particular course, which is offered by a particular department.

Another example would be a customer buying a product.

Similarly, we can help a doctor treating its patient.

And all these examples can be more naturally modeled or represented in an object oriented-oriented environment.

So, let's see how that is possible. And let's pick the first example here.

So, here we have 3 entities, student, course, and department.

Here, a student would have some data associated with him or her and can also have some behavior associated.

Data would be things like student name, student age, gender, address and so on.

And behavior would be actions like registering for a course, or updating one's profile information.

Similarly, course and department would also be associated with some data and some behavior.

And here is an instance, where we have a student named John, and we have 4 courses, and 2 departments, Computer Science, and Civil.

So here, we have some instances with data being just the name, like John or Java or Computer Science.

And we can have these 4 courses offered by the CS department.

And John can register in these 3 courses.

So, that are some behavior or actions happening between these instances.

So, this is a realistic scenario where the student John has registered in 3 courses which are offered by the CS department.

So, an instance like John can be visualized in this way,

where data, apart from name, were also include other things like student ID, gender, and courses that John has registered in.

Similarly, John can also perform the two actions, registering for a course, and updating his profile information.

In an object-oriented environment, this data that John's instance has is generally referred to as state of the instance, where these actions are just behaviors.

And this whole instance of John is referred to as an object.

So, the student John is represented by this object.

And similarly, we can have other students represented by other objects, which are unique to those students.

So, an object has both state and behavior.

And these objects cannot exist by themselves.

There should be some sort of a specification that tells that data that objects can have, like ID, name, gender, and so on, 

and also behavior, course registration, and update profile.

 And that specification is the class.

So, classes are like a blueprint, and objects are actual instances of the class.

In fact, often the term instance is also used to refer to object.

Here is an illustration of relations between a class and its objects.

At the top, we have the Student class defining the state and behavior that this object can have.

 state includes student information, such as ID, name, and gender.

And there is only one behavior defined, which allows the student objects to update their profile information.

Now, for the sake of simplicity, course related stuff, like the course registered by a student, has been omitted from this illustration.

And we can also see that 3 student objects in ellipticals. And these are created from the Student class.

Each student object has its own state.

For example, first student's name is John, who is a male and has a student ID of 1000.

Similarly, second student's name is Raj, who is also a male, and has an ID of 1001.

Third student's name is Anita, who is a female, and has an ID of 1002.

And the behavior updateProfile() would be associated with all 3 objects, that is, it is common to all 3 of them.

Now in the Student class, updateProfile() would be a method.

So, methods define the behavior. 

And in the last section, we have seen the main method in the HelloWorld class.

And object data is defined by variables.

Variables and methods in the class are considered as members of the class.

And later in the section, we will learn about both variables as well as methods.

Now, apart from variables and methods, a class can also have other less commonly used members, such as nested classes, and nested interfaces, 

which will be discussed much later in the second half of the course.





So, when someone refers to class members they are not to do either reliables are methods.

So that's about it conceptually that's all there is to class and its objects not let's look at how they

are represented in code and we are going to use the same student class example.

But for now let's not worry about writing the code.

Our goal for now is to just get a feel for how to create an object from a class in Java undocked.

We will see in the next line.

At the end of this section we will write in slightly more complex version of the same program which

will include more the concepts which we learn in this section and it's going to be a very nice demonstration.

Also as we progress through this section we will use short demos to look at the different concepts but

at the end we going to bring all of them together and that particular demonstration of the Student class

example.

So here is the definition of student plus it is just declaring the variables which would represent the

state that student objects can so be how id name and gender n variables are like containers as they

hold some data on each available is also associated with something called a data type which tells what

type of data the media can hold.

For instance ID as declared as an ant and it means integer.

Which means that ID can hold integers like those in 2001 and so on.

Similarly name and gender are counted with the data type string and string implies that the variables

can hold textually together like Amitav or mean on female for gender ended up will be discussed later

in the section.

One string will be discussed in one of the subsequent sections.

Next the Student class also defines the method a breed profile which simply updates the existing name

with the new name and the new name is passed as input to that method.

Unmet that parameter represents the input.

In this case it has the name mune in this pipe string method parameter is also a variable just like

ID on me on in the body of the method the variable name is assigned with the value of the metric parameter

Nguni equal to is the assignment operator under just a size the value on the right to the variable on

Golla methods will also be discussed later in the section.

So that's the Student class.

Next let's see how we can create a student object and then initialize it state.

And we would also see how the students only mentored a profile can be executed.

Unfolded.

We will use a new class called student based on this Ajume that the code is done in this main method

of Douglas So first step is to create a student object.

And this is how it is done.

You can use the key word new which would be followed by the key word student as we want to create an

object of the student which is in turn followed by parenthesis so new followed by student followed by

practices would create a student object which is then assigned to a variable called S whose data pipe

is student which indicates that s would hold a student object.

So it is similar to the way we declared the variable ID in the Student class with ID the data type was

in indicating that it could store an integer value.

So we created a student object name as next we need to initialize state.

That is we need to set the values for the variables ID name and gender that the Student class has declared

and for that we use the dot operator that is we will highlight the object name as followed by dark color

byte variable name which here is ID undone be assigning a value which just goes on in this case.

Secondly we have s followed by dot followed by the variable name and it is assigned with the value Jowa.

Similarly gender is a sign that main Here we have double quotes and closing Jo-Ann on men but not for

the ID value thousand.

And that's because Joanne and meal are strings on and Jawa strings.

We need to use double quotes.

So the student object as you know existed hover over here let's assume that the name was misspelled

as Joanne and start off John.

And so we need to fix it.

And for that we need to execute the refined method and pass it the correct name.

John as input on the method would then upgrade the name variable with the new name.

John so to execute a bit profiling method we once again use the Dock operator that is object name as

is followed by dot which is followed by a profile and we are parsing Jonathan for the method.

Here we say that we are invoking our calling the object profile method on the object as.

So that's how we create an object initialized it with it and then work its methods actually to initialize

objects did.

It is normally done using something called constructors but they will be discussed later in the section.

So doing it.

The BBC here is not done in professional projects but this is just for us to get started.

Initially I think the state also not that in a real object oriented software you would have tons of

objects communicating with each other and the V-1 object communicates with other is by invoking a method

of the object on passing in the necessary data as input.

So thats about it.

I hope you all understand what a class an object is how they represent real world entities like student

and how they can be created in Java.

Thank you and see you in the next picture.