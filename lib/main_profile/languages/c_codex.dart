import 'package:first_project/enums/enums.dart';

const cCodex = {
  Languages.c: {
    Categories.beginner: {
      0: {
        'topic': '1.    Introduction to C',
        'subTopic': [
          {
            'heading': 'What is C?',
            'body': "C is a general-purpose programming language created by Dennis Ritchie at the Bell Laboratories in 1972. "
                "It is a very popular language, despite being old. The main reason for its popularity is because it is a fundamental language in the field of computer science. "
          },
          {
            'heading': 'Why Learn C?',
            'body': "• It is one of the most popular programming languages in the world"
                "\n\n • If you know C, you will have no problem learning other popular programming languages such as Java, Python, C++, C#, etc, as the syntax is similar"
                "\n\n • C is very fast, compared to other programming languages, like Java and Python"
                "\n\n • C is very versatile; it can be used in both applications and technologies"
          },
          {
            'heading': 'Difference between C and C++',
            'body': "• C++ was developed as an extension of C, and both languages have almost the same syntax"
                "\n\n • The main difference between C and C++ is that C++ support classes and objects, while C does not"
          }
        ]
      },
      1: {
        'topic': '2.    Get Started',
        'subTopic': [
          {
            'heading': 'Get Started With C',
            'body': "To start using C, you need two things: "
                "\n\n •A text editor, like Notepad, to write C code"
                "\n\n •A compiler, like GCC, to translate the C code into a language that the computer will understand"
          },
          {
            'heading': 'C Install IDE',
            'body': " An IDE (Integrated Development Environment) is used to edit AND compile the code."
                "\n\n Popular IDE's include Code::Blocks, Eclipse, and Visual Studio. These are all free, and they can be used to both edit and debug C code."
                "\n\n Note: Web-based IDE's can work as well, but functionality is limited."
                "\n\n We will use Code::Blocks in our tutorial, which we believe is a good place to start."
          },
          {
            'heading': 'C Quickstart',
            'attachment': 'assets/C/ss1.png',
            'body': "Let's create our first C file.."
                "\n\nOpen Codeblocks and go to File > New > Empty File."
                "\n\nWrite the following C code and save the file as myfirstprogram.c (File > Save File as):"
          },
          {
            'attachment': 'assets/C/ss2.png',
            'body':
                "\n\nDon't worry if you don't understand the code above - we will discuss it in detail in later chapters.\n\nFor now, focus on how to run the code."
                    "\n\nIn Codeblocks, it should look like this:"
          },
          {
            'attachment': 'assets/C/ss3.png',
            'body':
                "Then, go to Build > Build and Run to run (execute) the program. The result will look something to this:"
          },
          {
            'body':
                "Congratulations! You have now written and executed your first C program."
          },
        ],
      },
      2: {
        'topic': '2.     Syntax',
        'subTopic': [
          {
            'heading': 'Syntax',
            'attachment': 'assets/C/ss4.png',
            'body':
                "You have already seen the following code a couple of times in the first chapters. Let's break it down to understand it better:"
          },
          {
            'body': "Line 1: #include <stdio.h> is a header file library that lets us work with input and output functions, such as printf() (used in line 4). Header files add functionality to C programs."
                "\n\nLine 2: A blank line. C ignores white space. But we use it to make the code more readable."
                "\n\nLine 3: Another thing that always appear in a C program is main(). This is called a function. Any code inside its curly brackets {} will be executed."
                "\n\nLine 4: printf() is a function used to output/print text to the screen. In our example, it will output Hello World!."
                "\n\nNote that: Every C statement ends with a semicolon ;"
                "\nRemember: The compiler ignores white spaces. However, multiple lines makes the code more readable."
                "\n\nLine 5: return 0 ends the main() function."
                "\n\nLine 6: Do not forget to add the closing curly bracket } to actually end the main function."
          }
        ]
      },
      3: {
        'topic': '3.     Statements',
        'subTopic': [
          {
            'heading': 'Statement',
            'body': "A computer program is a list of instructions to be executed by a computer."
                "\n\nIn a programming language, these programming instructions are called statements."
                "\n\nThe following statement instructs the compiler to print the text Hello World to the screen:"
          },
          {
            'heading': 'Many Statements',
            'attachment': 'assets/C/ss6.png',
            'body': "Most C programs contain many statements."
                "\n\nThe statements are executed, one by one, in the same order as they are written:"
          },
          {
            'heading': 'Example explained',
            'body': "From the example above, we have three statements:"
                "\n\nThe first statement is executed first (print Hello World! to the screen)."
                "\n\nThen the second statement is executed (print Have a good day! to the screen)."
                "\n\nAnd at last, the third statement is executed (end the C program successfully)."
          }
        ]
      },
      4: {
        'topic': '4.     Output (Print Text)',
        'subTopic': [
          {
            'heading': '(Print Text)',
            'attachment': 'assets/C/ss4.png',
            'body':
                "To output values or print text in C, you can use the printf() function:"
          },
          {
            'heading': 'Double Quotes',
            'attachment': 'assets/C/ss7.png',
            'body':
                "To output values or print text in C, you can use the printf() function:"
          },
          {
            'heading': 'Many printf Functions',
            'attachment': 'assets/C/ss8.png',
            'body':
                "You can use as many printf() functions as you want. However, note that it does not insert a new line at the end of the output:"
          }
        ]
      },
      5: {
        'topic': '    4.1     New Lines',
        'subTopic': [
          {
            'heading': 'New Lines',
            'attachment': 'assets/C/ss9.png',
            'body': "To insert a new line, you can use the '\\n'  character:"
          },
          {
            'attachment': 'assets/C/ss10.png',
            'body':
                "You can also output multiple lines with a single printf() function. However, this could make the code harder to read:"
          },
          {
            'attachment': 'assets/C/ss11.png',
            'body':
                "Tip: Two '\\n' characters after each other will create a blank line:"
          }
        ]
      },
      6: {
        'topic': '5.     Comments',
        'subTopic': [
          {
            'heading': 'Comments in C',
            'body':
                "Comments can be used to explain code, and to make it more readable. It can also be used to prevent execution when testing alternative code."
                    "\n\nComments can be singled-lined or multi-lined."
          },
          {
            'heading': 'Single-line Comments',
            'attachment': 'assets/C/ss12.png',
            'body': "Single-line comments start with two forward slashes (//)."
                "\n\nAny text between // and the end of the line is ignored by the compiler (will not be executed)."
          },
          {
            'attachment': 'assets/C/ss13.png',
          },
          {
            'heading': 'C Multi-line Comments',
            'attachment': 'assets/C/ss13.png',
            'body': "Multi-line comments start with /* and ends with */."
                "\n\nAny text between /* and */ will be ignored by the compiler:"
          }
        ]
      },
      7: {
        'topic': '6.     Variables',
        'subTopic': [
          {
            'heading': 'Create Variables',
            'body': "Variables are containers for storing data values, like numbers and characters."
                "\n\nIn C, there are different types of variables (defined with different keywords), for example:"
                "\n\n • int - stores integers (whole numbers), without decimals, such as 123 or -123"
                "\n\n • float - stores floating point numbers, with decimals, such as 19.99 or -19.99"
                "\n\n • char - stores single characters, such as 'a' or 'B'. Characters are surrounded by single quote"
          },
          {
            'heading': 'Declaring (Creating) Variables',
            'attachment': 'assets/C/ss15.png',
            'body':
                "To create a variable, specify the type and assign it a value:"
          },
          {
            'attachment': 'assets/C/ss16.png',
            'body': "Where type is one of C types (such as int), and variableName is the name of the variable (such as x or myName). The equal sign is used to assign a value to the variable."
                "\n\nSo, to create a variable that should store a number, look at the following example:"
          },
          {
            'attachment': 'assets/C/ss16.png',
            'body':
                "You can also declare a variable without assigning the value, and assign the value later:"
          },
          {
            'heading': 'Output Variables',
            'attachment': 'assets/C/ss1.png',
            'body':
                "You learned from the output chapter that you can output values/print text with the printf() function:"
          },
          {
            'body':
                "In many other programming languages (like Python, Java, and C++), you would normally use a print function to display the value of a variable. However, this is not possible in C:"
          }
        ]
      },
      8: {
        'topic': '    6.1     Format Specifiers',
        'subTopic': [
          {
            'heading': 'Format Specifiers',
            'attachment': 'assets/C/ss19.png',
            'body': "Format specifiers are used together with the printf() function to tell the compiler what type of data the variable is storing. It is basically a placeholder for the variable value."
                "\n\nA format specifier starts with a percentage sign %, followed by a character."
                "\n\nFor example, to output the value of an int variable, use the format specifier %d surrounded by double quotes ("
                "), inside the printf() function:"
          },
          {
            'attachment': 'assets/C/ss20.png',
            'body': "To print other types, use %c for char and %f for float:"
          },
          {
            'attachment': 'assets/C/ss21.png',
            'body':
                "To combine both text and a variable, separate them with a comma inside the printf() function:"
          },
          {
            'attachment': 'assets/C/ss22.png',
            'body':
                "To print different types in a single printf() function, you can use the following: "
          }
        ]
      },
      9: {
        'topic': '    6.2     Change Value',
        'subTopic': [
          {
            'heading': 'Change Variable Values',
            'attachment': 'assets/C/ss23.png',
            'body':
                "If you assign a new value to an existing variable, it will overwrite the previous value:"
          },
          {
            'attachment': 'assets/C/ss24.png',
            'body': "You can also assign the value of one variable to another:"
          },
          {
            'attachment': 'assets/C/ss25.png',
            'body': "Or copy values to empty variables:"
          },
          {
            'heading': 'Add Variables Together',
            'attachment': 'assets/C/ss26.png',
            'body':
                "To add a variable to another variable, you can use the + operator:"
          }
        ]
      },
      10: {
        'topic': '    6.3     Multiple Variables',
        'subTopic': [
          {
            'heading': 'Declare Multiple Variables',
            'attachment': 'assets/C/ss27.png',
            'body':
                "To declare more than one variable of the same type, use a comma-separated list:"
          },
          {
            'attachment': 'assets/C/s28.png',
            'body':
                "You can also assign the same value to multiple variables of the same type:"
          }
        ]
      },
      11: {
        'topic': '    6.4     Variable Names (Identifiers)',
        'subTopic': [
          {
            'heading': 'Variable Names',
            'attachment': 'assets/C/s29.png',
            'body': "All C variables must be identified with unique names."
                "\n\nThese unique names are called identifiers."
                "\n\nIdentifiers can be short names (like x and y) or more descriptive names (age, sum, totalVolume)."
                "\n\nNote: It is recommended to use descriptive names in order to create understandable and maintainable code:"
          },
          {
            'body': "The general rules for naming variables are: "
                "\n\n• Names can contain letters, digits and underscores"
                "\n\n• Names must begin with a letter or an underscore (_)"
                "\n\n• Names are case-sensitive (myVar and myvar are different variables)"
                "\n\n• Names cannot contain whitespaces or special characters like !, #, %, etc."
                "\n\n• Reserved words (such as int) cannot be used as names"
          }
        ]
      },
      12: {
        'topic': '    6.5     Real-Life Example',
        'subTopic': [
          {
            'heading': 'Real-Life Example',
            'attachment': 'assets/C/s30.png',
            'body': "Often in our examples, we simplify variable names to match their data type (myInt or myNum for int types, myChar for char types, and so on). This is done to avoid confusion."
                "\n\nHowever, if you want a real-life example of how variables can be used, take a look at the following, where we have made a program that stores different data of a college student:"
          },
          {
            'heading': '\n\nCalculate the Area of a Rectangle',
            'attachment': 'assets/C/s31.png',
            'body':
                "In this real-life example, we create a program to calculate the area of a rectangle (by multiplying the length and width):"
          }
        ]
      },
      13: {
        'topic': '7.     Data Types',
        'subTopic': [
          {
            'heading': 'Data Types',
            'attachment': 'assets/C/s32.png',
            'body':
                "As explained in the Variables chapter, a variable in C must be a specified data type, and you must use a format specifier inside the printf() function to display it:"
          },
          {
            'heading': 'Basic Data Types',
            'attachment': 'assets/C/s33.png',
            'body':
                "The data type specifies the size and type of information the variable will store."
                    "In this tutorial, we will focus on the most basic ones:"
          },
          {
            'heading': 'Basic Format Specifiers',
            'attachment': 'assets/C/s34.png',
            'body':
                "There are different format specifiers for each data type. Here are some of them:"
          }
        ]
      },
      14: {
        'topic': '    7.1     Character',
        'subTopic': [
          {
            'heading': 'The char Type',
            'attachment': 'assets/C/s35.png',
            'body': "The char data type is used to store a single character."
                "\n\nThe character must be surrounded by single quotes, like 'A' or 'c', and we use the %c format specifier to print it:"
          },
          {
            'attachment': 'assets/C/s36.png',
            'body':
                "Alternatively, if you are familiar with ASCII, you can use ASCII values to display certain characters. Note that these values are not surrounded by quotes (''), as they are numbers:"
          },
          {
            'heading': '\n\nNotes on Characters',
            'attachment': 'assets/C/s37.png',
            'body': "If you try to store more than a single character, it will only print the last character:"
                "\n\nNote: Don't use the char type for storing multiple characters, as it may produce errors."
          },
          {
            'attachment': 'assets/C/s38.png',
            'body':
                "To store multiple characters (or whole words), use strings (which you will learn more about in a later chapter):"
          }
        ]
      },
      15: {
        'topic': '    7.2     Numbers',
        'subTopic': [
          {
            'heading': 'Numeric Data Types',
            'attachment': 'assets/C/s39.png',
            'body':
                "Use int when you need to store a whole number without decimals, like 35 or 1000, and float or double when you need a floating point number (with decimals), like 9.99 or 3.14515."
          },
          {
            'heading': '\n\nScientific Numbers',
            'attachment': 'assets/C/s40.png',
            'body':
                "A floating point number can also be a scientific number with an 'e' to indicate the power of 10:"
          }
        ]
      },
      16: {
        'topic': '    7.3     Decimal Precision',
        'subTopic': [
          {
            'heading': 'Set Decimal Precision',
            'attachment': 'assets/C/s41.png',
            'body':
                "You have probably already noticed that if you print a floating point number, the output will show many digits after the decimal point:"
          },
          {
            'attachment': 'assets/C/s42.png',
            'body':
                "If you want to remove the extra zeros (set decimal precision), you can use a dot (.) followed by a number that specifies how many digits that should be shown after the decimal point:"
          }
        ]
      },
      17: {
        'topic': '    7.4     Memory Size',
        'subTopic': [
          {
            'heading': 'Get the Memory Size',
            'attachment': 'assets/C/s43.png',
            'body':
                "We introduced in the data types chapter that the memory size of a variable varies depending on the type:"
          },
          {
            'attachment': 'assets/C/s44.png',
            'body': "The memory size refers to how much space a type occupies in the computer's memory."
                "\n\nTo actually get the size (in bytes) of a data type or variable, use the sizeof operator:"
          }
        ]
      },
      18: {
        'topic': '    7.5     Data Types Examples',
        'subTopic': [
          {
            'heading': '\n\nReal-Life Example',
            'attachment': 'assets/C/s45.png',
            'body':
                "Here's a real-life example of using different data types, to calculate and output the total cost of a number of items:"
          },
        ]
      },
      19: {
        'topic': '    7.6     Type Conversion',
        'subTopic': [
          {
            'heading': 'Type Conversion',
            'attachment': 'assets/C/s46.png',
            'body': "Sometimes, you have to convert the value of one data type to another type. This is known as type conversion."
                "\n\nFor example, if you try to divide two integers, 5 by 2, you would expect the result to be 2.5. But since we are working with integers (and not floating-point values), the following example will just output 2:"
          },
          {
            'body':
                "To get the right result, you need to know how type conversion works."
                    "\n\nThere are two types of conversion in C:"
                    "\n\n: Implicit Conversion (automatically)"
                    "\n\n: Explicit Conversion (manually)"
          },
          {
            'heading': 'Implicit Conversion',
            'attachment': 'assets/C/s47.png',
            'body':
                "Implicit conversion is done automatically by the compiler when you assign a value of one type to another."
                    "\n\nFor example, if you assign an int value to a float type:"
          },
          {
            'attachment': 'assets/C/s48.png',
            'body':
                "As you can see, the compiler automatically converts the int value 9 to a float value of 9.000000.\n\n This can be risky, as you might lose control over specific values in certain situations.\n\n Especially if it was the other way around - the following example automatically converts the float value 9.99 to an int value of 9:"
          },
          {
            'attachment': 'assets/C/s49.png',
            'body':
                "What happened to .99? We might want that data in our program! So be careful. It is important that you know how the compiler work in these situations, to avoid unexpected results.\n\nAs another example, if you divide two integers: 5 by 2, you know that the sum is 2.5. And as you know from the beginning of this page, if you store the sum as an integer, the result will only display the number 2. Therefore, it would be better to store the sum as a float or a double, right?"
          },
          {
            'body':
                "Why is the result 2.00000 and not 2.5? Well, it is because 5 and 2 are still integers in the division. In this case, you need to manually convert the integer values to floating-point values. (see below)."
          },
          {
            'heading': 'Explicit Conversion',
            'attachment': 'assets/C/s50.png',
            'body':
                "Explicit conversion is done manually by placing the type in parentheses () in front of the value.\n\nConsidering our problem from the example above, we can now get the right result:"
          },
          {
            'attachment': 'assets/C/s51.png',
            'body': "You can also place the type in front of a variable:"
          },
          {
            'attachment': 'assets/C/s52.png',
            'body':
                "And since you learned about 'decimal precision' in the previous chapter, you could make the output even cleaner by removing the extra zeros (if you like):"
          },
          {
            'heading': 'Real-Life Example',
            'attachment': 'assets/C/s53.png',
            'body':
                "Here's a real-life example of data types and type conversion where we create a program to calculate the percentage of a user's score in relation to the maximum score in a game:"
          }
        ]
      },
      20: {
        'topic': '8.     Constants',
        'subTopic': [
          {
            'heading': 'Constants',
            'attachment': 'assets/C/s54.png',
            'body':
                "If you don't want others (or yourself) to change existing variable values, you can use the const keyword.\n\nThis will declare the variable as 'constant', which means unchangeable and read-only:"
          },
          {
            'attachment': 'assets/C/s55.png',
            'body':
                "You should always declare the variable as constant when you have values that are unlikely to change:"
          },
          {
            'heading': '\n\nNotes On Constants',
            'attachment': 'assets/C/s56.png',
            'body':
                "When you declare a constant variable, it must be assigned with a value:"
          },
          {
            'heading': '\n\nGood Practice',
            'body':
                "Another thing about constant variables, is that it is considered good practice to declare them with uppercase.\n\nIt is not required, but useful for code readability and common for C programmers:\n\n   const int BIRTHYEAR = 1980;"
          }
        ]
      },
      21: {
        'topic': '9.     Operators',
        'subTopic': [
          {
            'heading': 'Operators',
            'attachment': 'assets/C/s57.png',
            'body':
                "Operators are used to perform operations on variables and values.\n\n In the example below, we use the + operator to add together two values:"
          },
          {
            'attachment': 'assets/C/s58.png',
            'body':
                "Although the + operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:"
          },
          {
            'body': "C divides the operators into the following groups:"
                "\n\n: Arithmetic operators"
                "\n\n: Assignment operators"
                "\n\n: Comparison operators"
                "\n\n: Logical operators"
                "\n\n: Bitwise operators"
          },
          {
            'heading': 'Arithmetic Operators',
            'attachment': 'assets/C/s59.png',
            'body':
                "Arithmetic operators are used to perform common mathematical operations."
          },
          {
            'heading': '\n\nAssignment Operators',
            'attachment': 'assets/C/s60.png',
            'body':
                "Assignment operators are used to assign values to variables.\n\nIn the example below, we use the assignment operator (=) to assign the value 10 to a variable called x:"
          },
          {
            'attachment': 'assets/C/s61.png',
            'body':
                "The addition assignment operator (+=) adds a value to a variable:"
          },
          {
            'attachment': 'assets/C/s62.png',
            'body': "A list of all assignment operators:"
          },
          {
            'heading': '\n\nComparison Operators',
            'attachment': 'assets/C/s63.png',
            'body':
                "Comparison operators are used to compare two values (or variables). This is important in programming, because it helps us to find answers and make decisions.\n\nThe return value of a comparison is either 1 or 0, which means true (1) or false (0). These values are known as Boolean values, and you will learn more about them in the Booleans and If..Else chapter.\n\nIn the following example, we use the greater than operator (>) to find out if 5 is greater than 3:"
          },
          {
            'attachment': 'assets/C/s64.png',
            'body': "A list of all comparison operators:"
          },
          {
            'heading': '\n\nLogical Operators',
            'attachment': 'assets/C/s65.png',
            'body':
                "You can also test for true or false values with logical operators.\n\nLogical operators are used to determine the logic between variables or values:"
          }
        ]
      },
      22: {
        'topic': '10.     Booleans',
        'subTopic': [
          {
            'heading': 'Booleans',
            'body': "Very often, in programming, you will need a data type that can only have one of two values, like:"
                "\n\n         •YES / NO"
                "\n\n         •ON / OFF"
                "\n\n         •TRUE / FALSE"
                "\n\nFor this, C has a bool data type, which is known as booleans."
                "\n\nBooleans represent values that are either true or false."
          },
          {
            'heading': 'Boolean Variables',
            'attachment': 'assets/C/s66.png',
            'body': "In C, the bool type is not a built-in data type, like int or char."
                "\n\nIt was introduced in C99, and you must import the following header file to use it:"
          },
          {
            'attachment': 'assets/C/s67.png',
            'body':
                "A boolean variable is declared with the bool keyword and can only take the values true or false:"
          },
          {
            'attachment': 'assets/C/s68.png',
            'body': "Before trying to print the boolean variables, you should know that boolean values are returned as integers:"
                "\n\n•1 (or any other number that is not 0) represents true"
                "\n\n•0 represents false"
                "\n\nTherefore, you must use the %d format specifier to print a boolean value:"
          },
          {
            'body':
                "However, it is more common to return a boolean value by comparing values and variables."
          },
          {
            'heading': 'Comparing Values and Variables',
            'attachment': 'assets/C/s69.png',
            'body': "Comparing values are useful in programming, because it helps us to find answers and make decisions."
                "\n\nFor example, you can use a comparison operator, such as the greater than (>) operator, to compare two values:"
          },
          {
            'attachment': 'assets/C/s70.png',
            'body':
                "From the example above, you can see that the return value is a boolean value (1)."
                    "\n\nYou can also compare two variables:"
          },
          {
            'attachment': 'assets/C/s71.png',
            'body':
                "In the example below, we use the equal to (==) operator to compare different values:"
          },
          {
            'attachment': 'assets/C/s72.png',
            'body':
                "You are not limited to only compare numbers. You can also compare boolean variables, or even special structures, like arrays (which you will learn more about in a later chapter):"
          }
        ]
      },
      23: {
        'topic': '    10.1     Boolean Examples ',
        'subTopic': [
          {
            'heading': 'Real Life Example',
            'attachment': 'assets/C/s73.png',
            'body':
                "Let's think of a 'real life example' where we need to find out if a person is old enough to vote.\n\nIn the example below, we use the >= comparison operator to find out if the age (25) is greater than OR equal to the voting age limit, which is set to 18:"
          },
          {
            'attachment': 'assets/C/s74.png',
            'body':
                "Cool, right? An even better approach (since we are on a roll now), would be to wrap the code above in an if...else statement, so we can perform different actions depending on the result:"
          }
        ]
      },
      24: {
        'topic': '11.     If ... Else',
        'subTopic': [
          {
            'heading': 'Conditions and If Statements',
            'body': "You have already learned that C supports the usual logical conditions from mathematics:"
                "\n\nYou have already learned that C supports the usual logical conditions from mathematics:"
                "\n\n•Less than: a < b"
                "\n•Less than or equal to: a <= b"
                "\n•Greater than or equal to: a >= b"
                "\n•Less than: a < b"
                "\n•Not Equal to: a != b"
                "\n\nYou can use these conditions to perform different actions for different decisions."
                "\n\nC has the following conditional statements:"
                "\n\n•  Use if to specify a block of code to be executed, if a specified condition is true"
                "\n\n•  Use else to specify a block of code to be executed, if the same condition is false"
                "\n\n•  Use else if to specify a new condition to test, if the first condition is false"
                "\n\n•  Use switch to specify many alternative blocks of code to be executed"
          },
          {
            'heading': 'The if Statement',
            'attachment': 'assets/C/s76.png',
            'body':
                "Use the if statement to specify a block of code to be executed if a condition is true."
          },
          {
            'attachment': 'assets/C/s77.png',
            'body': "Note that if is in lowercase letters. Uppercase letters (If or IF) will generate an error."
                "\n\nIn the example below, we test two values to find out if 20 is greater than 18. If the condition is true, print some text:"
          },
          {
            'attachment': 'assets/C/s78.png',
            'body': "\n\nWe can also test variables:"
          },
          {
            'body': "\n\nExample explained"
                "\n\nIn the example above we use two variables, x and y, to test whether x is greater than y (using the > operator). As x is 20, and y is 18, and we know that 20 is greater than 18, we print to the screen that 'x is greater than y'."
          }
        ]
      },
      25: {
        'topic': '    11.1     Else',
        'subTopic': [
          {
            'heading': 'The else Statement',
            'attachment': 'assets/C/s79.png',
            'body':
                "Use the else statement to specify a block of code to be executed if the condition is false."
          },
          {
            'attachment': 'assets/C/s80.png',
          }
        ]
      },
      26: {
        'topic': '    11.2     Else If',
        'subTopic': [
          {
            'heading': 'The else if Statement',
            'attachment': 'assets/C/s81.png',
            'body':
                "Use the else if statement to specify a new condition if the first condition is false."
          },
          {
            'body': "Example explained"
                "\n\nIn the example above, time (22) is greater than 10, so the first condition is false. The next condition, in the else if statement, is also false, so we move on to the else condition since condition1 and condition2 is both false - and print to the screen 'Good evening'."
                "\n\nHowever, if the time was 14, our program would print 'G'ood day'."
          }
        ]
      },
      27: {
        'topic': '    11.3     Short Hand If Else',
        'subTopic': [
          {
            'heading': 'Short Hand If...Else (Ternary Operator)',
            'attachment': 'assets/C/s82.png',
            'body':
                "There is also a short-hand if else, which is known as the ternary operator because it consists of three operands. It can be used to replace multiple lines of code with a single line. It is often used to replace simple if else statements:"
          },
          {'attachment': 'assets/C/s83.png', 'body': "You can simply write:"},
          {
            'body':
                "It is completely up to you if you want to use the traditional if...else statement or the ternary operator."
          }
        ]
      },
      28: {
        'topic': '    11.4     If ... Else Examples',
        'subTopic': [
          {
            'heading': 'Real-Life Examples',
            'attachment': 'assets/C/s84.png',
            'body':
                "This example shows how you can use if..else to 'open a door' if the user enters the correct code:"
          },
          {
            'attachment': 'assets/C/s85.png',
            'body':
                "This example shows how you can use if..else to find out if a number is positive or negative:"
          },
          {
            'attachment': 'assets/C/s86.png',
            'body': "Find out if a person is old enough to vote:"
          },
          {
            'attachment': 'assets/C/s87.png',
            'body': "Find out if a number is even or odd:"
          }
        ]
      },
      29: {
        'topic': '12.     Switch',
        'subTopic': [
          {
            'heading': 'Switch Statement',
            'attachment': 'assets/C/s88.png',
            'body':
                "Instead of writing many if..else statements, you can use the switch statement.\n\nThe switch statement selects one of many code blocks to be executed:"
          },
          {
            'heading': '\n\n Switch Statement',
            'attachment': 'assets/C/s89.png',
            'body': "  : The switch expression is evaluated once"
                "\n\n   : The value of the expression is compared with the values of each case"
                "\n\n   : If there is a match, the associated block of code is executed"
                "\n\n   : The break statement breaks out of the switch block and stops the execution"
                "\n\n   : The default statement is optional, and specifies some code to run if there is no case match"
                "\n\nThe example below uses the weekday number to calculate the weekday name:"
          },
          {
            'heading': '\n\nThe break Keyword',
            'body': "\nWhen C reaches a break keyword, it breaks out of the switch block."
                "\n\nThis will stop the execution of more code and case testing inside the block."
                "\n\nWhen a match is found, and the job is done, it's time for a break. There is no need for more testing."
                "\n\nA break can save a lot of execution time because it 'ignores' the execution of all the rest of the code in the switch block."
          },
          {
            'heading': 'The default Keyword',
            'attachment': 'assets/C/s90.png',
            'body':
                "The default keyword specifies some code to run if there is no case match:"
          },
          {
            'body':
                "Note: The default keyword must be used as the last statement in the switch, and it does not need a break."
          }
        ]
      },
      30: {
        'topic': '12.     While Loop',
        'subTopic': [
          {
            'heading': 'Loops',
            'body':
                "Loops can execute a block of code as long as a specified condition is reached.\n\nLoops are handy because they save time, reduce errors, and they make code more readable."
          },
          {
            'heading': 'While Loop',
            'attachment': 'assets/C/s91.png',
            'body':
                "The while loop loops through a block of code as long as a specified condition is true:"
          },
          {
            'body':
                "Note: Do not forget to increase the variable used in the condition (i++), otherwise the loop will never end!"
          }
        ]
      },
      31: {
        'topic': '    12.1     Do/While Loop',
        'subTopic': [
          {
            'heading': 'The Do/While Loop',
            'attachment': 'assets/C/s92.png',
            'body':
                "The do/while loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true."
          },
          {
            'body':
                "Do not forget to increase the variable used in the condition, otherwise the loop will never end!"
          }
        ]
      },
      32: {
        'topic': '    12.2     While Loop Examples',
        'subTopic': [
          {
            'heading': 'Real-Life Examples',
            'attachment': 'assets/C/s93.png',
            'body':
                "To demonstrate a practical example of the while loop, we have created a simple 'countdown' program:"
          },
          {
            'body':
                "If the loop passes the values ranging from 1 to 5, it prints 'No Yatzy'. Whenever it passes the value 6, it prints 'Yatzy!'"
          }
        ]
      },
      33: {
        'topic': '13.     For Loop',
        'subTopic': [
          {
            'heading': 'For Loop',
            'attachment': 'assets/C/s94.png',
            'body':
                "When you know exactly how many times you want to loop through a block of code, use the for loop instead of a while loop:"
          },
          {
            'attachment': 'assets/C/s95.png',
            'body': "Expression 1 is executed (one time) before the execution of the code block."
                "\n\nExpression 2 defines the condition for executing the code block."
                "\n\nExpression 3 is executed (every time) after the code block has been executed."
                "\n\nThe example below will print the numbers 0 to 4:"
          },
          {
            'body': "Example explained"
                "\n\nExpression 1 sets a variable before the loop starts (int i = 0)."
                "\n\nExpression 2 defines the condition for the loop to run (i must be less than 5). If the condition is true, the loop will start over again, if it is false, the loop will end."
                "\n\nExpression 3 increases a value (i++) each time the code block in the loop has been executed."
          }
        ]
      },
      34: {
        'topic': '    13.1     Nested Loops',
        'subTopic': [
          {
            'heading': 'Nested Loops',
            'attachment': 'assets/C/s96.png',
            'body':
                "It is also possible to place a loop inside another loop. This is called a nested loop.\n\nThe 'inner loop' will be executed one time for each iteration of the 'outer loop':"
          }
        ]
      },
      35: {
        'topic': '    13.2     For Loop Examples',
        'subTopic': [
          {
            'heading': 'Real-Life Examples',
            'attachment': 'assets/C/s97.png',
            'body':
                "To demonstrate a practical example of the for loop, let's create a program that counts to 100 by tens:"
          },
          {
            'attachment': 'assets/C/s98.png',
            'body':
                "In this examlpe, we create a program that only print even values between 0 and 10:"
          },
          {
            'attachment': 'assets/C/s99.png',
            'body':
                "And in this example, we create a program that prints the multiplication table for a specified number:"
          }
        ]
      },
      36: {
        'topic': '14.     Break and Continue',
        'subTopic': [
          {
            'heading': 'Break',
            'attachment': 'assets/C/s100.png',
            'body': "You have already seen the break statement used in an earlier chapter of this tutorial. It was used to 'jump out' of a switch statement."
                "\n\nThe break statement can also be used to jump out of a loop.\n\nThis example jumps out of the for loop when i is equal to 4:"
          },
          {
            'heading': '\n\nContinue',
            'attachment': 'assets/C/s101.png',
            'body':
                "The continue statement breaks one iteration (in the loop), if a specified condition occurs, and continues with the next iteration in the loop."
                    "\n\nThis example skips the value of 4:"
          },
          {
            'heading': '\n\nBreak and Continue in While Loop',
            'attachment': 'assets/C/s102.png',
            'body': "You can also use break and continue in while loops:"
          },
          {
            'attachment': 'assets/C/s103.png',
          }
        ]
      },
      37: {
        'topic': '15.     Arrays',
        'subTopic': [
          {
            'heading': 'Arrays',
            'attachment': 'assets/C/s104.png',
            'body':
                "Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value.\n\nTo create an array, define the data type (like int) and specify the name of the array followed by square brackets [].\n\nTo insert values to it, use a comma-separated list, inside curly braces:"
          },
          {
            'body':
                "We have now created a variable that holds an array of four integers."
          },
          {
            'heading': 'Access the Elements of an Array',
            'attachment': 'assets/C/s105.png',
            'body':
                "To access an array element, refer to its index number.\n\nArray indexes start with 0: [0] is the first element. [1] is the second element, etc.\n\nThis statement accesses the value of the first element [0] in myNumbers:"
          },
          {
            'heading': '\n\nChange an Array Element',
            'attachment': 'assets/C/s106.png',
            'body':
                "To change the value of a specific element, refer to the index number:"
          },
          {
            'heading': '\n\nLoop Through an Array',
            'attachment': 'assets/C/s107.png',
            'body':
                "You can loop through the array elements with the for loop.\n\nThe following example outputs all elements in the myNumbers array:"
          },
          {
            'heading': '\n\nSet Array Size',
            'attachment': 'assets/C/s108.png',
            'body':
                "Another common way to create arrays, is to specify the size of the array, and add elements later:"
          },
          {
            'body':
                "Using this method, you should know the number of array elements in advance, in order for the program to store enough memory.\n\nYou are not able to change the size of the array after creation."
          }
        ]
      },
      38: {
        'topic': '    15.1     Array Size',
        'subTopic': [
          {
            'heading': 'Get Array Size or Length',
            'attachment': 'assets/C/s112.png',
            'body':
                "To get the size of an array, you can use the sizeof operator:"
          },
          {
            'attachment': 'assets/C/s109.png',
            'body': "Why did the result show 20 instead of 5, when the array contains 5 elements?"
                "\n\n- It is because the sizeof operator returns the size of a type in bytes."
                "\n\nYou learned from the Data Types chapter that an int type is usually 4 bytes, so from the example above, 4 x 5 (4 bytes x 5 elements) = 20 bytes."
                "\n\nKnowing the memory size of an array is great when you are working with larger programs that require good memory management."
                "\n\nBut when you just want to find out how many elements an array has, you can use the following formula (which divides the size of the array by the size of one array element):"
          },
          {
            'heading': '\n\nMaking Better Loops',
            'attachment': 'assets/C/s110.png',
            'body':
                "In the array loops section in the previous chapter, we wrote the size of the array in the loop condition (i < 4). This is not ideal, since it will only work for arrays of a specified size.\n\nHowever, by using the sizeof formula from the example above, we can now make loops that work for arrays of any size, which is more sustainable.\n\nInstead of writing:"
          },
          {'attachment': 'assets/C/s111.png', 'body': "It is better to write:"}
        ]
      },
      39: {
        'topic': '    15.2     Arrays-Real-Life Examples',
        'subTopic': [
          {
            'heading': 'Real-Life Example',
            'attachment': 'assets/C/s113.png',
            'body':
                "To demonstrate a practical example of using arrays, let's create a program that calculates the average of different ages:"
          },
          {
            'attachment': 'assets/C/s114.png',
            'body':
                "And in this example, we create a program that finds the lowest age among different ages:"
          }
        ]
      },
      40: {
        'topic': '    15.3     Multidimensional Arrays',
        'subTopic': [
          {
            'heading': 'Multidimensional Arrays',
            'body': "In the previous chapter, you learned about arrays, which is also known as single dimension arrays. These are great, and something you will use a lot while programming in C. However, if you want to store data as a tabular form, like a table with rows and columns, you need to get familiar with multidimensional arrays."
                "\n\nA multidimensional array is basically an array of arrays."
                "\n\nArrays can have any number of dimensions. In this chapter, we will introduce the most common; two-dimensional arrays (2D)."
          },
          {
            'heading': 'Two-Dimensional Arrays',
            'attachment': 'assets/C/s115.png',
            'body':
                "A 2D array is also known as a matrix (a table of rows and columns).\n\nTo create a 2D array of integers, take a look at the following example:"
          },
          {
            'attachment': 'assets/C/s116.png',
            'body':
                "The first dimension represents the number of rows [2], while the second dimension represents the number of columns [3]. The values are placed in row-order, and can be visualized like this:"
          },
          {
            'heading': '\n\nAccess the Elements of a 2D Array',
            'attachment': 'assets/C/s117.png',
            'body': "To access an element of a two-dimensional array, you must specify the index number of both the row and column."
                "\n\nThis statement accesses the value of the element in the first row (0) and third column (2) of the matrix array."
          },
          {
            'body':
                "Remember that: Array indexes start with 0: [0] is the first element. [1] is the second element, etc."
          },
          {
            'heading': 'Change Elements in a 2D Array',
            'attachment': 'assets/C/s118.png',
            'body': "To change the value of an element, refer to the index number of the element in each of the dimensions:"
                "\n\nThe following example will change the value of the element in the first row (0) and first column (0):"
          },
          {
            'heading': '\n\nLoop Through a 2D Array',
            'attachment': 'assets/C/s119.png',
            'body': "To loop through a multi-dimensional array, you need one loop for each of the array's dimensions."
                "\n\nThe following example outputs all elements in the matrix array:"
          }
        ]
      },
      41: {
        'topic': '16.     Strings',
        'subTopic': [
          {
            'heading': 'Strings',
            'attachment': 'assets/C/s120.png',
            'body': "Strings are used for storing text/characters.\n\nFor example, 'Hello World' is a string of characters."
                "\n\nUnlike many other programming languages, C does not have a String type to easily create string variables. Instead, you must use the char type and create an array of characters to make a string in C:"
          },
          {
            'attachment': 'assets/C/s121.png',
            'body': "Strings Note that you have to use double quotes ("
                ")."
                "\n\nTo output the string, you can use the printf() function together with the format specifier %s to tell C that we are now working with strings:"
          },
          {
            'heading': '\n\nAccess Strings',
            'attachment': 'assets/C/s122.png',
            'body':
                "Since strings are actually arrays in C, you can access a string by referring to its index number inside square brackets [].\n\nThis example prints the first character (0) in greetings:"
          },
          {
            'body':
                "Note that we have to use the %c format specifier to print a single character."
          },
          {
            'heading': 'Modify Strings',
            'attachment': 'assets/C/s123.png',
            'body':
                "To change the value of a specific character in a string, refer to the index number, and use single quotes:"
          },
          {
            'heading': '\n\nLoop Through a String',
            'attachment': 'assets/C/s124.png',
            'body':
                "You can also loop through the characters of a string, using a for loop:"
          },
          {
            'attachment': 'assets/C/s125.png',
            'body':
                "And like we specified in the arrays chapter, you can also use the sizeof formula (instead of manually write the size of the array in the loop condition (i < 5)) to make the loop more sustainable:"
          },
          {
            'heading': '\n\nAnother Way Of Creating Strings',
            'attachment': 'assets/C/s126.png',
            'body': "In the examples above, we used a 'string literal' to create a string variable. This is the easiest way to create a string in C."
                "\n\nYou should also note that you can create a string with a set of characters. This example will produce the same result as the example in the beginning of this page:"
          },
          {
            'body':
                "Why do we include the \\0 character at the end? This is known as the 'null terminating character' and must be included when creating strings using this method. It tells C that this is the end of the string."
          },
          {
            'heading': 'Differences',
            'attachment': 'assets/C/s127.png',
            'body': "The difference between the two ways of creating strings, is that the first method is easier to write, and you do not have to include the \\0 character, as C will do it for you."
                "\n\nYou should note that the size of both arrays is the same: They both have 13 characters (space also counts as a character by the way), including the \\0 character:"
          },
          {
            'heading': '\n\nReal-Life Example',
            'attachment': 'assets/C/s128.png',
            'body': "Use strings to create a simple welcome message:"
          }
        ]
      },
      42: {
        'topic': '    16.2     Special Characters',
        'subTopic': [
          {
            'heading': 'Special Characters',
            'attachment': 'assets/C/s129.png',
            'body':
                "Because strings must be written within quotes, C will misunderstand this string, and generate an error:"
          },
          {
            'attachment': 'assets/C/s130.png',
            'body': "The solution to avoid this problem, is to use the backslash escape character."
                "\n\nThe backslash (\\) escape character turns special characters into string characters:"
          },
          {
            'attachment': 'assets/C/s131.png',
            'body': "The sequence \\''  inserts a double quote in a string:"
          },
          {
            'attachment': 'assets/C/s132.png',
            'body': "The sequence \\'  inserts a single quote in a string:"
          },
          {
            'attachment': 'assets/C/s133.png',
            'body': "The sequence \\\\  inserts a single backslash in a string:"
          },
          {
            'attachment': 'assets/C/s134.png',
            'body': "Other popular escape characters in C are:"
          }
        ]
      },
      43: {
        'topic': '    16.3     String Functions',
        'subTopic': [
          {
            'heading': 'String Functions',
            'attachment': 'assets/C/s135.png',
            'body': "C also has many useful string functions, which can be used to perform certain operations on strings."
                "\n\nTo use them, you must include the <string.h> header file in your program:"
          },
          {
            'heading': '\n\nString Length',
            'attachment': 'assets/C/s136.png',
            'body':
                "For example, to get the length of a string, you can use the strlen() function:"
          },
          {
            'attachment': 'assets/C/s137.png',
            'body':
                "In the Strings chapter, we used sizeof to get the size of a string/array. Note that sizeof and strlen behaves differently, as sizeof also includes the \\0 character when counting:"
          },
          {
            'attachment': 'assets/C/s138.png',
            'body':
                "It is also important that you know that sizeof will always return the memory size (in bytes), and not the actual string length:"
          },
          {
            'heading': '\n\nConcatenate Strings',
            'attachment': 'assets/C/s139.png',
            'body':
                "To concatenate (combine) two strings, you can use the strcat() function:"
          },
          {
            'body':
                "Note that the size of str1 should be large enough to store the result of the two strings combined (20 in our example)."
          },
          {
            'heading': '\n\nCopy Strings',
            'attachment': 'assets/C/s140.png',
            'body':
                "To copy the value of one string to another, you can use the strcpy() function:"
          },
          {
            'body':
                "Note that the size of str2 should be large enough to store the copied string (20 in our example)."
          },
          {
            'heading': '\n\nCompare Strings',
            'attachment': 'assets/C/s141.png',
            'body':
                "To compare two strings, you can use the strcmp() function.\n\nIt returns 0 if the two strings are equal, otherwise a value that is not 0:"
          }
        ]
      },
      44: {
        'topic': '17.     User Input',
        'subTopic': [
          {
            'heading': 'User Input',
            'attachment': 'assets/C/s142.png',
            'body':
                "You have already learned that printf() is used to output values in C.\n\nTo get user input, you can use the scanf() function:"
          },
          {
            'body':
                "The scanf() function takes two arguments: the format specifier of the variable (%d in the example above) and the reference operator (&myNum), which stores the memory address of the variable.\n\nTip: You will learn more about memory addresses and functions in the next chapter."
          },
          {
            'heading': 'Multiple Inputs',
            'attachment': 'assets/C/s143.png',
            'body':
                "The scanf() function also allow multiple inputs (an integer and a character in the following example):"
          },
          {
            'heading': '\n\nTake String Input',
            'attachment': 'assets/C/s144.png',
            'body': "You can also get a string entered by the user:"
          },
          {
            'attachment': 'assets/C/s145.png',
            'body': "Note: When working with strings in scanf(), you must specify the size of the string/array (we used a very high number, 30 in our example, but atleast then we are certain it will store enough characters for the first name), and you don't have to use the reference operator (&)."
                "\n\nHowever, the scanf() function has some limitations: it considers space (whitespace, tabs, etc) as a terminating character, which means that it can only display a single word (even if you type many words). For example:"
          },
          {
            'attachment': 'assets/C/s146.png',
            'body': "From the example above, you would expect the program to print 'John Doe', but it only prints 'John'."
                "\n\nThat's why, when working with strings, we often use the fgets() function to read a line of text. Note that you must include the following arguments: the name of the string variable, sizeof(string_name), and stdin:"
          },
          {
            'body':
                "Use the scanf() function to get a single word as input, and use fgets() for multiple words."
          }
        ]
      },
      45: {
        'topic': '18.     Memory Address',
        'subTopic': [
          {
            'heading': 'Memory Address',
            'attachment': 'assets/C/s147.png',
            'body': "When a variable is created in C, a memory address is assigned to the variable.,"
                "\n\nThe memory address is the location of where the variable is stored on the computer."
                "\n\nWhen we assign a value to the variable, it is stored in this memory address."
                "\n\nTo access it, use the reference operator (&), and the result represents where the variable is stored:"
          },
          {
            'body': "NOTE: The memory address is in hexadecimal form (0x..). You will probably not get the same result in your program, as this depends on where the variable is stored on your computer."
                "\n\nYou should also note that &myAge is often called a 'pointer'. A pointer basically stores the memory address of a variable as its value. To print pointer values, we use the %p format specifier."
                "\n\nYou will learn much more about pointers in the next chapter."
                "\n\n\n\n\nWhy is it useful to know the memory address?"
                "\n\nPointers are important in C, because they allow us to manipulate the data in the computer's memory - this can reduce the code and improve the performance."
                "\n\nPointers are one of the things that make C stand out from other programming languages, like Python and Java."
          }
        ]
      },
      46: {
        'topic': '19.     Pointers',
        'subTopic': [
          {
            'heading': 'Creating Pointers',
            'attachment': 'assets/C/s148.png',
            'body':
                "You learned from the previous chapter, that we can get the memory address of a variable with the reference operator &:"
          },
          {
            'attachment': 'assets/C/s149.png',
            'body':
                "A pointer is a variable that stores the memory address of another variable as its value.\n\nA pointer variable points to a data type (like int) of the same type, and is created with the * operator.\n\nThe address of the variable you are working with is assigned to the pointer:\n\n"
          },
          {
            'body': "Example explained"
                "\n\nCreate a pointer variable with the name ptr, that points to an int variable (myAge). Note that the type of the pointer has to match the type of the variable you're working with (int in our example)."
                "\n\nUse the & operator to store the memory address of the myAge variable, and assign it to the pointer."
                "\n\nNow, ptr holds the value of myAge's memory address."
          },
          {
            'heading': 'Dereference',
            'attachment': 'assets/C/s150.png',
            'body': "In the example above, we used the pointer variable to get the memory address of a variable (used together with the & reference operator)."
                "\n\nYou can also get the value of the variable the pointer points to, by using the * operator (the dereference operator):"
          }
        ]
      },
      47: {
        'topic': '    19.1     Pointers and Arrays',
        'subTopic': [
          {
            'heading': 'Pointers and Arrays',
            'attachment': 'assets/C/s151.png',
            'body':
                "You can also use pointers to access arrays.\n\nConsider the following array of integers:"
          },
          {
            'attachment': 'assets/C/s152.png',
            'body':
                "You learned from the arrays chapter that you can loop through the array elements with a for loop:"
          },
          {
            'attachment': 'assets/C/s153.png',
            'body':
                "Instead of printing the value of each array element, let's print the memory address of each array element:"
          },
          {
            'attachment': 'assets/C/s154.png',
            'body': "Note that the last number of each of the elements' memory address is different, with an addition of 4."
                "\n\nIt is because the size of an int type is typically 4 bytes, remember:"
          },
          {
            'attachment': 'assets/C/s155.png',
            'body':
                "So from the 'memory address example' above, you can see that the compiler reserves 4 bytes of memory for each array element, which means that the entire array takes up 16 bytes (4 * 4) of memory storage:"
          },
          {
            'heading': '\n\nHow Are Pointers Related to Arrays',
            'attachment': 'assets/C/s156.png',
            'body':
                "Ok, so what's the relationship between pointers and arrays? Well, in C, the name of an array, is actually a pointer to the first element of the array.\n\nConfused? Let's try to understand this better, and use our 'memory address example' above again.\n\nThe memory address of the first element is the same as the name of the array:"
          },
          {
            'attachment': 'assets/C/s157.png',
            'body':
                "This basically means that we can work with arrays through pointers!\n\nHow? Since myNumbers is a pointer to the first element in myNumbers, you can use the * operator to access it:"
          },
          {
            'attachment': 'assets/C/s158.png',
            'body':
                "To access the rest of the elements in myNumbers, you can increment the pointer/array (+1, +2, etc):"
          },
          {'attachment': 'assets/C/s159.png', 'body': "Or loop through it:"},
          {
            'attachment': 'assets/C/s160.png',
            'body':
                "It is also possible to change the value of array elements with pointers:"
          }
        ]
      }
    },
    Categories.intermediate: {
      0: {
        'topic': '1.     Functions',
        'subTopic': [
          {
            'heading': 'Functions',
            'body':
                "A function is a block of code which only runs when it is called.\n\nYou can pass data, known as parameters, into a function.\n\nFunctions are used to perform certain actions, and they are important for reusing code: Define the code once, and use it many times."
          },
          {
            'heading': 'Predefined Functions',
            'attachment': 'assets/C/s161.png',
            'body':
                "So it turns out you already know what a function is. You have been using it the whole time while studying this tutorial!.\n\nFor example, main() is a function, which is used to execute code, and printf() is a function; used to output/print text to the screen:"
          },
          {
            'heading': '\n\nCreate a Function',
            'attachment': 'assets/C/s162.png',
            'body':
                "To create (often referred to as declare) your own function, specify the name of the function, followed by parentheses () and curly brackets {}:"
          },
          {
            'body': "Example Explained"
                "\n\n : myFunction() is the name of the function"
                "\n\n : void means that the function does not have a return value. You will learn more about return values later in the next chapter"
                "\n\n : Inside the function (the body), add code that defines what the function should do"
          },
          {
            'heading': 'Call a Function',
            'attachment': 'assets/C/s163.png',
            'body':
                "Declared functions are not executed immediately. They are 'saved for later use', and will be executed when they are called.\n\no call a function, write the function's name followed by two parentheses () and a semicolon ;\n\nIn the following example, myFunction() is used to print a text (the action), when it is called:\n\nInside main, call myFunction():"
          },
          {
            'attachment': 'assets/C/s164.png',
            'body': "A function can be called multiple times:"
          },
        ]
      },
      1: {
        'topic': '2.     Function Parameters',
        'subTopic': [
          {
            'heading': 'Parameters and Arguments',
            'attachment': 'assets/C/s165.png',
            'body':
                "Information can be passed to functions as a parameter. Parameters act as variables inside the function.\n\nParameters are specified after the function name, inside the parentheses. You can add as many parameters as you want, just separate them with a comma:"
          },
          {
            'attachment': 'assets/C/s166.png',
            'body':
                "The following function that takes a string of characters with name as parameter. When the function is called, we pass along a name, which is used inside the function to print 'Hello' and the name of each person."
          },
          {
            'heading': '\n\nMultiple Parameters',
            'attachment': 'assets/C/s167.png',
            'body':
                "Inside the function, you can add as many parameters as you want:"
          },
          {
            'heading': '\n\nPass Arrays as Function Parameters',
            'attachment': 'assets/C/s168.png',
            'body': "You can also pass arrays to a function:"
          },
          {
            'heading': '\n\nReturn Values',
            'attachment': 'assets/C/s169.png',
            'body':
                "The void keyword, used in the previous examples, indicates that the function should not return a value. If you want the function to return a value, you can use a data type (such as int or float, etc.) instead of void, and use the return keyword inside the function:"
          },
          {
            'attachment': 'assets/C/s170.png',
            'body':
                "This example returns the sum of a function with two parameters:"
          },
          {
            'attachment': 'assets/C/s171.png',
            'body': "You can also store the result in a variable:"
          },
          {
            'heading': '\n\nReal-Life Example',
            'attachment': 'assets/C/s172.png',
            'body':
                "To demonstrate a practical example of using functions, let's create a program that converts a value from fahrenheit to celsius:"
          }
        ]
      },
      2: {
        'topic': '3.     Function Declaration and Definition',
        'subTopic': [
          {
            'heading': 'Function Declaration and Definition',
            'attachment': 'assets/C/s173.png',
            'body':
                "You just learned from the previous chapters that you can create and call a function in the following way:"
          },
          {
            'attachment': 'assets/C/s174.png',
            'body': "A function consist of two parts:"
                "\n\n : Declaration: the function's name, return type, and parameters (if any)"
                "\n\n : Definition: the body of the function (code to be executed)"
          },
          {
            'attachment': 'assets/C/s175.png',
            'body': "For code optimization, it is recommended to separate the declaration and the definition of the function."
                "\n\nYou will often see C programs that have function declaration above main(), and function definition below main(). This will make the code better organized and easier to read:"
          },
          {
            'heading': '\n\nAnother Example',
            'attachment': 'assets/C/s176.png',
            'body':
                "If we use the example from the previous chapter regarding function parameters and return values:"
          },
          {
            'attachment': 'assets/C/s177.png',
            'body':
                "It is considered good practice to write it like this instead:"
          }
        ]
      },
      3: {
        'topic': '4.     Recursion',
        'subTopic': [
          {
            'heading': 'Recursion',
            'body':
                "Recursion is the technique of making a function call itself. This technique provides a way to break complicated problems down into simple problems which are easier to solve.\n\nRecursion may be a bit difficult to understand. The best way to figure out how it works is to experiment with it."
          },
          {
            'heading': 'Recursion Example',
            'attachment': 'assets/C/s178.png',
            'body':
                "Adding two numbers together is easy to do, but adding a range of numbers is more complicated. In the following example, recursion is used to add a range of numbers together by breaking it down into the simple task of adding two numbers:"
          },
          {
            'attachment': 'assets/C/s179.png',
            'body': "Example Explained"
                "\n\nWhen the sum() function is called, it adds parameter k to the sum of all numbers smaller than k and returns the result. When k becomes 0, the function just returns 0. When running, the program follows these steps:"
          },
          {
            'body':
                "Since the function does not call itself when k is 0, the program stops there and returns the result."
          }
        ]
      },
      4: {
        'topic': '5.     Math Functions',
        'subTopic': [
          {
            'heading': 'Math Functions',
            'attachment': 'assets/C/s180.png',
            'body':
                "There is also a list of math functions available, that allows you to perform mathematical tasks on numbers.\n\nTo use them, you must include the math.h header file in your program:"
          },
          {
            'heading': '\n\nSquare Root',
            'attachment': 'assets/C/s181.png',
            'body':
                "To find the square root of a number, use the sqrt() function:"
          },
          {
            'heading': '\n\nRound a Number',
            'attachment': 'assets/C/s182.png',
            'body':
                "The ceil() function rounds a number upwards to its nearest integer, and the floor() method rounds a number downwards to its nearest integer, and returns the result:"
          },
          {
            'heading': '\n\nPower',
            'attachment': 'assets/C/s183.png',
            'body':
                "The pow() function returns the value of x to the power of y (xy):"
          },
          {
            'heading': '\n\nOther Math Functions',
            'attachment': 'assets/C/s184.png',
            'body':
                "A list of other popular math functions (from the <math.h> library) can be found in the table below:"
          }
        ]
      }
    },
    Categories.advanced: {
      0: {
        'topic': '1.     Files',
        'subTopic': [
          {
            'heading': 'File Handling',
            'attachment': 'assets/C/s185.png',
            'body':
                "In C, you can create, open, read, and write to files by declaring a pointer of type FILE, and use the fopen() function:"
          },
          {
            'attachment': 'assets/C/s186.png',
            'body': "FILE is basically a data type, and we need to create a pointer variable to work with it (fptr). For now, this line is not important. It's just something you need when working with files."
                "\n\nTo actually open a file, use the fopen() function, which takes two parameters:"
          },
          {
            'heading': '\n\nFile Handling',
            'attachment': 'assets/C/s187.png',
            'body': "To create a file, you can use the w mode inside the fopen() function."
                "\n\nThe w mode is used to write to a file. However, if the file does not exist, it will create one for you:"
          },
          {
            'attachment': 'assets/C/s188.png',
            'body':
                "Note: The file is created in the same directory as your other C files, if nothing else is specified.\n\nOn our computer, it looks like this:"
          },
          {
            'body':
                "Tip: If you want to create the file in a specific folder, just provide an absolute path:"
          },
          {
            'attachment': 'assets/C/s189.png',
            'body':
                "In the next chapters, you will learn how to write content to a file and read from it."
          }
        ]
      },
      1: {
        'topic': '2.     Write To Files',
        'subTopic': [
          {
            'heading': 'Write To a File',
            'attachment': 'assets/C/s190.png',
            'body':
                "Let's use the w mode from the previous chapter again, and write something to the file we just created.\n\nThe w mode means that the file is opened for writing. To insert content to it, you can use the fprintf() function and add the pointer variable (fptr in our example) and some text:"
          },
          {
            'attachment': 'assets/C/s191.png',
            'body':
                "Note: If you write to a file that already exists, the old content is deleted, and the new content is inserted. This is important to know, as you might accidentally erase existing content."
          },
          {
            'heading': '\n\nAppend Content To a File',
            'attachment': 'assets/C/s192.png',
            'body':
                "If you want to add content to a file without deleting the old content, you can use the a mode.\n\nThe a mode appends content at the end of the file:"
          },
          {
            'body':
                "NOTE: Just like with the w mode; if the file does not exist, the a mode will create a new file with the 'appended' content."
          }
        ]
      },
      2: {
        'topic': '3.     Read Files',
        'subTopic': [
          {
            'heading': 'Read a File',
            'attachment': 'assets/C/s193.png',
            'body':
                "In the previous chapter, we wrote to a file using w and a modes inside the fopen() function.\n\nTo read from a file, you can use the r mode:"
          },
          {
            'attachment': 'assets/C/s194.png',
            'body': "This will make the filename.txt opened for reading."
                "\n\nIt requires a little bit of work to read a file in C. Hang in there! We will guide you step-by-step."
                "\n\nNext, we need to create a string that should be big enough to store the content of the file."
                "\n\nFor example, let's create a string that can store up to 100 characters:"
          },
          {
            'attachment': 'assets/C/s195.png',
            'body':
                "In order to read the content of filename.txt, we can use the fgets() function.\n\nThe fgets() function takes three parameters:"
          },
          {
            'attachment': 'assets/C/s196.png',
            'body': "   1. The first parameter specifies where to store the file content, which will be in the myString array we just created."
                "\n\n   2. The second parameter specifies the maximum size of data to read, which should match the size of myString (100)."
                "\n\n   3. The third parameter requires a file pointer that is used to read the file (fptr in our example)."
                "\n\nNow, we can print the string, which will output the content of the file:"
          },
          {
            'attachment': 'assets/C/s197.png',
            'body':
                "NOTE: The fgets function only reads the first line of the file. If you remember, there were two lines of text in filename.txt.\n\nTo read every line of the file, you can use a while loop:"
          },
          {
            'heading': '\n\nGood Practice',
            'attachment': 'assets/C/s198.png',
            'body': "If you try to open a file for reading that does not exist, the fopen() function will return NULL."
                "\n\nTIP: As a good practice, we can use an if statement to test for NULL, and print some text instead (when the file does not exist):"
          },
          {
            'attachment': 'assets/C/s199.png',
            'body': "With this in mind, we can create a more sustainable code if we use our 'read a file' example above again:"
                "\n\nIf the file exist, read the content and print it. If the file does not exist, print a message:"
          }
        ]
      },
      3: {
        'topic': '4.     Structures',
        'subTopic': [
          {
            'heading': 'Structures (structs)',
            'body': "Structures (also called structs) are a way to group several related variables into one place. Each variable in the structure is known as a member of the structure."
                "\n\nUnlike an array, a structure can contain many different data types (int, float, char, etc.)."
          },
          {
            'heading': 'Create a Structure',
            'attachment': 'assets/C/s200.png',
            'body':
                "You can create a structure by using the struct keyword and declare each of its members inside curly braces:"
          },
          {
            'attachment': 'assets/C/s201.png',
            'body':
                "To access the structure, you must create a variable of it.\n\nUse the struct keyword inside the main() method, followed by the name of the structure and then the name of the structure variable:"
                    "\n\nCreate a struct variable with the name 's1':"
          },
          {
            'heading': '\n\nAccess Structure Members',
            'attachment': 'assets/C/s202.png',
            'body': "To access members of a structure, use the dot syntax (.):"
          },
          {
            'attachment': 'assets/C/s203.png',
            'body':
                "Now you can easily create multiple structure variables with different values, using just one structure:"
          },
          {
            'heading': '\n\nWhat About Strings in Structures?',
            'attachment': 'assets/C/s204.png',
            'body':
                "Remember that strings in C are actually an array of characters, and unfortunately, you can't assign a value to an array like this:"
          },
          {
            'attachment': 'assets/C/s205.png',
            'body':
                "However, there is a solution for this! You can use the strcpy() function and assign the value to s1.myString, like this:"
          },
          {
            'heading': '\n\nSimpler Syntax',
            'attachment': 'assets/C/s206.png',
            'body': "You can also assign values to members of a structure variable at declaration time, in a single line."
                "\n\nJust insert the values in a comma-separated list inside curly braces {}. Note that you don't have to use the strcpy() function for string values with this technique:"
          },
          {
            'heading': '\n\nCopy Structures',
            'attachment': 'assets/C/s207.png',
            'body':
                "You can also assign one structure to another.\n\nIn the following example, the values of s1 are copied to s2:"
          },
          {
            'heading': '\n\nModify Values',
            'attachment': 'assets/C/s208.png',
            'body':
                "If you want to change/modify a value, you can use the dot syntax (.).\n\nAnd to modify a string value, the strcpy() function is useful again:"
          },
          {
            'attachment': 'assets/C/s209.png',
            'body':
                "Modifying values are especially useful when you copy structure values:"
          },
          {
            'heading': '\n\nReal-Life Example',
            'attachment': 'assets/C/s210.png',
            'body': "Use a structure to store different information about Cars:"
          }
        ]
      },
      4: {
        'topic': '5.     Enumeration',
        'subTopic': [
          {
            'heading': 'C Enums',
            'attachment': 'assets/C/s211.png',
            'body':
                "An enum is a special type that represents a group of constants (unchangeable values).\n\nTo create an enum, use the enum keyword, followed by the name of the enum, and separate the enum items with a comma:"
          },
          {
            'attachment': 'assets/C/s212.png',
            'body':
                "To access the enum, you must create a variable of it.\n\nInside the main() method, specify the enum keyword, followed by the name of the enum (Level) and then the name of the enum variable (myVar in this example):"
          },
          {
            'attachment': 'assets/C/s213.png',
            'body':
                "Now that you have created an enum variable (myVar), you can assign a value to it.\n\nThe assigned value must be one of the items inside the enum (LOW, MEDIUM or HIGH):"
          },
          {
            'attachment': 'assets/C/s214.png',
            'body':
                "By default, the first item (LOW) has the value 0, the second (MEDIUM) has the value 1, etc.\n\nIf you now try to print myVar, it will output 1, which represents MEDIUM:"
          },
          {
            'heading': '\n\nChange Values',
            'attachment': 'assets/C/s215.png',
            'body':
                "As you know, the first item of an enum has the value 0. The second has the value 1, and so on.\n\nTo make more sense of the values, you can easily change them:"
          },
          {
            'attachment': 'assets/C/s216.png',
            'body':
                "Note that if you assign a value to one specific item, the next items will update their numbers accordingly:"
          },
          {
            'heading': '\n\nEnum in a Switch Statement',
            'attachment': 'assets/C/s217.png',
            'body':
                "Enums are often used in switch statements to check for corresponding values:"
          }
        ]
      }
    },
  },
};
