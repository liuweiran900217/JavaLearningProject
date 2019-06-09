Welcome back.
 
In this second half of the lecture, we'll continue with our overview of the structure of a compiler. 

Recall that a compiler has five major phases, lexical analysis, parsing, semantic analysis, optimization, and code generation. 

And now, we're going to briefly talk about each one.
 
And we're going to explain how a compiler understands these with an analogy to how humans understand English. 

The first step at understanding a program, both for a compiler and for a human, is to understand the words. 

Now, humans can look at this example sentence and immediately recognize that there are four words: "this", "is", "a", and "sentence". 

And this is so automatic that you don't even think about it.
 
But there is real computation going on here. 

You have to recognize the separators, namely the blanks,

and the punctuation, things like the period, 

and also clues like capital letters. 

And these help you to divide up this group of letters into a bunch of words that you can understand. 

And just to emphasize that this is not completely trivial, let's take a look at this sentence. 

And you can read this, but it takes a little bit of time, because I've put the separators in odd places. 

So, you can see the word "is", the word "this", the word "a", and the word "sentence". 

But again, this isn't something that comes to you immediately. 

You actually have to do some work to see where the divisions lie, because they're not given to you in the way that you're used to. 

The goal of lexical analysis, then, is to divide the program text into its words, or what we call in compiler's speak, the tokens. 

So, here's an example piece of program text now, instead of a piece of English text.
 
And let's walk through this and identify the tokens. 

So, there's some obvious ones that are keywords, like "if", and "then", and "else" that we want to identify. 

And then there are variable names, things like "x", and "y", and "z". 

There's also constants, things like the number 1, and the number 2.
 
And then, there are some operators, "==" is one, and the assignment operator "=" is another. 

And here's already an interesting question. 

How do we know that "==" is not two individual "="? 

How do we know that we want this to be a "==" and not two single "="?

Well, we don't know right now. But we'll talk about that in the lecture on how we implement lexical analysis. 

But we're not done with all the tokens in this example either. There's a few more. 

The ";", the punctuation are also tokens.
 
And then the separators are also tokens. 

So, here's a blank, that's a token.
 
Here's another blank, that's another token.
 
And then there are lots of blanks here that serve to 

separate things like the keywords and the variable names and other symbols from each other.
 
And those are the tokens of this example. 

So for humans, once the words are understood, the next step is to understand the structure of the sentence.
 
And this is called parsing. 

And as we all learned in elementary school, this means diagramming sentences. And these diagrams are trees.
 
And it's a very simple procedure. 

Let's look at this example: "This line is a longer sentence". 

The first step in parsing is to identify the role of each word in the sentence. 

So we have things like nouns, and verbs, and adjectives. 

But then, the actual work of parsing is to group these words together into higher level constructs. 

So for example, this particular sentence consists of a subject, a verb, and an object, OK? 

And that actually forms an entire sentence. 

So, here we have the root of the tree called a sentence. And that's broken down into constituent parts. 

The high level structure, as we said, is subject, verb, to object. 

And then the subject is more complicated, as is the object. 

And this is an example of parsing an English sentence. 

The analogy between parsing English text and parsing program text is very strong. 

In fact, they're exactly the same thing. 

So, here's our little example piece of code again, and let's work through parsing it. 

So, clearly, this is an if-then-else statement.
 
And so, the root of our diagram, of our parse tree, is going to be if-then-else. 

This if-then-else consists of three parts. 

There's a predicate, and a then-statement, and an else-statement. 

And now, let's look at the predicate, which consists of three pieces. 

There's a variable, a comparison operator, and another variable.
 
And together, those form a relation. 

So, a comparison between two things is one of the things you can have as a valid predicate. 

Similarly, the then-statement consists of an assignment, where z=1.
 
And the else-statement also has the form of an assignment, z=2.

And all together, this is a parse tree of the if-then-else, 

showing its structure, breaking it up into its constituent pieces. 

Now, once we've understood the sentence structure, the next step is to try to understand the meaning, of what has been written. 

And, this is hard. 

So, actually we don't know how this works for humans still. 

We don't understand what happens after lexical analysis and parsing. 

We do know that people do lexical analysis and parsing in much the same way that compilers lexically analyze and parse programs. 

But frankly, understanding meaning is something that is simply too hard for compilers. 

So, the first important thing to understand about semantic analysis is that 

compilers can only do very limited kinds of semantic analysis. 

And in particular, the kinds of things that compilers generally do are try to catch inconsistencies. 

So, if the program is somehow self inconsistent, compilers can often notice that and report errors. 

But they don't really know what the program is supposed to do. 

As an example of the kind of thing that we do in semantic analysis, 

again, using an analogy in English, let's consider the following sentence. 

"Jack said Jerry left his assignment at home."

And the question is, who does "his" refer to here? 

It could be that "his" refers to Jerry, in which case we would read, Jack said Jerry left Jerry's assignment at home. 

Or it could refer to Jack. In which case, we could read the sentence as, Jack said Jerry left Jack's assignment at home. 

And without more information, we actually don't know which one "his" is referring to, whether it's Jack, or it's Jerry. 

And even worse, let's take a look at this sentence down here. 

"Jack said Jack left his assignment at home."
 
And the question is how many people are actually involved in this sentence? 

It could be as many as three. There could be two separate Jacks and his, could even refer to somebody completely different. 

We don't know without seeing the rest of the story that surrounds this sentence, all the possibilities for his. 

But it could also be as few as only a single person.
 
It could be that Jack and Jack and his are all the same person in this sentence. 

And so this kind of ambiguity is a real problem in semantic analysis. 

And the analogy in programming languages is variable bindings. 

So we would have variables, in this case, a variable called Jack or maybe more than one variable called Jack. 

And a programming language is going to have very strict rules 

to prevent the kind of ambiguities we had in the English sentences on the previous slide. 

So, in this example, the question is what value is printed by this output statement.
 
And the answer is it's going to print 4, 

because this use of the variable Jack binds to this definition here, and the outer definition is hidden. 

So the outer definition is not active in this scope, because it is hidden by the inner definition.
 
And that is just a standard rule of a lot of lexically scoped programming languages.
 
Now, compilers perform many semantic checks besides analyzing the variable bindings. 

And so here's another example in English. 

So, "Jack looked her homework at home."
 
And, under the usual naming conventions, assuming that Jack is male, we know there's a type mismatch between Jack and her. 

So we know that, whatever her is, it is not Jack. 

And therefore, we know that this sentence is talking about two different people. 

And so, this is analogous to type checking. 

The fourth compiler phase, optimization, doesn't have a very strong counterpart in everyday English usage.
 
But it's a little bit like editing. 

And, in fact, it's a lot like what professional editors do 

when they have to reduce the length of an article to get it down to some word budget. 

So, for example, I have this phrase right here, "but a little bit like ending".
 
And if I didn't like it, if I thought it was too long, I could replace the middle 4 words with 2 words "akin to".
 
So now, it says, "but akin to editing", and that means exactly the same thing as the original phrase, but uses fewer words. 

And the goal in program optimization is to modify the program so that it uses less of some resource. 

Maybe we want to use less time, we want the program to run faster.
 
Maybe we want it to use less space so that we can fit more data in memory. 

For a handheld device, we might be interested in reducing the amount of power that it uses. 

If we have external communication, we might be interested in reducing the number of network messages or the number of database accesses.
 
And there's any number of resources that we might want to improve other program's use of. 

So, here's a simple example of the kinds of optimizations a program might do. 

We can have a rule in our compiler that says "X = Y * 0" is the same as "X = 0". 

And this seems like a real improvement, 

because instead of doing the multiply, we can just do an assignment. So, we save some computation by doing that. 

Now unfortunately, this is not a correct rule. 

And this is one of the important things to know about compiling optimization.
 
It is that it's not always obvious when it's legal to do certain optimizations or not. 

Now, it turns out that this particular rule is valid for integers, OK?

So, if X and Y are integers, then multiplying by 0 is always the same thing as just assigning 0.
 
But, it's invalid for floating point. 

And why is that?
 
Well, because... you have to know some details of the IEEE floating point standard.

But there is a special number in the IEEE standard called "Not A Number".
 
And it turns out that "Not A Number" called a "NaN", times 0 is equal to "Not A Number".
 
And in particular, "Not A Number" times 0 is not equal to 0.
 
So, if X and Y are floating point numbers, you can't do this optimization. 

And in fact, if you did this optimization, 

it would break certain very important algorithms that rely on the proper propagation of "Not A Number".
 
Finally, the last compiler phase is code generation, often referred to as "Code Gen".
 
And "Code Gen" can produce assembly code. 

That's the most common thing that a compiler would produce. 

But in general, it's a translation into some other language. 

And this is, entirely analogous to human translation. 

So just as a human translator might translate English into French, 

a compiler will translate a high level program into assembly code. 

To wrap up, almost every compiler has the 5 phases that we outlined. 

However, the proportions have changed a lot over the years.
 
And if we were to go back to FORTRAN I and look inside of that compiler, 

we would probably see a size, a complexity that looks something like this. 

We have a fairly complex lexical analysis phase, an equally complicated parsing phase, 

a very small semantic analysis phase, a fairly involved optimization phase, and another fairly involved code generation phase. 

And so, we see a compiler where the complexity was spread fairly evenly throughout 

except for its semantic analysis, which is very weak in the early days. 

And today, if we look at a modern compiler, 

you'll see almost nothing in lexical thing, very little in parsing, 

because we have extremely good tools to help us write those two phases. 

We would see a fairly involved semantic analysis phase. 

We would see a very large optimization phase.
 
And this is in fact the dominant component of all modern compilers.
 
And then, there is a very small code generation phase, because again, we understand that phase very, very well. 

That's it for this lecture. 

Future lectures, we'll look at each of these phases in detail.