# Butternutbox

## Prerequisite
``
Ruby 2.7.0
``

## Installation
 Run `` bundle install`` before executing specs
 
## Specs
   Run ``rspc spec`` to execute specs
   
## My comments
This is an Mobile number formatting application which accepts number in following formats:

~~~
+44..
44..
0..
~~~
followed by 7 after prefix.

It will raise an InvalidNumber Error if number is not provided in above format or is invalid.

I have used an Regex pattern for validating number. The Pattern make sure the input number is in correct format, is of correct length and doesn't contain invalid characters.
I have followed TDD based approach, First test cases were written and then it was satisfied with `#format` method implementation.

###Challenge faced
Fist challenge i faced was to go for conventional if else or switch cases for phone number validations. But I choose Regex pattern matching for better performance.
But since i have used Regex, I can't throw a specific validation, so I had to compromise with general InvalidNumberError else I could have thrown InvalidNumberFormatError or InvalidNumberLengthError or other generic errors.

I have tried to keep things simple. I will appreciate any feedback to improve my coding skills.





    
