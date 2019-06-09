Hello. 

In this video, we're going to talk about something that I've referred to as the economy of programming languages. 

So, the idea behind this video is that, before we get into the detail of how languages are implemented or designed, 

I wanted to say something about how languages work in the real world, and why certain languages are used and others are not. 

And if you look around, there's actually a few obvious questions that come up to anybody 

who thinks about programming languages for more than a few minutes.
 
One question is, why are there so many of these things? 

We have hundreds, if not thousands, of programming languages in everyday use.
 
And why do all of these things need to exist? 

Why wouldn't one programming language, for example, be enough? 

A related question, but slightly different is, why are there new programming languages? 

Given that we have so many programming languages already, what is the need for new ones to be created? 

And finally, how do we know a good programming language when we see it? 

So, what makes a good programming language, and what makes a bad programming language? 

I just wanted to spend this video anyway, talking about these 3 questions. 

And as we'll see, I think the answers to these questions are 

largely independent of the technical aspects of language design and implementation, but very interesting in their own right. 

So, let's begin with the question of why there are so many programming languages.
 
And at least, a partial answer to this question is not too hard to come by. 

If you think for a few minutes, you'd realize that the application domains for programming have very distinctive and conflicting needs.
 
That is, it's very hard to design one language that would actually do everything in every situation for all programmers.
 
And let's just go through some examples. 

One domain that you might not think about very much is scientific computing.
 
So, these are all the big calculations that are done for engineering applications primarily, 

but also big science and long-running experiments, simulation experiments. 

And what are the needs for such computations? 

Well, typically, you need very good floating point support. I'll abbreviate that as FP. 

You need good support for arrays and operations on arrays, 

because the most common data type in most scientific applications is large arrays of floating point numbers.
 
And you also need parallelism, OK?
 
Today, to get sufficient performance, you really have to exploit parallelism in these applications.
 
And not every language actually supports all of these things well. 

This is actually not an exhaustive list of the things you need, but it's a few distinctive things that are needed. 

But one language that has traditionally done a very good job of supporting these things is FORTRAN.
 
And FORTRAN is still heavily used in the scientific community. 

It was originally designed for scientific applications. 

If you recall, the name means Formula Translation.
 
And it has evolved over time. 

It doesn't really look much like the original language anymore.

But it's always retained this core constituency in scientific computing and remains one of the leading languages in that domain. 

Now, a completely different kind of domain is business applications. 

And so, what do you need here? 

Well, so here you're going to need things like persistence. 

You don't want to lose your data. 

Businesses go to a lot of trouble to get the data, and they need a way to hold onto it, and they want that to be extremely reliable. 

You're going to need good report facilities.

Because typically you want to do something with the data, so you need good facilities for report generation.
 
And, also, you want to be able to exploit the data. 

The data is actually, in many modern businesses, one of the most valuable assets.
 
And so, you need good facilities for asking questions about your data. Let's call it data analysis. 

Again, this is not an exhaustive list of things that you need. But it is representative, I would say. 

And probably the most common, or one of the most commonly used languages for this class of applications, 

is SQL, the database query language. 

So, relational databases and their associated programming languages, I should say, but most notably SQL, 

really dominate in this application domain. 

Then, another domain, let's do one more, is systems programming. 

So, by this, I mean things like embedded systems, things that control devices, operating systems, things like that.
 
And what are the characteristics here? 

Well, we need very low level control of the resources. 

The whole point of systems programming is to do a good job of managing resources.

And so, we really want fine-grained control over the resources. 

And often, there's a time aspect.
 
So, you might have some real-time constraints, so you need to be able to reason about time. 

Because these are actually, again, devices, and they need to be able to react within certain amounts of time. 

If it's a network device or something like that, you need to be responsive to the network. 

Lots and lots of things, lots and lots of examples where timing is important.

And these are just two aspects.

And I'm a little bit running out of space here, so I'll just stop with that. 

But again, these are representative of the kinds of things you need in systems programming. 

And probably today, still the most widely used systems programming language, or family of systems programming languages, 

is the C, and to some extent, C++ family of languages. 

And as you can see, the requirements in these different domains are just completely different from each other. 

What's important in one domain, or most important in one domain, is not the same as in another domain.

And it's easy, I think, to imagine at least that it would be difficult to 

integrate all of these into one system that would do a good job on all of these things. 

That brings us to our second question, why are there new programming languages, OK?

There are so many languages in existence. Why would we ever need to design a new one? 

And I'm going to begin the answer to this question with an observation that, 

at first glance, it has nothing to do with the question at all.
 
So, let me just take a moment to explain it. 

I claim that programmer training is the dominant cost for a programming language.

And I think this is really important, so I'm just going to emphasize the bit that's important here. 

It's the programmer training, the cost of educating the programmers in the language. 

So, if you think about a programming language, there are several things that have to happen for that language to get used. 

Somebody has to design it, but that's really not very expensive. That's just one or a very few people, typically. 

Somebody has to build a compiler, but that is also not actually all that expensive. 

Maybe 10 to 20 people for a really large compiler project can build quite a good compiler. 

The real cost is in all the users, in educating them. 

So, if you have thousands, or hundreds of thousands, or millions of users of a language, 

the time and money that it takes to teach them all the language is really the dominant cost. 

And here, I don't mean just the actual dollar expense of buying textbooks and taking classes and things like that. 

It's also the fact that the programmers have to decide that it's worth it for them to learn this language.

And many programmers learn on their own time, but that's a use of their time. 

The the expense of their time is a real economic cost.
 
And so, if you think about the number of hours that it takes to teach a population of a million programmers a language, 

that's really quite a significant economic investment, Alright?
 
Now, from this observation, we can make a couple of predictions pretty easily. 

And again, these are just predictions, now, that follow from this claim if you believe that it's true. 

我们把这部分擦掉，修改一下
So, let me erase that and fix it.
 
So, first prediction is that widely-used languages will be slow to change. 

And why should that be true? 

Well, if I make a change to a language that lots of people use, I have to educate everybody in that community about the change. 

And so, even relatively minor language extensions, or small changes to syntax, small new features, 

even just simple changes in the interface of the compiler, 

if you have a lot of users, it takes a very long time, and it's quite expensive, to teach them all about that. 

So, as these languages become widely used, their rate of changes will slow down. 

And this predicts that over time, as the world of programming grows.
 
As we have more and more programmers in the world, we would expect the most popular languages, 

which will have larger and larger user bases, larger and larger programmer bases, 

to become more and more ossified, to evolve more and more slowly. 

And I think, actually, what you see in practice is very consistent with that prediction.
 
Now, at the other end of the spectrum, this same observation makes an almost what appears to be a contradictory prediction, 

which is that it's easy to start a new language. 

That, in fact, the cost of starting up a new language is very low. 

And why is that? 

Well, because you start 0 users, and so there's essentially 0 training cost at the beginning.

And then, even when you have just a few users, the cost of teaching them the changes in the language is not very high. 

And so, new languages can evolve much more quickly. 

They can adapt much more quickly to changing situations. 

And it's just not very costly to experiment with a new language at all.

And there's a tension between these two things, OK?
 
So, when a programmer is going to choose between 

a widely used existing language that perhaps doesn't change very quickly and a brand new language, 

well, they're going to choose it if their productivity now exceeds the training cost. 

So, if they perceive that by spending a little bit of time and money to learn this new language,
 
they're going to be much more productive over a relatively short period of time, then they're going to make the switch, OK?
 
And when is this likely to happen? 

Well, putting this all together, languages are most likely to be adopted to fill a void, OK?

And, again, this is a prediction that follows from the fact of programmer training is the main cost. 

What do I mean by this? 

What I mean is that programming languages exist for a purpose. 

I mean, people use them to get work done.
 
And because we're still in the middle of the information revolution, there are new application domains coming along all the time. 

So, there are new kinds of programming that emerge every few years, or even more often than that. 

So, in terms of recent history, mobile applications are now something that's relatively new.

And there's a lot of new technology being built up to support mobile computing. 

A few years ago, the Internet itself was the new programming platform.

And a bunch of new programming languages like Java, in particular, got started during that time. 

So new programming niches open up, because the technology changes, so people want to do with software changes.
 
And this creates new opportunities for languages. 

The old languages are slow to change.

And so, they have some difficulty adapting to fit these new domains. 

And they aren't really necessarily well-suited to them for the reasons we talked about on the previous slide with the previous question,
 
because it's hard to have one language that incorporates all the features you would want. 

And so, the old languages are not necessarily perfect for these application domains. 

They're slow to adapt to the new situation.

And this tends to call force new languages. 

So, when there's a new opportunity in some application domain, 

if there are enough programmers to support the language, often a new language will arise. 

I just want to point out another prediction that can be made from this one observation that,
 
programmer training, again, I'll underline that, is the dominant cost for a programming language. 

And that is that new languages tend to look like old languages. 

That is, that new languages are rarely, if ever, completely new. 

They have a family resemblance to some predecessor language, sometimes a number of predecessor languages.

And why is that? 

Well, partly that it's hard to think of truly new things.
 
But also, I think that there's an economic benefit to this, namely that it reduces the training cost. 

By having your new language look like an old language, by leveraging off what people already know about the old language, 

you make it easier for people to learn the new language. You make them learn it more quickly.

And the most classic example of this is Java versus C++, 

where Java was designed to look a lot like C++, 

and that was, I think, very conscious to make it easy for all of the existing C++ programmers to start programming in Java. 

Finally, we can ask ourselves, what is a good programming language? 

And here, unfortunately, the situation is much less clear. 

I would make just one claim, that there is no, and I'll emphasize no, universally accepted metric for language design. 

And what do I mean by that? 

Well, I guess, the most important part of this statement is the universally accepted bit.

So, I mean that people don't agree on what makes a good language. 

There are lots of metrics out there, and people have proposed lots of ways of measuring programming languages.

But most people don't believe that these are very good measures, and there is certainly no consensus. 

If you just look at the world of programmers, they can't agree on what the best language is.

And to convince yourselves of this, just go and take a look at any of the many newsgroup posts,
 
where people get into semi-religious arguments about why one group of languages, or particular language, is better than another language.
 
But even in the research community, in the scientific community among the people who design languages, 

I would say that there is no universally accepted consensus on what makes a good language. 

To just kind of illustrate the difficulties in trying to come up with such a metric, 

let me discuss one that I've heard people propose, in all seriousness.
 
And that is that, a good language is one people use. 

And let me put a question mark on that, because I don't believe this statement.
 
And I think, with a moment's reflection, I can convince you that this isn't a great measure. 

On the positive side, I guess, the argument for this is that it's a very clear measure. 

It measures the popularity of the language. 

How many people are actually using it, and presumably languages that are more widely used are more widely used for a good reason. 

In some sense, perhaps, they are better languages.
 
But this would imply, if you believe this and follow it to its logical conclusion, 

that Visual Basic is the best language above all other programming languages.
 
And I have nothing against Visual Basic. It's a well-designed system.

But I don't even think the designers of Visual Basic would claim that it is in fact the world's best programming language. 

As we saw in the discussion that we just had, there are many many other factors besides technical excellence 

that go into whether a programming language is widely used or not. 

And in fact, technical excellence is probably not even the most important reason that a language might be used. 

It has much more to do with whether it addresses a niche or an application domain for which there isn't a better tool. 

And then, once it's established and has lots of users, of course, there's inertia and history that aid it in surviving. 

And that's why we still have FORTRAN and COBOL and lots of other languages from long, long ago,
 
that we could, if we were starting over today, design much better. 

So, to conclude this video on the economy of programming languages, 

I think the two most important things to remember are that application domains have conflicting needs. 

And therefore, it's difficult to design one system that incorporates everything that you would like to have. 

So, you can't get all the features that you would like into a single system in a coherent design.
 
At least, it's very hard to do that, and so it takes a lot of time to add new features to existing systems. 

And the second point is that programmer training is the dominant cost for a programming language.
 
And together these two things, these two observations, these really explain why we get new programming languages. 

Because the old languages are difficult to change, 

and when we have new opportunities, it's often easier and more direct to just design the language for those,
 
rather than trying to move the entire community of programmers and existing systems to accommodate those new applications.