Welcome to this course on compilers. 

My name is Alex Aiken. 

I'm a professor here at Stanford University. 

And we're going to be talking about the implementation of programming languages.
 
There are two major approaches to implementing programming languages, compilers, and interpreters.

Now, this class is mostly about compilers. 

But, I do want to say a few words about interpreters here in the first lecture. 

So, what does an interpreter do?
 
Well, I'm gonna draw a picture here, this box is the interpreter. And it takes...
 
Let me label it with a big I.
 
It takes as input, your program that you wrote, and whatever data that you want to run the program on. 

And it produces the output directly, 

meaning that it doesn't do any processing of the program before, it executes it on the input.
 
So you just write the program, and you invoke the interpreter on the data, and the program immediately begins running.

And so, we can say that the interpreter is online, 

meaning the work that it does is all part of running your program. 

Now a compiler is structured differently. 

So, we can draw a picture here, which we'll label with a big C for the compiler.
 
And the compiler takes as input just your program. 

And then it produces an executable. 

And this executable is another program. It might be assembly language. It might be bytecode. 

It could be in any number of different implementation languages. 

But now this can be run separately on your data. And that will produce the output, OK?
 
And so, in this structure, the compiler is offline, meaning that we pre-process the program first. 

The compiler is essentially a pre-processing step that produces the executable.
 
And then, we can run that same executable on many, many different inputs, on many different data sets
 
without having to recompile or do any other processing of the program.

I think it's helpful to give a little bit of history about how compilers and interpreters were first developed.

So, the story begins in the 1950s and in particular with a machine called the 704 built by IBM.

This was their first commercially successful machine, although there had been some earlier machines that they had tried out.

But anyway, the interesting thing about the 704, well, once customers started buying it and using it,

is that they found that the software costs exceeded the hardware costs, and not just by a little bit, but by a lot.
 
And, this is important, because the hardware in those days was extremely expensive.

And even then, when hardware cost the most in absolute and relative terms, more than they would ever cost again, 

already the software was the dominant expense in making good use of computers.
 
And this led a number of people to think about 

how they could do a better job of writing software, 

how they could make programming more productive.
 
Where the earliest efforts to improve the productivity of programming was called "Speedcoding, developed in 1953 by John Backus.
 
Now, Speedcoding is what we call today, an early example of an interpreter.

And like all interpreters, it had some advantages and disadvantages.

The primary advantage was that it was much faster to develop the programs.

So, in that sense, the programmer was much more productive.
 
But among its disadvantages, code written, Speedcode programs were 10 to 20 times slower than handwritten programs.
 
And that's also true of interpreted programs today.

So, if you have an implementation that uses an interpreter, 

it will be typically much slower than either a compiler or writing code by hand. 

And also, the Speedcode interpreter took up 300 bytes of memory.

And that doesn't seem like very much. 

In fact, 300 bytes, today, would seem like an incredibly tiny program. 

But in those days, you have to keep in mind, that this was 30% Of the memory on the machine. 

So this was 30% of the entire memory of the 704. 

And so, the amount of space that the interpreter took up was itself a concern.

Now, Speedcoding did not become popular.
 
But John Backus thought it was promising.
 
And it gave him the idea for another project.

The most important applications in those days were scientific computations.
 
And programmers thought in terms of writing down formulas in a form that the machine could execute.

John thought that the problem with Speedcoding was that the formulas were in fact interpreted.
 
And he thought if first the formulas were translated into a form that the machine could execute directly, 

the code would be faster, while still allowing the programmer to write the programs at a high level.

and that was the Formula Translation Project, or FORTRAN Project born.

Now, FORTRAN ran from 1954 to 1957.
 
And interestingly, they thought it would only take them one year to build the compiler, but it would end up taking three.

So, just like today, they weren't very good at predicting how long software projects would take.
 
But it was a very successful project.

By 1958, over 50% of all code was written in FORTRAN. So, 50% of programs were in FORTRAN.
 
And, that is very rapid adoption of a new technology. We would be happy with that kind of success today.
 
And of course at that time, they were ecstatic.
 
And everybody thought that the FORTRAN both raised the level of abstraction, improved programmer productivity, 

and allowed everyone to make much better use of these machines.

So, FORTRAN I was the first successful high level language. 

And it had a huge impact on computer science. 

In particular, it led to an enormous body of theoretical work. 

And one of the interesting things about programming languages, actually, is the combination of theory and practice,

because it's not really possible in programming languages to do a good job 

without having both a very good grasp of fairly deep theory and also good engineering skills.
 
So, there's a lot of very good systems building material in programming languages.
 
And typically it involves a very subtle and fruitful interaction with theory. 

And this is one of the things I think that is most attractive about the areas of the subject of studying computer science. 

And the impact of FORTRAN was not just on computer science research, of course, but also on the development of practical compilers.

And, in fact, its influence was so profound that today modern compilers still preserve the outlines of FORTRAN I.
 
So, what was the structure of FORTRAN I?

Well, it consists 5 phases,
 
lexical analysis and parsing, which together take care of the syntactic aspects of the language,
 
semantic analysis, which, of course, takes care of more semantic aspects, things like types and scope rules,
 
optimization, which is a collection of transformations on the program to either make it run faster or use less memory,
 
and finally, code generation, which actually does the translation to another language,
 
And depending on our goals, that translation might be to machine codes. 

It might be to a byte code for a virtual machine.
 
Or it might even be to another high level programming language. 

Well, that's it for this lecture.
 
And next time we'll pick up here and talk about these five phases in more detail.