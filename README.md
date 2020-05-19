# Anagram Word Checker

#### By Austin Butler

## Description

_A Ruby class and method that checks whether two words or phrases are anagrams of each other_
  
## Setup/Installation Requirements

* _Step 1: Clone this repository https://github.com/austinb847/anagram-checker_
* _Step 2: Cd to new directory_
* _Step 3: Run Bundle install in terminal_
* _Step 4: Run rspec in terminal to run all tests_

## Known Bugs

_None_

## Specifications
| Behavior                                                                                  	| Input              	| Output                                                                       	|
|-------------------------------------------------------------------------------------------	|--------------------	|------------------------------------------------------------------------------	|
| Should return "you need to input actual words" if any of the words have no vowels         	| "tlchk", "hi"      	| "you need to input actual words"                                             	|
| Should return "these words are anagrams" if both words contain the same letters           	| "ruby","bury"      	| "these words are anagrams"                                                   	|
| Should return "these words have no letter matches and are antigrams"                      	| "hi","bye"         	| "these words have no letter matches and are antigrams"                       	|
| Should remove spaces and punctuation from string and set it to lower case                 	| "HOw's it going?"  	| "howsitgoing"                                                                	|
| should return all unique letter matches between both words as an array                    	| "Austin", "Justin" 	| ["u","s","t","i","n"]                                                        	|
| Should return how many letters match and which letters match                              	| "Austin", "Justin" 	| These words aren't anagrams but 5 letters match: u,s,t,i,n                   	|
| Should return false if input word has the same 3 letters consecutively                    	| "cccbob"           	| false                                                                        	|
| Should return "A word can't have three or more consecutive letters. Input an actual word" 	| "fleeew"           	| "A word can't have three or more consecutive letters. Input an actual word." 	|

## Technologies Used

* Ruby

Copyright (c) 2020 **_Austin Butler_**
