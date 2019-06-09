Hello.
 
In this and the next few videos, I'm going to be giving a overview of COOL,
 
the programming language in which you'll be writing a compiler. 

COOL is the Classroom Object Oriented Language. And the acronym, of course, is COOL. 

And the unique design requirement for COOL is that the compiler has to be able to be written in a relatively short period of time. 

We only have one quarter, or in some cases, a semester for students to write the compilers. 

And so, COOL has to be implementable quickly. 

And actually, since it's used primarily for teaching compilers, 

the number of COOL compilers in the world vastly exceeds, the number of COOL programs. 

So, there are many, many more compilers have been written, 

thousands of compilers, maybe tens of thousands of compilers have been written for COOL, 

but probably only some dozens, or hundreds of COOL programs. 

And so, it's probably the only language in existence for which this is true that 

the number of compilers actually exceeds the number of programs.
 
But it does tell you about the main design requirement. 

It's much more important in COOL that the compiler be easy to write than that it be easy to write programs in. 

And so, there are some quirks in the language, things that have been done specifically to make it easier to implement 

where that wouldn't take away from the teaching value of the language. 

But that would make it inconvenient to use the language on a day-to-day basis as a working programmer. 

So, what is in the language? 

Well, we've tried to design it so that it will give you a taste of modern notions of 

extraction, static typing reuse through inheritance, automatic memory management. 

And there's actually a few more things that we'll talk about when we come to them. 

But many things are left out. 

We're not going to be able to put everything in the language and have it be implementable quickly. 

We'll be able to cover some things in lectures.

But unfortunately, there'll even be some interesting language ideas that we won't be able to get to in this class. 

So, the course project is to build a complete compiler. 

And specifically, you're going to compile COOL into MIPS assembly language. 

So, MIPS is a real instruction set. It was for a machine that was designed in the 1980's. 

And there is a simulator for MIPS that runs on just about any kind of hardware. 

And so, this makes the whole project very portable.

We can run your compiler. You can generate MIPS assembly language.
 
And then that MIPS assembly language can be simulated on just about whatever kind of machine you have access to. 

The project is broken up into 5 assignments. 

First, you're going to write a COOL program. 

And that program itself will be an interpreter to give you a little bit of experience with writing a simple interpreter. 

And then, the compiler itself will consist of the 4 phases that we discussed,
 
lexical analysis, parsing, semantic analysis, and code generation. 

And all of these phases, I should emphasize, are plug compatible,

meaning that we have separate reference implementations of each of these. 

And so, for example, when you are working on semantic analysis, 

you will be able to take the lexical analysis, parsing, and code generation components from the reference compiler,
 
and plug your semantic analysis into that framework, and test it against the reference components. 

And so, in this way, if you have trouble with one component or aren't sure that whether your components is working very well,
 
you won't have a problem in working on a different component, because you'll be able to test that independently. 

And finally, there's no required optimization assignment.

But we do have some suggestions for optimizations that you can do. 

And many people have written optimizations for COOL. 

And so, this is an optional assignment if you're interested in learning something about program optimization. 

So, let's write the simplest possible COOL program. 

And the first thing to know is that COOL source files, and in the extension  .CL for COOL.
 
And you can use whatever editor you like to write your programs. 

I happen to use Emacs. You can use some other editor if you like. 

And every COOL program has to have a class called main. 

And let's talk about that for a second. 

So, a class declaration in COOL begins with the key word, class, followed by the name of the class.
 
So, in this case, Main, followed by a pair of curly braces.
 
And inside the curly braces is where all the stuff that belongs to the class goes.
 
And every class declaration must be terminated by a semicolon. 

So a program consists of a list of class declarations. Each class declaration terminated by a semicolon. 

So, that's the structure of a class. 

And now, we need this class to actually do something.
 
So, we're going to have a method in this class.
 
And let's call the method main. 

In fact, the main method of the Main class must always exist. 

This is the method that's run to start the program.
 
And furthermore, this method must take no arguments. 

So, the argument list for the main method is always empty. 

And let's say the main method, its body always goes in a pair of curly braces. 

So, the main method always goes inside curly braces. 

And a class consists of a list of such declarations. 

And again, those declarations must all be separated by semicolons, or terminated, excuse me, by semicolons.

So, in this case, we only have one method in the class, but still has to have its semicolon.
 
And now, we can say what we want the method actually do.
 
So, this is the place for the code for the method goes.
 
And let's just have the simplest possible method, the one that just evaluates to 1, OK?

So, COOL an expression language, which means that wherever a piece of code can go, you can put an arbitrary expression.
 
Any expression can go there.
 
There's no explicit return statement for a method. 

It's just a value of the method body is the value of the methods. 

So, in this case, we just put 1 in there, and that will be the value of this method when we run it. 

So, let's save that. 

And now, we can try compiling this simple program.
 
So, how do we compile?
 
The compiler is called coolc for the COOL compiler.
 
And you just give the COOL compiler a list of COOL source files. 

So, in this case, there's just one file 1.cl.
 
Hit enter, and we got a syntax error.
 
So, we have to come back and fix that.
 
And the error says, at or near the open curly brace on line 3, there's a mistake. 

And I know what the mistake is, because I'm a competent COOL programmer, at least somewhat competent COOL programmer. 

Cool methods must declare their return type. 

So, we need to put a type here. 

And the syntax for the declaration is to put a colon after the name of the method and the argument list, and then the name of a type. 

And since we're returning 1 for this method, we might as well say that the main method is going to return an integer.
 
So, save that, go back to our compilation window, and let's compile the program again. 

And this time, it compiles successfully. 

And now, if we look in our directory, we see that there is a new file called 1.s. 

That's the assembly code for the program 1. 

And now, we could try to run this code. 

And the MIPS simulator is called spim.
 
And it just takes an assembly file to simulate.
 
And so, we just give it 1.s, hit enter, and it will run. 

A whole bunch of stuff is printed out. 

But as you can see, it says part way down that the COOL program successfully executed. So, that's good.
 
And then, afterwards, there are some statistics, 

and things like the number of instructions executed, a number of loads and stores, a number of branches. 

Those things would be interesting if we're worried about performance, if we were to say working on the optimization of the compiled code.
 
But we're not doing that right now. We're just running programs. And we can see if this program works. 

So, the program ran. It terminated successfully. But it didn't actually produce any output. 

And that's because we didn't ask it to produce any output.
 
If we want to have output, we have to go back and modify the program again. 

So, what this program does currently is that it just returns its value, but nothing is done with that value. 

It's not printed out or anything like that. 

If you wanted to have something printed out in a COOL program, you have to do that explicitly. 

So, there's a special class, a built in primitive class, called IO. 

And we can declare, what's called a attribute of this class, be a IO attribute, and it will be called i, OK?
 
And i will be a object that we can use to do IO. 

So now, in our main method here, we could add a call to out_string, i.out_string is how we invoke a method, OK?

So, out_string is a method of the IO class. So, we use i to invoke that method.
 
And then, we can pass it a string that we want printed out on the screen. 

So, for example, we could say "Hello World!", OK?
 
And now, we have to decide what to do with our, with our 1 there. 

And let me show you one more feature of COOL. 

Let's leave 1 there, and let's make it part of a statement block.

So, a statement block consists of a sequence of expressions separated by semicolons. 

And you can have any number of expressions.

And the semantics of a statement block, or an expression block is to just evaluate the expressions in order. 

And the value of the block is the value of the last expression. 

But now, a statement or an expression block has to be included in its own set of curly braces, OK?

So, that now is a valid COOL program.
 
So, let me just read this for you.
 
So, the body of the program is a block of expressions. 

The first one executes a out_string call to the object i, which is going to print "Hello World!" for us. 

And then, the second one evaluates to 1, which is the value of the entire of the entire method.
 
OK, actually I should say it's the value of the block, OK?

And then, because the block is the body of the method, the value of the block becomes the value of the entire method.
 
So, 1 will be returned from this method call. 

So, let's save this, go back over here, and let's compile this again. 

So, looks like I failed to save it. 

Let's compile this, and we see we have a syntax error. 

And so, it says on line 4, we have a syntax error at or near our closing curly brace. 

And the problem here is that a statement block, or expression block
 
consists of a series or a sequence of expressions terminated by semicolons, 

and we forgot to terminate the last expression in the sequence by its semicolon. So, we have to add that. 

And now, we should be able to compile this, and lo and behold it compiles correctly.
 
And then, we can run it. And now we see...
 
Oh, we got another mistake. 

So, when the program ran, it complained that we have a dispatched void. 

So, that on line 4, our dispatch was to an object that didn't exist. 

And you can see the dispatch call right here to i, and it doesn't exist, 

because, in fact, we forgot to allocate an object for i. 

So here, we declare I to be of type IO, but that doesn't actually create any objects. 

That just says that it creates a variable name i. But I doesn't actually have a value. 

So, if you want i to actually have a value, we have to initialize it to something. 

So, we can initialize it to a new IO object. 

And "new" here is the way you allocate new objects in COOL.
 
And "new" always take a type argument.
 
So, in this case, we were creating a new object of type IO, and were assigning it to this object i. 

And notice here that i is what would be called a field name in Java. It's what we call an attribute in COOL. 

So, these are the data elements of the class. 

And so, the class can have both names of things, 

so, attributes or fields that hold values, as well as methods that can perform computation.

Let's save this and switch back. 

And now, we'll compile this again. 

So, it still compiles. And now we can run it. 

And now, it runs, and lo and behold, as you can see down there third line from the top, it prints out "Hello World!". 

And that looks a little bit ugly, because the successful execution message is on the same line as our "Hello World!" message. 

So, let's fix that. 

Let's come back over here. 

And in our string here, we can add a new line at the end of the string.
 
So, \n is how you write a new line character in the string. 

Save that, come back over here, let's compile.

So, if you don't know Unix, ! will repeat the previous command that began with the same prefix that you type after the !. 

So, I want to run the last command that began with c, which is to compile.
 
And then, I want to run the last command that began with s, which is to run spim.

And now, we can see there it is. All nice. "Hello World!" is on a line by itself. 

Let's continue now. 

Let's clear all this out. 

So, let me just show you a few variations on the same program. 

What I'm going to do here is just rewrite it in a couple of different ways. 

So, I just illustrate a couple of features of COOL and get you more familiar with the syntax, 

and also just show some alternative ways to do the same thing. 

So, this block here of expressions is kind of a clumsy way to implement the Hello World program. 

So, let's get rid of that. Let's get rid of the block. Let's get rid of 1 here at the end, OK?

Let's just make the statement body a single expression again.
 
And now, the problem we're going to have is that the types won't match. 

But just to illustrate that, let me show it to you.
 
So, let's do coolc of 1,cl.

And you'll see here that it complains that inferred return type IO of the method main does not conform to the declared return type Int. 

So, coming back over here to the program.

The compiler figured out that this expression, i.out_string, yields an object of type IO. 

So, it returns the i object as the results evaluating this expression. 

And that does not match the type Int. 

And so naturally, the compiler says, hey, something's wrong with the types. 

Well, that's easily repaired. 

We can just change the return type for the main method to say it returns something of type IO. 

So, let's go back over here and see if that now works. 

So, we compile the program. And then we run spim on the output.
 
And yes, everything still works as expected. 

Now, We don't have to be so specific about the type over here, 

since we're not actually using the result of the method body for anything. 

I mean, the program just exits once it prints the string. 

We could have allowed ourselves more flexibility here. 

We could just declare the result type of main to be of type Object. 

So, Object is the root of the class hierarchy in COOL. 

Every other class is a subclass of Object. 

So, let's save this first, and then we can come back over to our compilation window. 

We can compile it. And we can run it. And it still works. 

So now, another thing we can do, if we want, is 

we could observe here that this attribute that we declare, this field i, isn't really necessary. 

Here we have a special name i when the Main object is constructed to run the program.
 
A new IO object is allocated to i, and then that gets used in the main method. 

We can actually just do all of that inside the main method itself,

by just allocating a new IO object right here, and then calling out_string on that object, alright?

So, this should also work. 

And let's check it out. 

So, it compiles. And lo and behold, it runs. 

Alright, so, coming back over here let's illustrate one more, or a couple more things that we could do. 

So, we could also say that class Main inherits from IO. 

So, we have to have the IO functionality somewhere in order to call the out_string method. 

So, we have been doing that by creating a separate object of type IO. 

But now, we can say, well just the main object is itself. 

And something that has all the capabilities of IO by inheriting from IO. 

And if you've seen any object-oriented language before, this will be a familiar concept. 

So, main here gets all the attributes and methods of IO, in addition to whatever attributes and methods of its own that it will have.
 
And now, instead of having to allocate a new IO object in order to call out_string, 

we can just invoke it on self, which is the name of the current object when the main method runs.
 
In other languages, self is called this, OK?

And so, let's re-save it. So now, let's go over and compile this. 

So, it compiles, it compiles, and it runs, alright? 

So, last example here, we don't have to name self actually in this dispatch. 

There's a feature that allows us to call a method without explicitly naming the object on which it's dispatched and that defaults to self.

So, if no object is named in a dispatch, then it's just a dispatched self. 

So, this should also work. 

And indeed, it does. 

So, that concludes our first example. 

In the next couple of videos we'll look at some more complex examples of COOL programming.