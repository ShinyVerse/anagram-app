# anagram-app

This project was created in about a day and a half, to complete the given task with a TDD approach and I wanted to make it as user friendly as I could.

_____

## Challenge description behind this app:

To write a command line app in the language of your choice which satisfies the following user story:
```
As a feature of an app,
I would like to check whether or not a word is an anagram of a given set of words,
so that I can prevent users from inputting disallowed words.
```
_____

## Build status

This project uses Travis as it's CI platform

[![Build Status](https://travis-ci.com/ShinyVerse/anagram-app.svg?branch=master)](https://travis-ci.com/ShinyVerse/anagram-app)

_____

## Technologies and frameworks

- Ruby
- rSpec
- Rubocop
- Simplecov

_____

## Installation
In command line run:
```
git clone git@github.com:ShinyVerse/anagram-app.git
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
Argument setup:
- pass in list.txt (this file is provided in the root of this document, user can modify list if they wish) **This list can contain words and phrases**
- pass in a series of single words in one line, only hit enter when you have finished with your input. **This list can only consist of single words.**
Examples to run in command line:
```
ruby run.rb list.txt
```
or
```
ruby run.rb list goes in like this when it is only single words entered
```
_____

## Contributing

See [CONTRIBUTING](https://github.com/ShinyVerse/anagram-app/blob/master/CONTRIBUTING.md).

____

## License

Free to copy, modify and use.
MIT © Laura Jackson
