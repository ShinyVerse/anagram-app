# anagram-app

## Challenge description behind this app:

To write a command line app in the language of your choice which satisfies the following user story:
```
As a feature of an app,
I would like to check whether or not a word is an anagram of a given set of words,
so that I can prevent users from inputting disallowed words.
```

This project was made with a TDD approach and with a goal to make it user friendly.
_____

## Build status

This project uses Travis as it's CI platform

[![Build Status](https://travis-ci.com/ShinyVerse/anagram-app.svg?branch=master)](https://travis-ci.com/ShinyVerse/anagram-app)

_____

## Technologies and frameworks

- Ruby
- RSpec
- Rubocop
- Simplecov

_____

## Installation
In command line run:
```
git clone git@github.com:ShinyVerse/anagram-app.git
cd anagram-app
bundle install
```

To run tests:
```
rspec
```
_____

## How to use

After cloning this repo and navigating into it's root folder:
The file after ruby command is expecting one argument.
**There are two ways to enter in this argument**

Options to enter argument:

- Pass in "list.txt", this file is provided in the root of this document, user can modify list if they wish. **This list can contain words and phrases**
```
ruby run.rb "list.txt"
```
- Pass in a series of single words in one line wrapped in quotes, only hit enter when you have finished with your input. **This list can only consist of single words.**
Examples to run in command line:

```
ruby run.rb "list goes in like this when it is only single words entered"
```
_____
 
## Contributing

See [CONTRIBUTING](https://github.com/ShinyVerse/anagram-app/blob/master/CONTRIBUTING.md).
_____

