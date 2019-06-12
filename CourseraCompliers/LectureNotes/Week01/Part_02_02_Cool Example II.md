Welcome back.
 
In this video, we're going to look at another example of COOL programing. 

This time, let's move beyond the simple hello world kind of examples, and on to something more exciting, 

say, the ever popular factorial function. 

So, in order to write factorial, we'll need to open a file, which we can write some code. 

Let me start that. 

And recall from last time that every COOL program has to have a Main class.
 
And the Main class is required to have a main method. 

And we don't care what the main method return, so we'll just have it return something a type Object.
 
And let me just fill in a skeleton here on the file. 

And so now, we're ready to write some codes. 

So, what are we going to have the main method do? 

Well, before we can actually write factorial, before we can get to the guts of this program, which is actually not very difficult,

we need to talk about IO some more,  ecause we're going to need to be able to read and write numbers. 

We need to be able to read numbers from the user who's running the program, and print them back out. 

So, let's just review little bit about IO. 

So, in order to invoke the IO functions, we need an IO object. 

And one of the IO functions is something that prints out a string. 

So, let's just write a program that we already know how to do, just to confirm that we remember that. 

And we can compile this program. And it should just print 1. 

And, let's see. Indeed it does, OK? So, it prints out 1. 

And so now, let's come back here.
 
And let's talk about how to do input. 

So, instead of just printing out 1, let's print out a string that the user types in. 

So, in here, we're going to read a string. 

And in order to do that, we need an IO object, because there is another function, another method, called in_string, OK?
 
And so, this will read a string, and return a string. 

And then, to make sure that we get the nice output, let's concatenate on to that string a new line. 

So, this is just to when it prints this string back out, it will be printed on its own line. 

我们编译这段程序 把命令改正确
So, let's try compiling this, and steak. 

It compiles, And now we can run spim. 

Remember ! in UNIX runs the previous command that began with the same letters. 

And now the program runs and it waits, because it's waiting for me to type something. 

And if I type in 1, it prints back 1.
 
And if I type in 42, it gives me back 42, alright?

So now, the next thing we need to talk about is how to convert strings into integers, 

because if we're going to do a factorial, we want to work on integers and not strings. 

And at the moment, we're just reading and writing strings. 

So, there is a library written in COOL that does conversion between integers and strings. 

And we're going to give the Main class here the functionality of that class, which is called A2I, for ASCII to integer. 

And that defines a bunch of methods that can convert between strings and integers. 

So let's add those commands in here. 

So here, here's our string that we've read in. 

And what we want to do now is to convert this into an integer. 

So let me just add a couple of parenthesis here. 

So there's our string, OK? 

And now, we're going to invoke on that the method. I'm sorry, we're going to call on that the function, the method, a2i, OK?

And let's just double check here that we've got parenthesis in the right place. 

So, that's the argument to a2i. 

Now, recall that when we have a dispatch to a method and it's just sitting by itself with not object, it's dispatched to the self object. 

And the self object is the object of the current class that we're in, in this case, the main object, which has inherited the A2I methods.
 
And so, the a2i functions should be defined in there. 

Now we have an integer. And we can do something with that integer if we like. 

So, let's add more parenthesis here, and let's just say we add just 1 to the integer, OK?

And then, once we're done with our integer, whatever operation it is that we want to do with the integer,
 
we need to convert it back to a string so that we can print it out. 

An there's an inverse function i2a that will do that. 

So, I don't know if we have all the parenthesis in the right places at this point. So, let's just check. 

Yes, that looks like that should work. 

So this will read a string, convert it to an integer, add 1 to it, 

convert it back to a string, concatenate on a new line, and print it out. 

Now let's see if all that actually works.

So let's run the compiler and we have a problem here. 

It says that we have an undefined class A2I. 

And the reason is, we didn't supply the code for A2I. 

So, if we look in our directory here, we'll see I've already copied in the class file for A2I. 

And I encourage you to go and look at that code. It's actually interesting code to see how the conversions are written in COOL. 

But now, we need to talk about how to compile a program that uses a library.

And the way you do it is very simple. 

You just list all the class files on the command line when you call up the compiler. 

And it will read them all in and treat them as a single program. 

So, in this case, we compile fact together with A2I. And that complies. 

And then we can run it. 

And now, if I type in 3, it prints 4. 

And if I type in 1, it prints 2. 

And so the program seems to be working. 

And now we're almost ready to write our factorial function. 

So, what do we want to do in factorial? 

Well, we want to do something other than just adding 1. 

Instead, we want to call our special function factorial. 

So let's insert a call to factorial in here, OK?

And let's get rid of the +1. 

And then, let's check that we have all the parenthesis that we need. 

So, we need to close off the a2i call, the factorial call, the i2a call. And then, that last one should be the out_string call.

And it is, OK?

So now, we can add a method fact to this class.

And fact is going to take an integer argument. So we need a parameter here. And its type is Int, of course. 

And the whole thing is going to return an integer. 

And then, we have body of our function.
 
And probably a good idea here, just to make sure that we got this much right, to do something simple. 

So, let's just try to make a function that returns 1 more than it's argument. 

So, this will do exactly the same thing that we had before.
 
And let's just confirm that it is working. 

So, we compile with the a2i library. And now we have a syntax error. 

And we see that I forgot the closing semicolon here for the method. 

Remember the class body is a list of methods, and each method is terminated by a semicolon.
 
We must try compiling that again. Now it compiles. Let's run it. 

We type in 4. It gives back 5, alright.
 
So, looks like we're ready now to actually write the code for factorial. 

And this is gonna be anti-climactic because it's actually a very simple code if we write it recursively. 

So, let's do that. 

So, how's that going to work? 

Well, everybody knows the definition by Hardy Hope. 

If i=0, then the factorial of 0 is 1. And we have a keyword there then 1.
 
Otherwise, the factorial is going to be i times, the factorial of i-1, right?
 
And then, if statements in COOL always end in the keyword fi.
 
So, it's an if-then-else-fi construct. 

And that is actually the entire definition. 

So now, we should have a program that actually computes factorial.
 
It compiles. So now, let's run it. 

So factorial of 3 is 6. 

And factorial of 6 is 720. That looks right. 

And if we try it one more time with a bigger number, we get a large number, we think that's probably correct. 

And so, anyway, our factorial function is working. 

So, now let's come back here, and just as an exercise, let's rewrite this code iteratively. 

So, instead of using a recursive function, let's write it using a loop. 

And in order to that, we are going to get rid of that code. 

What are we going to need? 

Well, we're going to need an accumulator here. 

We're going to need a local variable that we can use to accumulate the results of the factorial computation. 

And the way you declare local variables in COOL is with let statements, or let expressions. 

So, we can have, let's call this variable fact for the result of the factorial. 

And notice here that I can have a variable that has the same name as the function. 

And the programming language, COOL will not get confused about that, because variables and functions play different roles. 

So, we'll have the fact, it's of type Int. And we do initialize it to 1, alright, so that multiplication will work. 

I think that the default for integers is to be initialized to 0.
 
And that would not be good if we're going to be multiplying up fact with other numbers. 

Alright, so then, a let has two parts. 

It has the variable or variables that you are declaring. 

This could actually be a list of variables. We'll only have one this time. 

And then it has a body. The expression or the computation in which the fact variable is available. 

And what do we want to do? 

So, I think we're going to need to have this be a statement block, 

because we're gonna need to have more than one statement in the sequence. And we'll see why in just a minute. 

But then we want to have a loop. 

And so, what is our loop going to do? 

Well, we're going to say while i is not equal to 0, and what do we need to do?
 
The opening for the loop body, the opening keyword is called loop. 

And now, I think we're going to need another statement block here. 

So let's open up a block. We probably need to do more than one thing. 

The first thing we want to do is we want to be fact times i, OK?

So, we know that i is not 0, so we need to multiply the current value of i into fact to accumulate the result.
 
And then, we want to subtract 1 from i.
 
And notice that the assignment statement in COOL is this backwards arrow. 

That's how you do assignment. It's also how you do initialization. So, initialization and assignment look the same. 

Then we can close off our statement block, OK?

So, the body of a while loop is always a single expression. 

In this case, that expression is a block that consists of two statements.

And then, we can close the loop. 

And the closing for a loop is the pool key word. 

And then, now we're in a statement block, so this has to end with a semicolon. 

Notice the statement block up there from the let.
 
And now, we want the result of the let block, or the let expression, to be factorial. 

So, whatever we got out of the while loop, whatever we computed in the while loop, 

we want that to be the result of the entire let expression. 

So, that's the last statement of our block. Remember the last statement of a statement blog is the value of the blog. 

The body of the let is the result of the led.

So, fact will also be the result of the whole let statements. It's just the result of the statement block. 

And since the body of the factorial method itself is just the let expression, fact will be the result of the whole thing. 

And so, this, if we haven't made any mistakes, should be an iterative version of factorial. 

So, let's compile this. 

And amazingly it complies on the first try. 

And now let's run it. 

And whoa! It actually works. So we got 6. 

And let's just do one more test to convince ourselves that things are working reasonably well, and they are. 

Now, let me just point out one common, mistake, that you can easily make, 

and that I make when I haven't written cool programs for a little while. 

If you're a C programmer or a Java programmer, you might think about writing assignments like this. 

So, I just use the equal sign to write assignment. 

That looks completely fine if you're familiar with those languages, or used to programming in those languages. 

And now, let's see what happens when we try to compile this. 

Oh, it compiles just fine. 

And then what happens when we try to run it?
 
Well it asks for an input. So, let's give it an input.
 
And then, we see that we've run out of heap. 

And that looks like an infinite loop. 

So we're going around and around the loop and consuming memory for some reason. 

And we'll get to that much later in the class why this loop actually ends up consuming memory. 

But, clearly, we don't have enough memory in the loop. And eventually, we run out. 

And so, that's a sure sign of an infinite look. 

So, what is going on here? 

Well, the thing is that equals operator in COOL is the comparison operators.
 
So, here we compare i with O and that returns a boolean. 

So, these are perfectly valid COOL expressions. They just happen to be booleans. 

And so, you don't ever actually update i, or factorial in this program. 

Your are just comparing fact with fact * i, and i with i - 1.
 
And the program is perfectly happy to do that. 

It just doesn't compute the factorial function. 

And it never terminates, because I never reaches 0. 

So, that concludes our factorial example. 

And we'll do one more example next time of a more complicated, of a COOL program with some non-trivial data structures.