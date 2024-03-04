import 'package:first_project/enums/enums.dart';

const phpCodex = {

  Languages.php: {
    Categories.beginner: {
      0: {
        'topic': "1.     PHP Introduction",
        'subTopic': [
          {
            'heading': "What You Should Already Know ",
            'attachment': "",
            'body': "Before you continue you should have a basic understanding of the following:"
            "\n\n•HTML"
            "\n\n•CSS"
            "\n\n•JavaScript"
          },
          {
            'heading': "PHP Syntax ",
            'attachment': "",
            'body': "A PHP script is executed on the server, and the plain HTML result is sent back to the browser."
          },
          {
            'heading': "Basic PHP Syntax ",
            'attachment': "assets/php_beginner/s_1.png",
            'body': "A PHP script can be placed anywhere in the document."
              "A PHP script starts with <?php and ends with ?>:"
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "The default file extension for PHP files is .php."
            "\n\nA PHP file normally contains HTML tags, and some PHP scripting code."
            "\n\nBelow, we have an example of a simple PHP file, with a PHP script that uses a built-in PHP function echo to output the text Hello World! on a web page:"
            "\n\nA simple .php file with both HTML code and PHP code:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/s_2.png",
            'body': ""
          },
          {
            'heading': "PHP Case Sensitivity ",
            'attachment': "assets/php_beginner/s_3.png",
            'body': "In PHP, keywords (e.g. if, else, while, echo, etc.), classes, functions, and user-defined functions are not case-sensitive."
            "\n\nIn the example below, all three echo statements below are equal and legal:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/s_4.png",
            'body': "Look at the example below; only the first statement will display the value of the color variable! This is because color, COLOR, and coLOR"
            "are treated as three different variables:"
          },


        ]
      },
      1: {
        'topic': "2.     PHP Comments",
        'subTopic': [
          {
            'heading': "Comments in PHP ",
            'attachment': "assets/php_beginner/c_1.png",
            'body': "A comment in PHP code is a line that is not executed as a part "
                "of the program. Its only purpose is to be read by someone who is looking at the code."
            "\n\nComments can be used to:"
            "\n\n•Let others understand your code"
            "\n\n•Remind yourself of what you did - Most programmers have experienced "
                "coming back to their own work a year or two later and having to "
                "re-figure out what they did. Comments can remind you of what you "
                "were thinking when you wrote the code"
            "\n\n•Leave out some parts of your code"
            "\n\nPHP supports several ways of commenting:"
          },
          {
            'heading': "Single Line Comments ",
            'attachment': "assets/php_beginner/c_2.png",
            'body': "Single line comments start with //."
            "\n\nAny text between // and the end of the line will be ignored (will not be executed)."
            "\n\nYou can also use # for single line comments, but in this tutorial we will use //."
            "\n\nThe following examples uses a single-line comment as an explanation:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/c_3.png",
            'body': ""
          },
          {
            'heading': "Comments to Ignore Code ",
            'attachment': "assets/php_beginner/c_4.png",
            'body': "We can use comments to prevent code lines from being executed:"
          },



        ]
      },
      2: {
        'topic': "     2.1.     PHP Multiline Comments",
        'subTopic': [
          {
            'heading': "Multi-line Comments ",
            'attachment': "assets/php_beginner/p_1.png",
            'body': "Multi-line comments start with /* and end with */."
            "\n\nAny text between /* and */ will be ignored."
            "\n\nThe following example uses a multi-line comment as an explanation:"
          },
          {
            'heading': "Multi-line Comments to Ignore Code ",
            'attachment': "assets/php_beginner/p_2.png",
            'body': "We can use multi-line comments to prevent blocks of code from being executed:"
          },
          {
            'heading': "Comments in the Middle of the Code ",
            'attachment': "assets/php_beginner/p_3.png",
            'body': "The multi-line comment syntax can also be used to prevent execution of parts inside a code-line:"
          },


        ]
      },
      3: {
        'topic': "3.     PHP Variables",
        'subTopic': [
          {
            'heading': "PHP Variables ",
            'attachment': "",
            'body': "Variables are containers for storing information."
          },
          {
            'heading': "Creating (Declaring) PHP Variables ",
            'attachment': "assets/php_beginner/v_1.png",
            'body': "In PHP, a variable starts with the dollar sign, followed by the name of the variable:"
          },
          {
            'heading': "PHP Variables ",
            'attachment': "",
            'body': "Rules for PHP variables:"
            "\n\nA variable starts with the dollar sign, followed by the name of the variable"
            "\n\nA variable name must start with a letter or the underscore character"
            "\n\nA variable name cannot start with a number"
            "\n\nA variable name can only contain alpha-numeric characters and underscores (A-z, 0-9, and _ )"
            "\n\nVariable names are case-sensitive (age and AGE are two different variables)"
          },
          {
            'heading': "Output Variables ",
            'attachment': "assets/php_beginner/v_2.png",
            'body': "The PHP echo statement is often used to output data to the screen."
            "\n\nThe following example will show how to output text and a variable:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/v_3.png",
            'body': "The following example will produce the same output as the example above:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/v_4.png",
            'body': "The following example will output the sum of two variables:"
          },
          {
            'heading': "Variable Types ",
            'attachment': "assets/php_beginner/v_5.png",
            'body': "PHP has no command for declaring a variable, and the data "
                "type depends on the value of the variable."
          },
          {
            'heading': "PHP supports the following data types: ",
            'attachment': "",
            'body': "\n\n•String"
            "\n\n•Integer"
            "\n\n•Float (floating point numbers - also called double)"
            "\n\n•Boolean"
            "\n\n•Array"
            "\n\n•Object"
            "\n\n•NULL"
            "\n\n•Resource"
          },
          {
            'heading': "Get the Type ",
            'attachment': "assets/php_beginner/v_6.png",
            'body': "To get the data type of a variable, use the var_dump() function."
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/v_7.png",
            'body': ""
          },
          {
            'heading': "Assign String to a Variable ",
            'attachment': "assets/php_beginner/v_8.png",
            'body': "Assigning a string to a variable is done with the variable "
                "name followed by an equal sign and the string:"
          },
          {
            'heading': "Assign Multiple Values ",
            'attachment': "assets/php_beginner/v_9.png",
            'body': "You can assign the same value to multiple variables in one line:"
          },

        ]
      },
      4: {
        'topic': "4.     PHP Variables Scope",
        'subTopic': [
          {
            'heading': "PHP Variables Scope ",
            'attachment': "",
            'body': "In PHP, variables can be declared anywhere in the script."
            "\n\nThe scope of a variable is the part of the script where the "
                "variable can be referenced/used."
            "\n\nPHP has three different variable scopes:"
            "\n\n•local"
            "\n\n•global"
            "\n\n•static"
          },
          {
            'heading': "Global and Local Scope ",
            'attachment': "assets/php_beginner/vs_1.png ",
            'body': " A variable declared outside a function has a GLOBAL SCOPE "
                "and can only be accessed outside a function:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/vs_2.png",
            'body': "A variable declared within a function has a LOCAL SCOPE "
                "and can only be accessed within that function:"
          },
          {
            'heading': "PHP The global Keyword ",
            'attachment': "assets/php_beginner/vs_3.png",
            'body': "The global keyword is used to access a global variable from within a function."
            "\n\nTo do this, use the global keyword before the variables (inside the function):"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/vs_4.png",
            'body': "PHP also stores all global variables in an array called "
                "GLOBALS[index]. The index holds the"
            "\n\nname of the variable. This array is also accessible from within "
                "functions and can be used to update global variables directly."
            "\n\nThe example above can be rewritten like this:"
          },
          {
            'heading': "PHP The static Keyword ",
            'attachment': "assets/php_beginner/vs_5.png",
            'body': "Normally, when a function is completed/executed, all of its "
                "variables are deleted. However, sometimes we want a local variable "
                "NOT to be deleted. We need it for a further job."
            "\n\nTo do this, use the static keyword when you first declare the variable:"
          },



        ]
      },
      5: {
        'topic': "5.     PHP echo and print Statements",
        'subTopic': [
          {
            'heading': "PHP echo and print Statements ",
            'attachment': "",
            'body': "With PHP, there are two basic ways to get output: echo and print."
            "\n\nIn this tutorial we use echo or print in almost every example. "
                "So, this chapter contains a little more info about those two output statements."
          },
          {
            'heading': "PHP echo and print Statements ",
            'attachment': "",
            'body': "echo and print are more or less the same. They are both"
                "used to output data to the screen."
            "\n\nThe differences are small: echo has no return value while print "
                "has a return value of 1 so it can be used in expressions. echo "
                "can take multiple parameters (although such usage is rare) while "
                "print can take one argument. echo is marginally faster than print."
          },
          {
            'heading': "The PHP echo Statement ",
            'attachment': "assets/php_beginner/e_1.png",
            'body': "The echo statement can be used with or without parentheses: echo or echo()."
            "\n\nDisplay Text"
            "\n\nThe following example shows how to output text with the echo "
                "command (notice that the text can contain HTML markup):"
          },
          {
            'heading': "Display Variables ",
            'attachment': "assets/php_beginner/e_2.png",
            'body': "The following example shows how to output text and variables with the echo statement:"
          },
          {
            'heading': "The PHP print Statement ",
            'attachment': "assets/php_beginner/e_3.png",
            'body': "The print statement can be used with or without parentheses: print or print()."
            "\n\nDisplay Text"
            "\n\nThe following example shows how to output text with the print "
                "command (notice that the text can contain HTML markup):"
          },
          {
            'heading': "Display Variables ",
            'attachment': "assets/php_beginner/e_4.png",
            'body': "The following example shows how to output text and variables with the print statement:"
          },


        ]
      },
      6: {
        'topic': "6.     PHP Data Types",
        'subTopic': [
          {
            'heading': "PHP Data Types ",
            'attachment': "",
            'body': "Variables can store data of different types, and different "
                "data types can do different things."
            "\n\nPHP supports the following data types:"
                "\n\n•String"
                "\n\n•Integer"
                "\n\n•Float (floating point numbers - also called double)"
                "\n\n•Boolean"
                "\n\n•Array"
                "\n\n•Object"
                "\n\n•NULL"
                "\n\n•Resource"
          },
          {
            'heading': "Getting the Data Type ",
            'attachment': "assets/php_beginner/d_1.png",
            'body': "You can get the data type of any object by using the var_dump() function."
          },
          {
            'heading': "PHP String",
            'attachment': "assets/php_beginner/d_2.png",
            'body': "A string is a sequence of characters, like Hello world!."
            "\n\nA string can be any text inside quotes. You can use single or double quotes:"
          },
          {
            'heading': "PHP Integer ",
            'attachment': "assets/php_beginner/d_3.png",
            'body': "An integer data type is a non-decimal number between -2,147,483,648 and 2,147,483,647"
            "\n\nRules for integers:"
            "\n\n•An integer must have at least one digit"
                "\n\n•An integer must not have a decimal point"
                "\n\n•An integer can be either positive or negative"
                "\n\n•Integers can be specified in: decimal (base 10), hexadecimal "
                "(base 16), octal (base 8), or binary (base 2) notation"
          },
          {
            'heading': "PHP Float ",
            'attachment': "assets/php_beginner/d_4.png",
            'body': "A float (floating point number) is a number with a decimal "
                "point or a number in exponential form"
          },
          {
            'heading': "PHP Boolean ",
            'attachment': "assets/php_beginner/d_5.png",
            'body': "A Boolean represents two possible states: TRUE or FALSE."
          },
          {
            'heading': "PHP Array ",
            'attachment': "assets/php_beginner/d_6.png",
            'body': "An array stores multiple values in one single variable."
          },
          {
            'heading': "PHP Object ",
            'attachment': "assets/php_beginner/d_7.png",
            'body': "Classes and objects are the two main aspects of object-oriented programming."
            "\n\nA class is a template for objects, and an object is an instance of a class."
            "\n\nWhen the individual objects are created, they inherit all the properties and behaviors "
                "from the class, but each object will have different values for the properties."
            "\n\nLet's assume we have a class named Car that can have properties like model, "
                "color, etc. We can define variables like model, color, and so on, to hold the values of these properties."
            "\n\nWhen the individual objects (Volvo, BMW, Toyota, etc.) are created, "
                "they inherit all the properties and behaviors from the class, "
                "but each object will have different values for the properties."
            "\n\nIf you create a __construct() function, PHP will automatically call this function when you create an object from a class."
          },
          {
            'heading': "PHP NULL Value ",
            'attachment': "assets/php_beginner/d_8.png",
            'body': "Null is a special data type which can have only one value: NULL."
            "\n\nA variable of data type NULL is a variable that has no value assigned to it."
          },
          {
            'heading': "Change Data Type ",
            'attachment': "assets/php_beginner/d_9.png",
            'body': "If you assign an integer value to a variable, the "
                "type will automatically be an integer."
            "\n\nIf you assign a string to the same variable, the type will change to a string:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/d_10.png",
            'body': "If you want to change the data type of an existing variable, "
                "but not by changing the value, you can use casting."
            "\n\nCasting allows you to change data type on variables:"
          },

        ]
      },
      7: {
        'topic': "7.     PHP Strings",
        'subTopic': [
          {
            'heading': "PHP Strings ",
            'attachment': "",
            'body': "A string is a sequence of characters, like Hello world!."
          },
          {
            'heading': "Strings ",
            'attachment': "assets/php_beginner/st_1.png",
            'body': "Strings in PHP are surrounded by either double quotation marks, "
                "or single quotation marks."
          },
          {
            'heading': "Double or Single Quotes? ",
            'attachment': "assets/php_beginner/st_2.png",
            'body': "You can use double or single quotes, but you should be aware "
                "of the differences between the two."
            "\n\nDouble quoted strings perform action on special characters."
            "\n\nE.g. when there is a variable in the string, it returns the value of the variable:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/st_3.png",
            'body': "Single quoted strings does not perform such actions, "
                "it returns the string like it was written, with the variable name:"
          },
          {
            'heading': "String Length ",
            'attachment': "assets/php_beginner/st_4.png",
            'body': "The PHP strlen() function returns the length of a string."
          },
          {
            'heading': "Word Count ",
            'attachment': "assets/php_beginner/s_5.png",
            'body': "The PHP str_word_count() function counts the number of words in a string."
          },
          {
            'heading': "Search For Text Within a String ",
            'attachment': "assets/php_beginner/s_6.png",
            'body': "The PHP strpos() function searches for a specific text within a string."
            "\n\nIf a match is found, the function returns the character position "
                "of the first match. If no match is found, it will return FALSE."
          },
        ]
      },
      8: {
        'topic': "     7.1.     PHP - Modify Strings",
        'subTopic': [
          {
            'heading': "PHP - Modify Strings ",
            'attachment': "",
            'body': "PHP has a set of built-in functions that you can use to modify strings."
          },
          {
            'heading': "Upper Case ",
            'attachment': "assets/php_beginner/mod_1.png",
            'body': ""
          },
          {
            'heading': "Lower Case ",
            'attachment': "assets/php_beginner/mod_2.png",
            'body': ""
          },
          {
            'heading': "Replace String ",
            'attachment': "assets/php_beginner/mod_3.png",
            'body': ""
          },
          {
            'heading': "Reverse a String ",
            'attachment': "assets/php_beginner/mod_4.png",
            'body': ""
          },
          {
            'heading': "Remove Whitespace ",
            'attachment': "assets/php_beginner/mod_5.png",
            'body': ""
          },
          {
            'heading': "Convert String into Array ",
            'attachment': "assets/php_beginner/mod_6.png",
            'body': ""
          },
          {
            'heading': " ",
            'attachment': "",
            'body': ""
          },
          {
            'heading': " ",
            'attachment': "",
            'body': ""
          },


        ]
      },
      9: {
        'topic': "     7.2.     PHP - Concatenate Strings",
        'subTopic': [
          {
            'heading': "String Concatenation ",
            'attachment': "assets/php_beginner/con_1.png",
            'body': "To concatenate, or combine, two strings you can use the . operator:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/con_2.png",
            'body': "The result of the example above is HelloWorld, without a space between the two words."
                "\n\nYou can add a space character like this:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/con_3.png",
            'body': "An easier and better way is by using the power of double quotes."
            "\n\nBy surrounding the two variables in double quotes with a white space "
                "between them, the white space will also be present in the result:"
          },


        ]
      },
      10: {
        'topic': "     7.3.     PHP - Slicing Strings",
        'subTopic': [
          {
            'heading': "Slicing ",
            'attachment': "assets/php_beginner/ss_1.png",
            'body': "You can return a range of characters by using the substr() function."
            "\n\nSpecify the start index and the number of characters you want to return."
          },
          {
            'heading': "Slice to the End ",
            'attachment': "assets/php_beginner/ss_2.png",
            'body': "By leaving out the length parameter, the range will go to the end:"
          },
          {
            'heading': "Slice From the End ",
            'attachment': "assets/php_beginner/ss_3.png",
            'body': "Use negative indexes to start the slice from the end of the string:"
          },
          {
            'heading': " ",
            'attachment': "",
            'body': ""
          },
          {
            'heading': "Negative Length ",
            'attachment': "assets/php_beginner/ss_4.png",
            'body': "Use negative length to specify how many characters to omit, starting from the end of the string:"
            "\n\nFrom the string Hi, how are you?, get the characters starting "
                "from index 5, and continue until you reach the 3. character from the end (index -3)."
          },



        ]
      },
      11: {
        'topic': "     7.4.     PHP - Escape Characters",
        'subTopic': [
          {
            'heading': "Escape Character ",
            'attachment': "assets/php_beginner/es_1.png",
            'body': "To insert characters that are illegal in a string, use an escape character."
            "\n\nAn escape character is a backslash  followed by the character you want to insert."
            "\n\nAn example of an illegal character is a double quote inside a "
                "string that is surrounded by double quotes:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/es_2.png",
            'body': "To fix this problem, use the escape character \":"
          },
          {
            'heading': "Escape Characters ",
            'attachment': "assets/php_beginner/es_3.png",
            'body': "Other escape characters used in PHP:"
          },


        ]
      },
      12: {
        'topic': "8.     PHP Numbers",
        'subTopic': [
          {
            'heading': "PHP Numbers ",
            'attachment': "",
            'body': "In this chapter we will look in depth into Integers, Floats, and Number Strings."
          },
          {
            'heading': "PHP Numbers ",
            'attachment': "assets/php_beginner/num_1.png",
            'body': "There are three main numeric types in PHP:"
                "\n\n•Integer"
                "\n\n•Float"
                "\n\n•Number Strings"
            "\n\nIn addition, PHP has two more data types used for numbers:"
            "\n\n•Infinity"
            "\n\n•NaN"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/num_2.png",
            'body': "To verify the type of any object in PHP, use the var_dump() function:"
          },
          {
            'heading': "PHP Integers ",
            'attachment': "assets/php_beginner/num_3.png",
            'body': "2, 256, -256, 10358, -179567 are all integers."
            "\n\nAn integer is a number without any decimal part."
            "\n\nAn integer data type is a non-decimal number between -2147483648 "
                "and 2147483647 in 32 bit systems, and between -9223372036854775808 "
                "and 9223372036854775807 in 64 bit systems. A value greater (or lower) "
                "than this, will be stored as float, because it exceeds the limit of an integer."
            "\n\nNote: Another important thing to know is that even if 4 * 2.5 is "
                "10, the result is stored as float, because one of the operands is a float (2.5)."
            "\n\n\nHere are some rules for integers:"
            "\n\n•An integer must have at least one digit"
            "\n\n•An integer must NOT have a decimal point"
            "\n\n•An integer can be either positive or negative"
            "\n\n•Integers can be specified in three formats: decimal (base 10), "
                "hexadecimal (base 16 - prefixed with 0x), octal (base 8 - prefixed "
                "with 0) or binary (base 2 - prefixed with 0b)"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/num_4.png",
            'body': "PHP has the following predefined constants for integers:"
            "\n\nPHP_INT_MAX - The largest integer supported"
            "\n\nPHP_INT_MIN - The smallest integer supported"
            "\n\nPHP_INT_SIZE -  The size of an integer in bytes"
            "\n\n\nPHP has the following functions to check if the type of a variable is integer:"
            "\n\n•is_int()"
            "\n\n•is_integer() - alias of is_int()"
            "\n\n•is_long() - alias of is_int()"
          },
          {
            'heading': "PHP Floats ",
            'attachment': "assets/php_beginner/num_5.png",
            'body': "A float is a number with a decimal point or a number in exponential form."
            "\n\n2.0, 256.4, 10.358, 7.64E+5, 5.56E-5 are all floats."
            "\n\nThe float data type can commonly store a value up to 1.7976931348623E+308 "
                "(platform dependent), and have a maximum precision of 14 digits."
            "\n\nPHP has the following predefined constants for floats (from PHP 7.2):"
            "\n\n\n•PHP_FLOAT_MAX - The largest representable floating point number"
            "\n\n•PHP_FLOAT_MIN - The smallest representable positive floating point number"
            "\n\n•PHP_FLOAT_DIG - The number of decimal digits that can be rounded "
                "into a float and back without precision loss"
            "\n\nPHP_FLOAT_EPSILON - The smallest representable positive number x, so that x + 1.0 != 1.0"
            "\n\nPHP has the following functions to check if the type of a variable is float:"
            "\n\n•is_float()"
            "\n\n•is_double() - alias of is_float()"
          },
          {
            'heading': "PHP Infinity ",
            'attachment': "assets/php_beginner/num_6.png",
            'body': "A numeric value that is larger than PHP_FLOAT_MAX is considered infinite."
            "\n\nPHP has the following functions to check if a numeric value is finite or infinite:"
            "\n\n•is_finite()"
            "\n\n•is_infinite()"
            "\n\nHowever, the PHP var_dump() function returns the data type and value:"
          },
          {
            'heading': "PHP NaN ",
            'attachment': "assets/php_beginner/num_7.png",
            'body': "NaN stands for Not a Number."
            "\n\nNaN is used for impossible mathematical operations."
            "\n\nPHP has the following functions to check if a value is not a number:"
            "\n\n•is_nan()"
            "\n\nHowever, the PHP var_dump() function returns the data type and value:"
          },
          {
            'heading': "PHP Numerical Strings ",
            'attachment': "assets/php_beginner/num_8.png",
            'body': "The PHP is_numeric() function can be used to find whether a "
                "variable is numeric. The function returns true if the variable is "
                "a number or a numeric string, false otherwise."
          },


        ]
      },
      13: {
        'topic': "9.     PHP Casting",
        'subTopic': [
          {
            'heading': "PHP Casting ",
            'attachment': "",
            'body': "Sometimes you need to change a variable from one data type "
                "into another, and sometimes you want a variable to have a specific "
                "data type. This can be done with casting."
          },
          {
            'heading': "Cast to String ",
            'attachment': "assets/php_beginner/cas_1.png",
            'body': "To cast to string, use the (string) statement"
          },
          {
            'heading': "Cast to Integer ",
            'attachment': "assets/php_beginner/cas_2.png",
            'body': "To cast to integer, use the (int) statement:"
          },
          {
            'heading': "Cast to Float ",
            'attachment': "assets/php_beginner/cas_3.png",
            'body': "To cast to float, use the (float) statement:"
          },
          {
            'heading': "Cast to Boolean ",
            'attachment': "assets/php_beginner/cas_4.png",
            'body': "To cast to boolean, use the (bool) statement:"
          },
          {
            'heading': "Cast to Array ",
            'attachment': "assets/php_beginner/cas_5.png",
            'body': "To cast to array, use the (array) statement:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/cas_6.png",
            'body': "Converting Objects into Arrays:"
          },
          {
            'heading': "Cast to Object ",
            'attachment': "assets/php_beginner/cas_7.png",
            'body': "To cast to object, use the (object) statement:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/cas_8.png",
            'body': "Converting Arrays into Objects:"
          },
          {
            'heading': "Cast to NULL ",
            'attachment': "assets/php_beginner/cas_9.png",
            'body': "To cast to NULL, use the (unset) statement:"
          },

        ]
      },
      14: {
        'topic': "9.     PHP Math",
        'subTopic': [
          {
            'heading': "PHP Math ",
            'attachment': "",
            'body': "PHP has a set of math functions that allows you to perform "
                "mathematical tasks on numbers."
          },
          {
            'heading': "PHP pi() Function ",
            'attachment': "assets/php_beginner/math_1.png",
            'body': "The pi() function returns the value of PI:"
          },
          {
            'heading': "PHP min() and max() Functions ",
            'attachment': "assets/php_beginner/math_2.png",
            'body': "The min() and max() functions can be used to find the lowest "
                "or highest value in a list of arguments:"
          },
          {
            'heading': "PHP abs() Function ",
            'attachment': "assets/php_beginner/math_3.png",
            'body': "The abs() function returns the absolute (positive) value of a number"
          },
          {
            'heading': "PHP sqrt() Function ",
            'attachment': "assets/php_beginner/math_4.png",
            'body': "The sqrt() function returns the square root of a number:"
          },
          {
            'heading': "PHP round() Function ",
            'attachment': "assets/php_beginner/math_5.png",
            'body': "The round() function rounds a floating-point number to its nearest integer:"
          },
          {
            'heading': "Random Numbers ",
            'attachment': "assets/php_beginner/math_6.png",
            'body': "The rand() function generates a random number:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/math_7.png",
            'body': "To get more control over the random number, you can add the "
                "optional min and max parameters to specify the lowest integer and "
                "the highest integer to be returned."
            "\n\n\nFor example, if you want a random integer between 10 and 100 "
                "(inclusive), use rand(10, 100):"
          },

        ]
      },
      15: {
        'topic': "10.     PHP Constants",
        'subTopic': [
          {
            'heading': "PHP Constants ",
            'attachment': "",
            'body': "Constants are like variables, except that once they are "
                "defined they cannot be changed or undefined."
          },
          {
            'heading': "Create a PHP Constant ",
            'attachment': "assets/php_beginner/cons_1.png",
            'body': "To create a constant, use the define() function."
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/cons_2.png",
            'body': "Create a constant with a case-sensitive name:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/cons_3.png",
            'body': "Create a constant with a case-insensitive name:"
          },
          {
            'heading': "PHP const Keyword ",
            'attachment': "assets/php_beginner/cons_4.png",
            'body': "You can also create a constant by using the const keyword."
          },
          {
            'heading': "PHP Constant Arrays ",
            'attachment': "assets/php_beginner/cons_5.png",
            'body': "From PHP7, you can create an Array constant using the define() function."
          },
          {
            'heading': "Constants are Global ",
            'attachment': "assets/php_beginner/cons_6.png",
            'body': "Constants are automatically global and can be used across the entire script."
          },

        ]
      },
      16: {
        'topic': "11.     PHP Magic Constants",
        'subTopic': [
          {
            'heading': "PHP Predefined Constants ",
            'attachment': "assets/php_beginner/magic.png",
            'body': "PHP has nine predefined constants that change value depending on where they are used, and therefor they are called magic constants."
            "\n\nThese magic constants are written with a double underscore at the start and the end, except for the ClassName::class constant."
          },

        ]
      },
      17: {
        'topic': "12.     PHP Operators",
        'subTopic': [
          {
            'heading': "PHP Operators ",
            'attachment': "",
            'body': "Operators are used to perform operations on variables and values."
          },
          {
            'heading': "PHP Arithmetic Operators ",
            'attachment': "assets/php_beginner/op_1.png",
            'body': "The PHP arithmetic operators are used with numeric values to "
                "perform common arithmetical operations, such as addition, "
                "subtraction, multiplication etc."
          },
          {
            'heading': "PHP Assignment Operators ",
            'attachment': "assets/php_beginner/op_2.png",
            'body': "The PHP assignment operators are used with numeric values "
                "to write a value to a variable."
            "\n\nThe basic assignment operator in PHP is =. It means that the "
                "left operand gets set to the value of the assignment expression on the right"
          },
          {
            'heading': "PHP Comparison Operators ",
            'attachment': "assets/php_beginner/op_3.png",
            'body': "The PHP comparison operators are used to compare two values (number or string):"
          },
          {
            'heading': "PHP Increment / Decrement Operators ",
            'attachment': "assets/php_beginner/op_4.png",
            'body': "The PHP increment operators are used to increment a variable's value"
            "\n\nThe PHP decrement operators are used to decrement a variable's value."
          },
          {
            'heading': "PHP Logical Operators ",
            'attachment': "assets/php_beginner/op_5.png",
            'body': "The PHP logical operators are used to combine conditional statements."
          },
          {
            'heading': "PHP String Operators ",
            'attachment': "assets/php_beginner/op_6.png",
            'body': "PHP has two operators that are specially designed for strings"
          },
          {
            'heading': "PHP Array Operators ",
            'attachment': "assets/php_beginner/op_7.png",
            'body': "The PHP array operators are used to compare arrays."
          },
          {
            'heading': "PHP Conditional Assignment Operators ",
            'attachment': "assets/php_beginner/op_8.png",
            'body': "he PHP conditional assignment operators are used to set a "
                "value depending on conditions:"
          },



        ]
      },
      18: {
        'topic': "13.     PHP if Statements",
        'subTopic': [
          {
            'heading': "PHP if Statements ",
            'attachment': "",
            'body': "Conditional statements are used to perform different actions"
                " based on different conditions"
          },
          {
            'heading': "PHP - The if Statement ",
            'attachment': "assets/php_beginner/if_1.png",
            'body': "The if statement executes some code if one condition is true."
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/if_2.png",
            'body': "We can also use variables in the if statement:"
          },


        ]
      },
      19: {
        'topic': "14.     PHP if Operators",
        'subTopic': [
          {
            'heading': "Comparison Operators ",
            'attachment': "assets/php_beginner/ifop_1.png",
            'body': "If statements usually contain conditions that compare two values."
            "\n\nTo compare two values, we need to use a comparison operator."
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/ifop_2.png",
            'body': "Here are the PHP comparison operators to use in if statements:"
          },
          {
            'heading': "Logical Operators ",
            'attachment': "assets/php_beginner/ifop_3.png",
            'body': "To check more than one condition, we can use logical operators, like the && operator:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/ifop_4.png",
            'body': "Here are the PHP logical operators to use in if statements:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_beginner/ifop_5.png",
            'body': "check if a is either 2, 3, 4, 5, 6, or 7:"
          },


        ]
      },
      20: {
        'topic': "15.     PHP if...else Statements",
        'subTopic': [
          {
            'heading': "PHP - The if...else Statement ",
            'attachment': "assets/php_beginner/ifel_1.png",
            'body': "The if...else statement executes some code if a condition "
                "is true and another code if that condition is false."
          },
          {
            'heading': "PHP - The if...elseif...else Statement ",
            'attachment': "assets/php_beginner/ifel_2.png",
            'body': "The if...elseif...else statement executes different codes "
                "for more than two conditions."
          },


        ]
      },
      21: {
        'topic': "16.     PHP Shorthand if Statements",
        'subTopic': [
          {
            'heading': "Short Hand If",
            'attachment': "assets/php_beginner/sh_1.png",
            'body': "To write shorter code, you can write if statements on one line."
          },
          {
            'heading': "Short Hand If...Else ",
            'attachment': "assets/php_beginner/sh_2.png",
            'body': "if...else statements can also be written in one line, but the syntax is a bit different."
          },


        ]
      },
      22: {
        'topic': "17.     PHP Nested if Statement",
        'subTopic': [
          {
            'heading': "Nested If ",
            'attachment': "assets/php_beginner/nest.png",
            'body': "You can have if statements inside if statements, this is called nested if statements."
          },

        ]
      },
      23: {
        'topic': "18.     PHP switch Statement",
        'subTopic': [
          {
            'heading': "PHP switch Statement ",
            'attachment': "assets/php_beginner/sw.png",
            'body': "The switch statement is used to perform different actions based on different conditions."
          },

        ]
      },

    },
    Categories.intermediate: {
      0: {
        'topic': "1.     PHP Loops",
        'subTopic': [
          {
            'heading': "PHP Loops ",
            'attachment': "",
            'body': "Often when you write code, you want the same block of code "
                "to run over and over again a certain number of times. So, instead "
                "of adding several almost equal code-lines in a script, we can use loops."
            "\n\nLoops are used to execute the same block of code again and again, "
                "as long as a certain condition is true."
            "\n\n\nIn PHP, we have the following loop types:"
            "\n\nwhile - loops through a block of code as long as the specified condition is true"
            "\n\ndo...while - loops through a block of code once, and then repeats "
                "the loop as long as the specified condition is true"
            "\n\nfor - loops through a block of code a specified number of times"
            "\n\nforeach - loops through a block of code for each element in an array"
          },


        ]
      }, 1: {
        'topic': "     1.1.     PHP while Loop",
        'subTopic': [
          {
            'heading': "The PHP while Loop ",
            'attachment': "assets/php_intermediate/w_1.png",
            'body': "The while loop executes a block of code as long as the specified condition is true."
          },
          {
            'heading': "The break Statement ",
            'attachment': "assets/php_intermediate/w_2.png",
            'body': "With the break statement we can stop the loop even if the condition is still true:"
          },
          {
            'heading': "The continue Statement ",
            'attachment': "assets/php_intermediate/w_3.png",
            'body': "With the continue statement we can stop the current iteration, and continue with the next:"
          },
          {
            'heading': "Alternative Syntax ",
            'attachment': "The while loop syntax can also be written with the endwhile statement like this",
            'body': "assets/php_intermediate/w_4.png"
          },
          {
            'heading': "Step 10 ",
            'attachment': "assets/php_intermediate/w_5.png",
            'body': "If you want the while loop count to 100, but only by each 10, you can increase the counter by 10 instead 1 in each iteration:"
          },


        ]
      },

      2: {
        'topic': "     1.2.     PHP do while Loop",
        'subTopic': [
          {
            'heading': "The PHP do while Loop ",
            'attachment': "assets/php_intermediate/dwl_1.png",
            'body': "The do...while loop will always execute the block of code "
                "at least once, it will then check the condition, and repeat the "
                "loop while the specified condition is true."
          },
          {
            'heading': "assets/php_intermediate/dwl_2.png ",
            'attachment': "",
            'body': "Let us see what happens if we set the  variable to "
                "8 instead of 1, before execute the same do...while loop again:"
          },
          {
            'heading': "The break Statement ",
            'attachment': "assets/php_intermediate/dwl_3.png",
            'body': "With the break statement we can stop the loop even if the condition is still true:"
          },
          {
            'heading': "The continue Statement ",
            'attachment': "assets/php_intermediate/dwl_4.png",
            'body': "With the continue statement we can stop the current iteration, and continue with the next:"
          },

        ]
      },
      3: {
        'topic': "     1.3.     PHP for Loop",
        'subTopic': [
          {
            'heading': "The PHP for Loop ",
            'attachment': "assets/php_intermediate/fl_1.png",
            'body': ""
          },
          {
            'heading': "The break Statement ",
            'attachment': "assets/php_intermediate/fl_2.png",
            'body': "With the break statement we can stop the loop even if the condition is still true:"
          },
          {
            'heading': "The continue Statement ",
            'attachment': "assets/php_intermediate/fl_3.png",
            'body': "With the continue statement we can stop the current iteration, and continue with the next:"
          },
          {
            'heading': "Step 10 ",
            'attachment': "assets/php_intermediate/fl_4.png",
            'body': "This example counts to 100 by tens:"
          },
          {
            'heading': " ",
            'attachment': "",
            'body': ""
          },


        ]
      },
      4: {
        'topic': "     1.4.     PHP foreach Loop",
        'subTopic': [
          {
            'heading': "The foreach Loop on Arrays ",
            'attachment': "assets/php_intermediate/fe_1.png",
            'body': "The most common use of the foreach loop, is to loop through the items of an array."
          },
          {
            'heading': "Keys and Values ",
            'attachment': "assets/php_intermediate/fe_2.png",
            'body': "The array above is an indexed array, where the first item "
                "has the key 0, the second has the key 1, and so on."
            "\n\nAssociative arrays are different, associative arrays use named "
                "keys that you assign to them, and when looping through associative "
                "arrays, you might want to keep the key as well as the value."
            "\n\nThis can be done by specifying both the key and value in the foreach defintition, like this:"
          },
          {
            'heading': "The foreach Loop on Objects ",
            'attachment': "assets/php_intermediate/fe_3.png",
            'body': "The foreach loop can also be used to loop through "
                "properties of an object:"
          },
          {
            'heading': "The break Statement ",
            'attachment': "assets/php_intermediate/fe_4.png",
            'body': "With the break statement we can stop the loop even if it has not reached the end:"
          },
          {
            'heading': "The continue Statement ",
            'attachment': "assets/php_intermediate/fe_5.png",
            'body': "With the continue statement we can stop the current iteration, and continue with the next:"
          },
          {
            'heading': "Foreach Byref ",
            'attachment': "assets/php_intermediate/fe_6.png",
            'body': "When looping through the array items, any changes done to the array item will, by default, NOT affect the original array:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/fe_7.png",
            'body': "BUT, by using the & character in the foreach declaration, "
                "the array item is assigned by reference, which results in any "
                "changes done to the array item will also be done to the original array:"
          },
          {
            'heading': "Alternative Syntax ",
            'attachment': "assets/php_intermediate/fe_8.png",
            'body': "The foreach loop syntax can also be written with the endforeach statement like this"
          },

        ]
      },
      5: {
        'topic': "     1.5.     PHP Break",
        'subTopic': [
          {
            'heading': "Break in For loop ",
            'attachment': "assets/php_intermediate/b_1.png",
            'body': "The break statement can be used to jump out of a for loop."
          },
          {
            'heading': "Break in While Loop ",
            'attachment': "assets/php_intermediate/b_2.png",
            'body': "The break statement can be used to jump out of a while loop."
          },
          {
            'heading': "Break in Do While Loop ",
            'attachment': "assets/php_intermediate/b_3.png",
            'body': "The break statement can be used to jump out of a do...while loop"
          },
          {
            'heading': "Break in For Each Loop ",
            'attachment': "assets/php_intermediate/b_4.png",
            'body': "The break statement can be used to jump out of a foreach loop."
          },
          {
            'heading': "PHP Continue ",
            'attachment': "",
            'body': ""
          },

        ]
      },
      6: {
        'topic': "     1.6.     PHP Continue",
        'subTopic': [
          {
            'heading': "Continue in For Loops ",
            'attachment': "assets/php_intermediate/b_1.png",
            'body': "The continue statement stops the current iteration in the for loop and continue with the next."
          },
          {
            'heading': "Continue in While Loop ",
            'attachment': "assets/php_intermediate/b_2.png",
            'body': "The continue statement stops the current iteration in the while loop and continue with the next."
          },
          {
            'heading': "Continue in Do While Loop ",
            'attachment': "assets/php_intermediate/b_3.png",
            'body': "The continue statement stops the current iteration in the do...while loop and continue with the next."
          },
          {
            'heading': "Continue in For Each Loop ",
            'attachment': "assets/php_intermediate/b_4.png",
            'body': "The continue statement stops the current iteration in the foreach loop and continue with the next."
          },

        ]
      },
      7: {
        'topic': "2.     PHP Functions",
        'subTopic': [
          {
            'heading': "Create a Function ",
            'attachment': "assets/php_intermediate/f_1.png",
            'body': "A user-defined function declaration starts with the keyword function, followed by the name of the function:"
          },
          {
            'heading': "Call a Function ",
            'attachment': "assets/php_intermediate/f_2.png",
            'body': "To call the function, just write its name followed by parentheses ():"
          },
          {
            'heading': "PHP Function Arguments ",
            'attachment': "assets/php_intermediate/f_3.png",
            'body': "Information can be passed to functions through arguments. "
                "An argument is just like a variable."
            "\n\nArguments are specified after the function name, inside the parentheses. "
                "You can add as many arguments as you want, just separate them with a comma."
            "\n\nThe following example has a function with one argument (fname). "
                "When the familyName() function is called, we also pass along a name, "
                "e.g. (Jani), and the name is used inside the function, which outputs "
                "several different first names, but an equal last name:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/f_4.png",
            'body': "The following example has a function with two arguments (fname, year):"
          },
          {
            'heading': "PHP Default Argument Value ",
            'attachment': "assets/php_intermediate/f_5.png",
            'body': "The following example shows how to use a default parameter. "
                "If we call the function setHeight() without arguments it takes "
                "the default value as argument:"
          },
          {
            'heading': "PHP Functions - Returning values ",
            'attachment': "assets/php_intermediate/f_6.png",
            'body': "To let a function return a value, use the return statement:"
          },
          {
            'heading': "Passing Arguments by Reference ",
            'attachment': "assets/php_intermediate/f_7.png",
            'body': "In PHP, arguments are usually passed by value, which means "
                "that a copy of the value is used in the function and the variable "
                "that was passed into the function cannot be changed."
            "\n\nWhen a function argument is passed by reference, changes to the "
                "argument also change the variable that was passed in. To turn "
                "a function argument into a reference, the & operator is used:"
          },
          {
            'heading': "Variable Number of Arguments ",
            'attachment': "assets/php_intermediate/f_8.png",
            'body': "By using the ... operator in front of the function parameter, "
                "the function accepts an unknown number of arguments. This is also "
                "called a variadic function."
            "\n\nThe variadic function argument becomes an array."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/f_9.png",
            'body': "You can only have one argument with variable length, and it has to be the last argument."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/f_10.png",
            'body': "If the variadic argument is not the last argument, you will get an error."
          },
          {
            'heading': "PHP is a Loosely Typed Language ",
            'attachment': "assets/php_intermediate/f_11.png",
            'body': "In the examples above, notice that we did not have to tell "
                "PHP which data type the variable is."
            "\n\nPHP automatically associates a data type to the variable, depending "
                "on its value. Since the data types are not set in a strict sense, "
                "you can do things like adding a string to an integer without causing an error."
            "\n\nIn PHP 7, type declarations were added. This gives us an option to specify "
                "the expected data type when declaring a function, and by adding "
                "the strict declaration, it will throw a Fatal Error if the data type mismatches."
            "\n\nIn the following example we try to send both a number and a string to the function without using strict:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/f_12.png",
            'body': "To specify strict we need to set declare(strict_types=1);. "
                "This must be on the very first line of the PHP file."
            "\n\nIn the following example we try to send both a number and a "
                "string to the function, but here we have added the strict declaration:"
          },
          {
            'heading': "PHP Return Type Declarations ",
            'attachment': "assets/php_intermediate/f_13.png",
            'body': "PHP 7 also supports Type Declarations for the return statement. "
                "Like with the type declaration for function arguments, by enabling "
                "the strict requirement, it will throw a Fatal Error on a type mismatch."
            "\n\nTo declare a type for the function return, add a colon ( : ) "
                "and the type right before the opening curly ( { )bracket when "
                "declaring the function."
            "\n\nIn the following example we specify the return type for the function:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/f_14.png",
            'body': "You can specify a different return type, than the argument types, but make sure the return is the correct type:"
          },

        ]
      },
      8: {
        'topic': "3.     PHP Arrays",
        'subTopic': [
          {
            'heading': "PHP Arrays ",
            'attachment': "assets/php_intermediate/a_1.png",
            'body': "An array stores multiple values in one single variable:"
          },
          {
            'heading': "What is an Array? ",
            'attachment': "",
            'body': "An array is a special variable that can hold many values "
                "under a single name, and you can access the values by referring "
                "to an index number or name."
          },
          {
            'heading': "PHP Array Types ",
            'attachment': "",
            'body': "In PHP, there are three types of arrays:"
            "\n\nIn PHP, there are three types of arrays:"
            "\n\n•Indexed arrays - Arrays with a numeric index"
            "\n\n•Associative arrays - Arrays with named keys"
            "\n\n•Multidimensional arrays - Arrays containing one or more arrays"
          },
          {
            'heading': "Array Items ",
            'attachment': "assets/php_intermediate/a_2.png",
            'body': "Array items can be of any data type."
            "\n\nThe most common are strings and numbers (int, float), "
                "but array items can also be objects, functions or even arrays."
            "\n\nYou can have different data types in the same array."
          },
          {
            'heading': "Array Functions ",
            'attachment': "assets/php_intermediate/a_3.png",
            'body': "The real strength of PHP arrays are the built-in array functions, like the count() function for counting array items:"
          },

        ]
      },
      9: {
        'topic': "     3.1.     PHP Indexed Arrays",
        'subTopic': [
          {
            'heading': "PHP Indexed Arrays ",
            'attachment': "",
            'body': "In indexed arrays each item has an index number."
            "\n\nIn indexed arrays each item has an index number."
            "\n\nBy default, the first item has index 0, the second item has item 1, etc."
          },
          {
            'heading': "PHP Indexed Arrays ",
            'attachment': "assets/php_intermediate/ina.png",
            'body': "In indexed arrays each item has an index number."
            "\n\nBy default, the first item has index 0, the second item has item 1, etc."
          },
          {
            'heading': "Access Indexed Arrays ",
            'attachment': "assets/php_intermediate/l_2.png",
            'body': "To access an array item you can refer to the index number."
          },
          {
            'heading': "Change Value ",
            'attachment': "assets/php_intermediate/l_3.png",
            'body': "To change the value of an array item, use the index number:"
          },
          {
            'heading': "Loop Through an Indexed Array ",
            'attachment': "assets/php_intermediate/l_4.png",
            'body': "To loop through and print all the values of an indexed array, "
                "you could use a foreach loop, like this:"
          },
          {
            'heading': "Index Number ",
            'attachment': "assets/php_intermediate/l_5.png",
            'body': "The key of an indexed array is a number, by default the "
                "first item is 0 and the second is 1 etc., but there are exceptions."
            "\n\nNew items get the next index number, meaning one higher than the highest existing index."
            "\n\nSo if you have an array like this:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/l_6.png",
            'body': "And if you use the array_push() function to add a new item, the new item will get the index 3:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/l_7.png",
            'body': "But if you have an array with random index numbers, like this:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/l_8.png",
            'body': "And if you use the array_push() function to add a new item, what will be the index number of the new item?"
          },


        ]
      },
      10: {
        'topic': "     3.2.     PHP Associative Arrays",
        'subTopic': [
          {
            'heading': " PHP Associative Arrays",
            'attachment': "assets/php_intermediate/ass_1.png",
            'body': "Associative arrays are arrays that use named keys that you assign to them."
          },
          {
            'heading': "Change Value",
            'attachment': "assets/php_intermediate/ass_2.png",
            'body': "To change the value of an array item, use the key name:"
          },
          {
            'heading': "Loop Through an Associative Array ",
            'attachment': "assets/php_intermediate/ass_3.png",
            'body': "To loop through and print all the values of an associative array, you could use a foreach loop, like this:"
          },



        ]
      },
      11: {
        'topic': "     3.3.     PHP Create Arrays",
        'subTopic': [
          {
            'heading': "Create Array ",
            'attachment': "assets/php_intermediate/ca_1.png",
            'body': "You can create arrays by using the array() function:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/ca_2.png",
            'body': "You can also use a shorter syntax by using the [] brackets:"
          },
          {
            'heading': "Multiple Lines ",
            'attachment': "assets/php_intermediate/ca_3.png",
            'body': "Line breaks are not important, so an array declaration can span multiple lines:"
          },
          {
            'heading': "Trailing Comma ",
            'attachment': "assets/php_intermediate/ca_4.png",
            'body': "A comma after the last item is allowed:"
          },
          {
            'heading': "Array Keys ",
            'attachment': "assets/php_intermediate/ca_5.png",
            'body': "When creating indexed arrays the keys are given automatically, "
                "starting at 0 and increased by 1 for each item, so the array above could also be created with keys:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/ca_6.png",
            'body': "As you can see, indexed arrays are the same as associative arrays, "
                "but associative arrays have names instead of numbers:"
          },
          {
            'heading': "Declare Empty Array ",
            'attachment': "assets/php_intermediate/ca_7.png",
            'body': "You can declare an empty array first, and add items to it later:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/ca_8.png",
            'body': "The same goes for associative arrays, you can declare the array first, and then add items to it:"
          },
          {
            'heading': "Mixing Array Keys ",
            'attachment': "assets/php_intermediate/ca_9.png",
            'body': "You can have arrays with both indexed and named keys:"
          },


        ]
      },
      12: {
        'topic': "     3.4.     PHP Access Arrays",
        'subTopic': [
          {
            'heading': "Access Array Item ",
            'attachment': "assets/php_intermediate/acc_1.png ",
            'body': "To access an array item, you can refer to the index number "
                "for indexed arrays, and the key name for associative arrays."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/acc_2.png",
            'body': "To access items from an associative array, use the key name:"
          },
          {
            'heading': "Double or Single Quotes ",
            'attachment': "assets/php_intermediate/acc_3.png",
            'body': "You can use both double and single quotes when accessing an array:"
          },
          {
            'heading': "Execute a Function Item ",
            'attachment': "assets/php_intermediate/acc_4.png",
            'body': "Array items can be of any data type, including function."
            "\n\nTo execute such a function, use the index number followed by parentheses ():"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/acc_5.png",
            'body': "Use the key name when the function is an item in a associative array:"
          },
          {
            'heading': "Loop Through an Associative Array ",
            'attachment': "assets/php_intermediate/acc_6.png",
            'body': "To loop through and print all the values of an associative array, you can use a foreach loop, like this:"
          },
          {
            'heading': "Loop Through an Indexed Array ",
            'attachment': "assets/php_intermediate/acc_7.png",
            'body': "To loop through and print all the values of an indexed array, you can use a foreach loop, like this:"
          },
        ]
      },
      13: {
        'topic': "      3.5.     PHP Update Array Items",
        'subTopic': [
          {
            'heading': "Update Array Item ",
            'attachment': "assets/php_intermediate/up_1.png",
            'body': "To update an existing array item, you can refer to the index number for indexed arrays, and the key name for associative arrays."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/up_2.png",
            'body': "To update items from an associative array, use the key name:"
          },

          {
            'heading': "Update Array Items in a Foreach Loop ",
            'attachment': "assets/php_intermediate/up_3.png",
            'body':"One way is to insert the & character in the assignment to "
                "assign the item value by reference, and thereby making sure that "
                "any changes done with the array item inside the loop will be done to the original array:"
            "There are different techniques to use when changing item values in a foreach loop."
          },


        ]
      },
      14: {
        'topic': "     3.6.     PHP Add Array Items",
        'subTopic': [
          {
            'heading': "Add Array Item ",
            'attachment': "assets/php_intermediate/add_1.png",
            'body': "To add items to an existing array, you can use the bracket [] syntax."
          },
          {
            'heading': "Associative Arrays ",
            'attachment': "assets/php_intermediate/add_2.png",
            'body': "To add items to an associative array, or key/value array, use brackets [] for the key, and assign value with the = operator."
          },
          {
            'heading': "Add Multiple Array Items ",
            'attachment': "assets/php_intermediate/add_3.png",
            'body': "To add multiple items to an existing array, use the array_push() function."
          },
          {
            'heading': "Add Multiple Items to Associative Arrays ",
            'attachment': "assets/php_intermediate/add_4.png",
            'body': "To add multiple items to an existing array, you can use the += operator."
          },

        ]
      },
      15: {
        'topic': "     3.7.     PHP Delete Array Items",
        'subTopic': [
          {
            'heading': "Remove Array Item ",
            'attachment': "assets/php_intermediate/re_1.png",
            'body': "To remove an existing item from an array, you can use the array_splice() function."
            "\n\nWith the array_splice() function you specify the index (where to start) and how many items you want to delete."
          },
          {
            'heading': "Using the unset Function ",
            'attachment': "assets/php_intermediate/re_2.png",
            'body': "You can also use the unset() function to delete existing array items."
          },
          {
            'heading': "Remove Multiple Array Items ",
            'attachment': "assets/php_intermediate/re_3.png",
            'body': "To remove multiple items, the array_splice() function takes "
                "a length parameter that allows you to specify the number of items to delete."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/re_4.png",
            'body': "The unset() function takes a unlimited number of arguments, and can therefor be used to delete multiple array items:"
          },
          {
            'heading': "Remove Item From an Associative Array ",
            'attachment': "assets/php_intermediate/re_5.png",
            'body': "To remove items from an associative array, you can use the unset() function."
            "\n\nSpecify the key of the item you want to delete."
          },
          {
            'heading': "Using the array_diff Function ",
            'attachment': "assets/php_intermediate/re_6.png",
            'body': "You can also use the array_diff() function to remove items from an associative array."
            "\n\nThis function returns a new array, without the specified items."
          },
          {
            'heading': "Remove the Last Item ",
            'attachment': "assets/php_intermediate/re_7.png",
            'body': "The array_pop() function removes the last item of an array."
          },
          {
            'heading': "Remove the First Item ",
            'attachment': "assets/php_intermediate/re_8.png",
            'body': "The array_shift() function removes the first item of an array."
          },

        ]
      },
      16: {
        'topic': "     3.8.     PHP Sorting Arrays",
        'subTopic': [
          {
            'heading': "PHP Sorting Arrays ",
            'attachment': "",
            'body': "The elements in an array can be sorted in alphabetical or numerical order, descending or ascending."
          },
          {
            'heading': "Sort Array in Ascending Order - sort() ",
            'attachment': "assets/php_intermediate/re_1.png",
            'body': "The following example sorts the elements of the cars array in ascending alphabetical order:"
          },

          {
            'heading': " ",
            'attachment': "assets/php_intermediate/re_2.png",
            'body': "The following example sorts the elements of the numbers array in ascending numerical order:"
          },
          {
            'heading': "Sort Array in Descending Order - rsort() ",
            'attachment': "assets/php_intermediate/re_3.png",
            'body': "The following example sorts the elements of the cars array in descending alphabetical order:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/re_4.png",
            'body': "The following example sorts the elements of the numbers array in descending numerical order:"
          },
          {
            'heading': "Sort Array (Ascending Order), According to Value - asort() ",
            'attachment': "assets/php_intermediate/re_5.png",
            'body': "The following example sorts an associative array in ascending order, according to the value:"
          },
          {
            'heading': "Sort Array (Ascending Order), According to Key - ksort() ",
            'attachment': "assets/php_intermediate/re_6.png",
            'body': "The following example sorts an associative array in ascending order, according to the key:"
          },
          {
            'heading': "Sort Array (Descending Order), According to Value - arsort() ",
            'attachment': "assets/php_intermediate/re_7.png",
            'body': "The following example sorts an associative array in descending order, according to the value:"
          },
          {
            'heading': "Sort Array (Descending Order), According to Key - krsort() ",
            'attachment': "assets/php_intermediate/re_8.png",
            'body': "The following example sorts an associative array in descending order, according to the key:"
          },
          {
            'heading': " ",
            'attachment': "",
            'body': ""
          },


        ]
      },
      17: {
        'topic': "     3.9.     PHP Multidimensional Arrays",
        'subTopic': [
          {
            'heading': "PHP Multidimensional Arrays ",
            'attachment': "",
            'body': "In the previous pages, we have described arrays that are a single list of key/value pairs."
            "\n\nHowever, sometimes you want to store values with more than one key. For this, we have multidimensional arrays."
          },
          {
            'heading': "PHP - Two-dimensional Arrays ",
            'attachment': "assets/php_intermediate/mul_1.png",
            'body': "A two-dimensional array is an array of arrays (a three-dimensional array is an array of arrays of arrays)."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/mul_2.png",
            'body': "We can store the data from the table above in a two-dimensional array, like this:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/mul_3.png",
            'body': "Now the two-dimensional cars array contains four arrays, and it has two indices: row and column."
            "\n\nTo get access to the elements of the cars array we must point to the two indices (row and column):"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/mul_4.png",
            'body': "We can also put a for loop inside another for loop to get "
                "the elements of the cars array (we still have to point to the two indices):"
          },



        ]
      },
      18: {
        'topic': "     3.10.     PHP Array Functions",
        'subTopic': [
          {
            'heading': " ",
            'attachment': "",
            'body': "PHP has a set of built-in functions that you can use on arrays."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/arr_1.png",
            'body': ""
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/arr_2.png",
            'body': ""
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/arr_3.png",
            'body': ""
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/arr_4.png",
            'body': ""
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/arr_5.png",
            'body': ""
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/arr_4.png",
            'body': ""
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/arr_5.png",
            'body': ""
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/arr_6.png",
            'body': ""
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/arr_7.png",
            'body': ""
          },


        ]
      },
      19: {
        'topic': "4.     PHP GLOBALS",
        'subTopic': [
          {
            'heading': "Global Variables ",
            'attachment': "assets/php_intermediate/glo_1.png",
            'body': "Global variables are variables that can be accessed from any scope."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/glo_2.png",
            'body': "This is different from other programming languages where global variables are available without specifically referring to them as global."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/glo_3.png",
            'body': "You can also refer to global variables inside functions by defining them as global with the global keyword."
          },
          {
            'heading': "Create Global Variables ",
            'attachment': "assets/php_intermediate/glo_4.png",
            'body': "Variables created in the outer most scope are global variables "
                "either if they are created using the GLOBALS syntax or not:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/glo_5.png",
            'body': "Variables created inside a function belongs only to that function, "
                "but you can create global variables inside a function by using the GLOBALS syntax:"
          },



        ]
      },
      20: {
        'topic': "     4.1.     PHP - SERVER",
        'subTopic': [
          {
            'heading': "SERVER ",
            'attachment': "assets/php_intermediate/ser_1.png",
            'body': " is a PHP super global variable which holds information about headers, paths, and script locations."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/ser_2.png",
            'body': "The following table lists the most important elements that can go inside SERVER:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/ser_3.png",
            'body': ""
          },


        ]
      },
      21: {
        'topic': "     4.2.     PHP - REQUEST",
        'subTopic': [
          {
            'heading': "REQUEST ",
            'attachment': "assets/php_intermediate/req_1.png",
            'body': "is a PHP super global variable which contains submitted form data, and all cookie data."
            "\n\nYou can access this data with the REQUEST keyword followed by the name of the form field, or cookie, like this:"
          },
          {
            'heading': "Using REQUEST on POST Requests ",
            'attachment': "assets/php_intermediate/req_2.png",
            'body': "POST request are usually data submitted from an HTML form."
            "\n\nHere is an example of how a HTML form could look like:"
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "When a user clicks the submit button, the form data is sent to a PHP file specified in the action attribute of the <form> tag."
            "\n\nIn the action file we can use the REQUEST variable to collect the value of the input field."
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "In the example below we have put the HTML form and PHP code in the same PHP file."
            "\n\nWe have also added some extra lines for security."
          },
          {
            'heading': "Using REQUEST on GET Requests ",
            'attachment': "assets/php_intermediate/req_3.png",
            'body': "GET request can be form submissions as in the example above, with the method attribute of the HTML <form> element set to GET."
            "\n\nGET requests can also be data from a query string (information added after a URL address)."
            "\n\nHere is an example of how an HTML hyperlink, with a query string could look like:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/req_4.png",
            'body': "In the PHP file we can use the REQUEST variable to collect the value of the query string."

          },

        ]
      },
      22: {
        'topic': "     4.3.     PHP - POST",
        'subTopic': [
          {
            'heading': "POST in HTML Forms ",
            'attachment': "assets/php_intermediate/pos_1.png",
            'body': "A HTML form submits information via the HTTP POST method if the form's method attribute is set to POST."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/pos_2.png",
            'body': "When a user clicks the submit button, the form data is sent "
                "to a PHP file specified in the action attribute of the <form> tag."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/pos_3.png",
            'body': "In the example below we have put the HTML form and PHP code in the same PHP file."
          },
          {
            'heading': "POST in JavaScript HTTP Requests ",
            'attachment': "assets/php_intermediate/pos_4.png",
            'body': "When sending a HTTP request in JavaScript, you can specify that the HTTP method is POST."
            "\n\nTo demonstrate this we start by creating a JavaScript function containing a HTTP request:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/pos_5.png",
            'body': "If we also add the the JavaScript, the page looks like this:"
          },
        ]
      },
      23: {
        'topic': "     4.4.     PHP GET",
        'subTopic': [
          {
            'heading': " ",
            'attachment': "",
            'body': "GET contains an array of variables received via the HTTP GET method."
            "\n\nThere are two main ways to send variables via the HTTP GET method:"
            "\n\n•Query strings in the URL"
            "\n\n•HTML Forms"
          },
          {
            'heading': "Query string in the URL ",
            'attachment': "assets/php_intermediate/get_1.png",
            'body': "A query string is data added at the end of a URL. In the link below, everything after the ? sign is part of the query string:"
          },
          {
            'heading': "GET in HTML Forms ",
            'attachment': "assets/php_intermediate/get_2.png",
            'body': "A HTML form submits information via the HTTP GET method if the form's method attribute is set to GET"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/get_3.png",
            'body': "In the action file we can use the GET variable to collect the value of the input fields."
          },

        ]
      },
      24: {
        'topic': "5.     PHP Regular Expressions",
        'subTopic': [
          {
            'heading': "What is a Regular Expression? ",
            'attachment': "",
            'body': "A regular expression is a sequence of characters that forms a "
                "search pattern. When you search for data in a text, you can use "
                "this search pattern to describe what you are searching for."
          },
          {
            'heading': "Syntax ",
            'attachment': "",
            'body': "In PHP, regular expressions are strings composed of delimiters, a pattern and optional modifiers."
          },
          {
            'heading': "Regular Expression Functions ",
            'attachment': "assets/php_intermediate/reg_1.png",
            'body': "PHP provides a variety of functions that allow you to use regular expressions"
            "\n\nThe most common functions are:"
          },
          {
            'heading': "Using preg_match() ",
            'attachment': "assets/php_intermediate/reg_2.png",
            'body': "The preg_match() function will tell you whether a string contains matches of a pattern."
          },
          {
            'heading': "Using preg_match_all() ",
            'attachment': "assets/php_intermediate/reg_3.png",
            'body': "The preg_match_all() function will tell you how many matches were found for a pattern in a string."
          },
          {
            'heading': "Using preg_replace() ",
            'attachment': "assets/php_intermediate/reg_4.png",
            'body': "The preg_replace() function will replace all of the matches of the pattern in a string with another string."
          },
          {
            'heading': "Regular Expression Modifiers ",
            'attachment': "assets/php_intermediate/reg_5.png",
            'body': "Modifiers can change how a search is performed."
          },
          {
            'heading': "Regular Expression Patterns ",
            'attachment': "assets/php_intermediate/reg_6.png",
            'body': "Brackets are used to find a range of characters:"
          },
          {
            'heading': "Metacharacters ",
            'attachment': "assets/php_intermediate/reg_7.png",
            'body': "Metacharacters are characters with a special meaning:"
          },
          {
            'heading': "Quantifiers ",
            'attachment': "assets/php_intermediate/reg_8.png",
            'body': "Quantifiers define quantities:"
          },
          {
            'heading': "Grouping ",
            'attachment': "assets/php_intermediate/reg_9.png",
            'body': "You can use parentheses ( ) to apply quantifiers to entire "
                "patterns. They also can be used to select parts of the pattern to be used as a match."
          },
        ]
      },
      25: {
        'topic': "6.     PHP Form Handling",
        'subTopic': [
          {
            'heading': "PHP - A Simple HTML Form ",
            'attachment': "assets/php_intermediate/fh_1.png",
            'body': "The example below displays a simple HTML form with two input fields and a submit button:"
          },
          {
            'heading': "To display the submitted data you could simply echo all the variables. The welcome.php looks like this: ",
            'attachment': "assets/php_intermediate/fh_2.png",
            'body': ""
          },
          {
            'heading': "The output could be something like this ",
            'attachment': "assets/php_intermediate/fh_3.png",
            'body': ""
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/fh_3.png",
            'body': "The same result could also be achieved using the HTTP GET method:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/fh_4.png",
            'body': "and welcome_get.php looks like this:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/fh_5.png",
            'body': ""
          },


        ]
      },
      26: {
        'topic': "7.     PHP Form Validation",
        'subTopic': [
          {
            'heading': "PHP Form Validation ",
            'attachment': "",
            'body': ""
          },

        ]
      },
      27: {
        'topic': "8.     PHP Forms - Validate E-mail and URL",
        'subTopic': [
          {
            'heading': "PHP Form Validation ",
            'attachment': "",
            'body': "The HTML form we will be working at in these chapters, "
                "contains various input fields: required and optional text fields, "
                "radio buttons, and a submit button:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/for_1.png",
            'body': "The validation rules for the form above are as follows:"
          },

          {
            'heading': "Text Fields ",
            'attachment': "assets/php_intermediate/for_2.png",
            'body': "assets/php_intermediate/for_3.png"
          },
          {
            'heading': "Radio Buttons",
            'attachment': "assets/php_intermediate/for_4.png",
            'body': "The gender fields are radio buttons and the HTML code looks like this"
          },
          {
            'heading': "The Form Element ",
            'attachment': "assets/php_intermediate/for_5.png",
            'body': ""
          },
          {
            'heading': "Big Note on PHP Form Security ",
            'attachment': "assets/php_intermediate/fh_6.png",
            'body': "Assume we have the following form in a page named test_form.php:"
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/fh_7.png",
            'body': "Now, if a user enters the normal URL in the address bar like"
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "So far, so good."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/fh_8.png",
            'body': "In this case, the above code will be translated to:"
          },
          {
            'heading': "How To Avoid _SERVER[PHP_SELF] Exploits? ",
            'attachment': "assets/php_intermediate/fh_9.png",
            'body': "The form code should look like this:"

          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/fh_10.png",
            'body': "The htmlspecialchars() function converts special characters "
                "to HTML entities. Now if the user tries to exploit the PHP_SELF "
                "variable, it will result in the following output:"
          },
          {
            'heading': "Validate Form Data With PHP ",
            'attachment': "assets/php_intermediate/fh_11.png",
            'body': ""
          },




        ]
      },
      28: {
        'topic': "9.     PHP Forms - Required Fields",
        'subTopic': [
          {
            'heading': "PHP - Required Fields ",
            'attachment': "assets/php_intermediate/form_1.png",
            'body': "From the validation rules table on the previous page, we see "
                "that the Name, E-mail, and Gender fields are required. These "
                "fields cannot be empty and must be filled out in the HTML form."
          },
          {
            'heading': " ",
            'attachment': "assets/php_intermediate/form_2.png",
            'body': ""
          },
          {
            'heading': "PHP - Display The Error Messages",
            'attachment': "assets/php_intermediate/form_3.png",
            'body': "Then in the HTML form, we add a little script after each "
                "required field, which generates the correct error message if needed "
                "(that is if the user tries to submit the form without filling out "
                "the required fields):"
          },


        ]
      },
      29: {
        'topic': "10.     PHP Forms - Validate E-mail and URL",
        'subTopic': [
          {
            'heading': "PHP - Validate Name ",
            'attachment': "assets/php_intermediate/url_1.png",
            'body': "The code below shows a simple way to check if the name field "
                "only contains letters, dashes, apostrophes and whitespaces. If "
                "the value of the name field is not valid, then store an error message:"
          },
          {
            'heading': "PHP - Validate E-mail ",
            'attachment': "assets/php_intermediate/url_2.png",
            'body': "The easiest and safest way to check whether an email "
                "address is well-formed is to use PHP's filter_var() function."
            "\n\nIn the code below, if the e-mail address is not well-formed, then store an error message:"
          },
          {
            'heading': "PHP - Validate URL ",
            'attachment': "assets/php_intermediate/url_3.png",
            'body': "The code below shows a way to check if a URL address syntax is "
                "valid (this regular expression also allows dashes in the URL). "
                "If the URL address syntax is not valid, then store an error message:"
          },
          {
            'heading': "PHP - Validate Name, E-mail, and URL ",
            'attachment': "assets/php_intermediate/url_4.png",
            'body': "Now, the script looks like this:"
          },



        ]
      },
      30: {
        'topic': "11.     PHP Complete Form Example",
        'subTopic': [
          {
            'heading': "PHP - Keep The Values in The Form ",
            'attachment': "assets/php_intermediate/complete.png",
            'body': ""
          },
          {
            'heading': "PHP - Complete Form Example ",
            'attachment': "assets/php_intermediate/complete_2.png",
            'body': "Here is the complete code for the PHP Form Validation Example:"
          },


        ]
      },





    },
    Categories.advanced: {},
  },

};