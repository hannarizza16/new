import 'package:first_project/enums/enums.dart';

const cPlusCodex = {
  Languages.cplusplus: {
    Categories.beginner: {
      0: {
        'topic': '1.    Introduction to C++',
        'subTopic': [
          {
            'heading': 'What is C++?',
            'body': "C++ is a cross-platform language that can be used to create high-performance applications."
                "\n\nC++ was developed by Bjarne Stroustrup, as an extension to the C language."
                "\n\nC++ gives programmers a high level of control over system resources and memory."
                "\n\nThe language was updated 4 major times in 2011, 2014, 2017, and 2020 to C++11, C++14, C++17, C++20."
          },
          {
            'heading': 'Why Use C++',
            'body': "C++ is one of the world's most popular programming languages."
                "\n\nC++ can be found in today's operating systems, Graphical User Interfaces, and embedded systems."
                "\n\nC++ is an object-oriented programming language which gives a clear structure to programs and allows code to be reused, lowering development costs."
                "\n\nC++ is portable and can be used to develop applications that can be adapted to multiple platforms."
                "\n\nC++ is fun and easy to learn!"
                "\n\nAs C++ is close to C, C# and Java, it makes it easy for programmers to switch to C++ or vice versa."
          },
          {
            'heading': 'Difference between C and C++',
            'body': "C++ was developed as an extension of C, and both languages have almost the same syntax."
                "\n\nThe main difference between C and C++ is that C++ support classes and objects, while C does not."
          },
        ]
      },
      1: {
        'topic': '2.     Get Started',
        'subTopic': [
          {
            'heading': 'C++ Get Started',
            'body': "To start using C++, you need two things:"
                "\n\n     • A text editor, like Notepad, to write C++"
                "\n       code."
                "\n     • A compiler, like GCC, to translate the C+"
                "\n       + code into a language that the"
                "\n       computer will understand"
                "\n\nThere are many text editors and compilers to choose from. In this tutorial, we will use an IDE (see below)."
          },
          {
            'heading': 'C++ Install IDE',
            'body': "An IDE (Integrated Development Environment) is used to edit AND compile the code."
                "\n\nPopular IDE's include Code::Blocks, Eclipse, and Visual Studio. These are all free, and they can be used to both edit and debug C++ code."
                "\n\n*Note: Web-based IDE's can work as well, but functionality is limited."
                "\n\nWe will use Code::Blocks in our tutorial, which we believe is a good place to start."
                "\n\nYou can find the latest version of Codeblocks at http://www.codeblocks.org/. Download the mingw-setup.exe file, which will install the text editor with a compiler."
          },
          {
            'heading': 'C++ Quickstart',
            'body': "Let's create our first C++ file."
                "\n\nOpen Codeblocks and go to File > New > Empty File."
                "\n\nWrite the following C++ code and save the file as codexfirstprogram.cpp (File > Save File as):",
          },
          {
            'attachment': 'assets/cPlus_beginner/2.png',
            'body':
                "Don't worry if you don't understand the code above - we will discuss it in detail in later chapters. For now, focus on how to run the code."
          },
          {
            'body': "In Codeblocks, it should look like this:",
            'attachment': 'assets/cPlus_beginner/2.1.png',
          },
          {
            'body':
                "Then, go to Build > Build and Run to run (execute) the program. The result will look something to this:",
            'attachment': 'assets/cPlus_beginner/2.2.png',
          },
          {
            'body':
                "Congratulations! You have now written and executed your first C++ program.",
          },
        ]
      },
      2: {
        'topic': '3.     Syntax',
        'subTopic': [
          {
            'heading': "C++ Syntax",
            'body': "Let's break up the following code to understand it better:"
                "\n\nEXAMPLE: ",
            'attachment': 'assets/cPlus_beginner/2.png'
          },
          {
            'body': "Example explained",
            'attachment': 'assets/cPlus_beginner/3.png',
          },
          {
            'attachment': 'assets/cPlus_beginner/3.png',
          },
          {
            'heading': "\n\nOmitting Namespace",
            'body':
                "You might see some C++ programs that runs without the standard namespace library. The using namespace std line can be omitted and replaced with the std keyword, followed by the :: operator for some objects:",
            'attachment': 'assets/cPlus_beginner/3.2.png'
          },
        ]
      },
      3: {
        'topic': '4.     Output (Print Text)',
        'subTopic': [
          {
            'heading': "C++ Output (Print Text)",
            'body':
                "The cout object, together with the << operator, is used to output values/print text:",
            'attachment': 'assets/cPlus_beginner/4.png'
          },
          {
            'body':
                "You can add as many cout objects as you want. However, note that it does not insert a new line at the end of the output:",
            'attachment': 'assets/cPlus_beginner/4.1.png'
          },
        ]
      },
      4: {
        'topic': '     4.1     New Lines',
        'subTopic': [
          {
            'heading': "C++ New Lines",
            'body': "To insert a new line, you can use the \\n character:",
            'attachment': 'assets/cPlus_beginner/4.2.png'
          },
          {'body': "Output:", 'attachment': 'assets/cPlus_beginner/4.3.png'},
          {
            'body':
                "Tip: Two \\n characters after each other will create a blank line:",
            'attachment': 'assets/cPlus_beginner/4.4.png'
          },
          {'body': "Output:", 'attachment': 'assets/cPlus_beginner/4.5.png'},
          {
            'body':
                "Another way to insert a new line, is with the endl manipulator:",
            'attachment': 'assets/cPlus_beginner/4.6.png'
          },
          {'body': "Output:", 'attachment': 'assets/cPlus_beginner/4.5.png'},
          {
            'body': "Both \\n and endl are used to break lines. However, \\n is most used."
                "\n\nBut what is \\n exactly?"
                "\n\nThe newline character (\\n) is called an escape sequence, and it forces the cursor to change its position to the beginning of the next line on the screen. This results in a new line."
                "\n\n \\t   -   Creates a horizontal tab",
            'attachment': 'assets/cPlus_beginner/4.12.png'
          },
          {'body': "Output:", 'attachment': 'assets/cPlus_beginner/4.7.png'},
          {
            'body': "\\\\   -   Inserts a backslash character (\\)",
            'attachment': 'assets/cPlus_beginner/4.8.png'
          },
          {'body': "Output:", 'attachment': 'assets/cPlus_beginner/4.9.png'},
          {
            'body': "\\\"   -   Inserts a double quote character",
            'attachment': 'assets/cPlus_beginner/4.10.png'
          },
          {'body': "Output:", 'attachment': 'assets/cPlus_beginner/4.11.png'},
        ]
      },
      5: {
        'topic': '5.     Comments',
        'subTopic': [
          {
            'heading': 'C++ Comments',
            'body':
                "Comments can be used to explain C++ code, and to make it more readable. It can also be used to prevent execution when testing alternative code.\n\nComments can be singled-lined or multi-lined.",
          },
          {
            'heading': 'Single-line Comments',
            'body': "Single-line comments start with two forward slashes (//)."
                "\n\nAny text between // and the end of the line is ignored by the compiler (will not be executed)."
                "\n\nThis example uses a single-line comment before a line of code:",
            'attachment': 'assets/cPlus_beginner/5.png'
          },
          {'body': "Output:", 'attachment': 'assets/cPlus_beginner/5.1.png'},
          {
            'heading': '\nC++ Multi-line Comments',
            'body': "Multi-line comments start with /* and ends with */."
                "\n\nAny text between /* and */ will be ignored by the compiler:",
            'attachment': 'assets/cPlus_beginner/5.2.png'
          },
          {
            'body': "Output:",
            'attachment': 'assets/cPlus_beginner/5.3.png',
          },
          {
            'body': "Single or multi-line comments?"
                "\n\nIt is up to you which you want to use. Normally, we use // for short comments, and /* */ for longer."
          },
        ]
      },
      6: {
        'topic': '6.     Variables',
        'subTopic': [
          {
            'heading': '\nC++ Variables',
            'body': "Variables are containers for storing data values."
                "\n\nIn C++, there are different types of variables (defined with different keywords), for example:"
                "\n\n   • int - stores integers (whole numbers), \n     without decimals, such as 123 or -123"
                "\n\n • double - stores floating point numbers, \n    with decimals, such as 19.99 or -19.99"
                "\n\n • char - stores single characters, such as \n    'a' or 'B'. Char values are surrounded by \n    single quotes"
                '\n\n • string - stores text, such as "Hello World". \n    String values are surrounded by double \n    quotes'
                "\n\n • bool - stores values with two states: true \n    or false",
          }
        ]
      },
      7: {
        'topic': '     6.1     Declare Variables',
        'subTopic': [
          {
            'heading': 'Declaring (Creating) Variables',
            'body':
                "To create a variable, specify the type and assign it a value:"
                    "Syntax:",
            'attachment': 'assets/cPlus_beginner/5.4.png',
          },
          {
            'body': "Where type is one of C++ types (such as int), and variableName is the name of the variable (such as x or myName). "
                "\n\nThe equal sign is used to assign values to the variable."
                "\n\nTo create a variable that should store a number, look at the following example:"
                "\n\n\nExample:"
                "\n\nCreate a variable called myNum of type int and assign it the value 15:",
            'attachment': 'assets/cPlus_beginner/5.5.png',
          },
          {
            'body': "Output:",
            'attachment': 'assets/cPlus_beginner/5.6.png',
          },
          {
            'body':
                "You can also declare a variable without assigning the value, and assign the value later:"
                    "\n\nExample:",
            'attachment': 'assets/cPlus_beginner/5.7.png',
          },
          {
            'body': "Output:",
            'attachment': 'assets/cPlus_beginner/5.6.png',
          },
          {
            'body':
                "Note that if you assign a new value to an existing variable, it will overwrite the previous value:"
                    "\n\nExample:",
            'attachment': 'assets/cPlus_beginner/5.8.png',
          },
          {
            'body': "Output:",
            'attachment': 'assets/cPlus_beginner/5.9.png',
          },
          {
            'heading': '\n\nOther Types',
            'body': "A demonstration of other data types:"
                "\n\nExample"
                "\n\n*int* myNum = 5;               \n// Integer (whole number without decimals)"
                "\n\n*double* myFloatNum = 5.99;    \n// Floating point number (with decimals)"
                "\n\n*char* myLetter = 'D';         \n// Character"
                '\n\n*string* myText = "Hello";     \n// String (text)'
                "\n\n*bool* myBoolean = true;       \n// Boolean (true or false)"
                "\n\nYou will learn more about the individual types in the Data Types chapter."
          },
          {
            'heading': '\nDisplay Variables',
            'body': "The cout object is used together with the << operator to display variables."
                "\n\nTo combine both text and a variable, separate them with the << operator:"
                "\n\n\nExample",
            'attachment': 'assets/cPlus_beginner/5.10.png',
          },
          {
            'body': "Output:",
            'attachment': 'assets/cPlus_beginner/5.11.png',
          },
          {
            'heading': "\n\nAdd Variables Together",
            'body':
                "To add a variable to another variable, you can use the '+' operator:"
                    "\n\nExample:",
            'attachment': 'assets/cPlus_beginner/5.12.png',
          },
          {
            'body': "Output:",
            'attachment': 'assets/cPlus_beginner/5.13.png',
          },
        ]
      },
      8: {
        'topic': '     6.2     Declare Multiple Variables',
        'subTopic': [
          {
            'heading': "Declare Many Variables",
            'body':
                "To declare more than one variable of the same type, use a comma-separated list:"
                    "\n\nExample",
            'attachment': 'assets/cPlus_beginner/5.14.png',
          },
          {
            'body': "Output:",
            'attachment': 'assets/cPlus_beginner/5.15.png',
          },
          {
            'heading': "\nOne Value to Multiple Variables",
            'body':
                "You can also assign the same value to multiple variables in one line:"
                    "\n\nExample",
            'attachment': 'assets/cPlus_beginner/5.16.png',
          },
          {
            'body': "Output:",
            'attachment': 'assets/cPlus_beginner/5.17.png',
          },
        ]
      },
      9: {
        'topic': '     6.3     Identifiers',
        'subTopic': [
          {
            'heading': "C++ Identifiers",
            'body': "All C++ variables must be identified with unique names."
                "\n\nThese unique names are called identifiers."
                "\n\nIdentifiers can be short names (like x and y) or more descriptive names (age, sum, totalVolume)."
                "\n\n*Note: It is recommended to use descriptive names in order to create understandable and maintainable code:"
                "\n\nExample",
            'attachment': "assets/cPlus_beginner/5.18.png"
          },
          {
            'body': "Output:",
            'attachment': 'assets/cPlus_beginner/5.19.png',
          },
          {
            'heading': "\nThe general rules for naming variables",
            'body': "\n   • Names can contain letters, digits and underscores"
                "\n\n   • Names must begin with a letter or an underscore (_)"
                "\n\n   • Names are case-sensitive (myVar and myvar are different variables)"
                "\n\n   • Names cannot contain whitespaces or special characters like !, #, %, etc."
                "\n\n   • Reserved words (like C++ keywords, such as int) cannot be used as names",
          },
        ]
      },
      10: {
        'topic': '     6.4     Constants',
        'subTopic': [
          {
            'heading': "Constants",
            'body':
                "When you do not want others (or yourself) to change existing variable values, use the const keyword (this will declare the variable as 'constant', which means unchangeable and read-only):"
                    "\n\nExample",
            'attachment': "assets/cPlus_beginner/5.20.png",
          },
          {
            'body': "Output:",
            'attachment': 'assets/cPlus_beginner/5.21.png',
          },
          {
            'body':
                "You should always declare the variable as constant when you have values that are unlikely to change:"
                    "\n\nExample",
            'attachment': "assets/cPlus_beginner/5.22.png",
          },
          {
            'body': "Output:",
            'attachment': 'assets/cPlus_beginner/5.23.png',
          },
          {
            'heading': "\n\nNotes On Constants",
            'body':
                "When you declare a constant variable, it must be assigned with a value:"
                    "\n\nExample"
                    " Like this:",
            'attachment': 'assets/cPlus_beginner/5.24.png'
          },
          {
            'body': "This however, will not work:",
            'attachment': 'assets/cPlus_beginner/5.25.png'
          },
          {
            'body': "Output: Error!",
            'attachment': 'assets/cPlus_beginner/5.26.png'
          },
        ]
      },
      11: {
        'topic': '7.     User Input (Basic Calculator)',
        'subTopic': [
          {
            'heading': "User Input",
            'body': "You have already learned that cout is used to output (print) values. Now we will use cin to get user input."
                "\n\ncin is a predefined variable that reads data from the keyboard with the extraction operator (>>)."
                "\n\nIn the following example, the user can input a number, which is stored in the variable x. Then we print the value of x:"
                "\n\nExample",
            'attachment': "assets/cPlus_beginner/7.1.png"
          },
          {'body': "Output: ", 'attachment': 'assets/cPlus_beginner/7.2.png'},
          {
            'heading': "\n*Good To Know*",
            'body': "cout is pronounced 'see-out'. Used for output, and uses the insertion operator (<<)"
                "\n\ncin is pronounced 'see-in'. Used for input, and uses the extraction operator (>>)",
          },
          {
            'heading': "Creating a Simple Calculator",
            'body':
                "In this example, the user must input two numbers. Then we print the sum by calculating (adding) the two numbers:"
                    "\n\nExample",
            'attachment': "assets/cPlus_beginner/7.3.png"
          },
          {'body': "Output: ", 'attachment': 'assets/cPlus_beginner/7.4.png'},
          {
            'body': "There you go! You just built a basic calculator!",
          },
        ]
      },
      12: {
        'topic': '8.     Data Types',
        'subTopic': [
          {
            'heading': "Data Types",
            'body':
                "As explained in the Variables chapter, a variable in C++ must be a specified data type:"
                    "\n\nExample",
            'attachment': "assets/cPlus_beginner/8.1.png",
          },
          {
            'body': "Output:",
            'attachment': "assets/cPlus_beginner/8.2.png",
          },
        ]
      },
      13: {
        'topic': '     8.1     Basic Data Types',
        'subTopic': [
          {
            'heading': "Basic Data Types",
            'body':
                "The data type specifies the size and type of information the variable will store:",
            'attachment': "assets/cPlus_beginner/8.3.png",
          }
        ]
      },
      14: {
        'topic': '     8.2     Numbers',
        'subTopic': [
          {
            'heading': "Numeric Data Types",
            'body':
                "Use int when you need to store a whole number without decimals, like 35 or 1000, and float or double when you need a floating point number (with decimals), like 9.99 or 3.14515."
                    "*int",
            'attachment': "assets/cPlus_beginner/8.4.png",
          },
          {
            'body': "Output:",
            'attachment': "assets/cPlus_beginner/8.5.png",
          },
          {
            'body': "*float",
            'attachment': "assets/cPlus_beginner/8.6.png",
          },
          {
            'body': "Output:",
            'attachment': "assets/cPlus_beginner/8.7.png",
          },
          {
            'body': "*double",
            'attachment': "assets/cPlus_beginner/8.8.png",
          },
          {
            'body': "Output:",
            'attachment': "assets/cPlus_beginner/8.9.png",
          },
          {
            'heading': "\n\nfloat vs. double",
            'body':
                "The precision of a floating point value indicates how many digits the value can have after the decimal point. The precision of float is only six or seven decimal digits, while double variables have a precision of about 15 digits. Therefore it is safer to use double for most calculations.",
          },
          {
            'body': "Scientific Numbers"
                '\n\nA floating point number can also be a scientific number with an "e" to indicate the power of 10:'
                '\n\nExample',
            'attachment': "assets/cPlus_beginner/8.10.png",
          },
          {
            'body': "Output:",
            'attachment': "assets/cPlus_beginner/8.11.png",
          },
        ]
      },
      15: {
        'topic': '     8.3     Booleans',
        'subTopic': [
          {
            'heading': "Boolean Data Types",
            'body':
                "A boolean data type is declared with the bool keyword and can only take the values true or false."
                    "When the value is returned, true = 1 and false = 0."
                    "\n\nExample",
            'attachment': "assets/cPlus_beginner/8.12.png"
          },
          {
            'body': "Output:",
            'attachment': "assets/cPlus_beginner/8.13.png",
          },
          {
            'body':
                "Boolean values are mostly used for conditional testing, which you will learn more about in a later chapter.",
          },
        ]
      },
      16: {
        'topic': '     8.4     Characters',
        'subTopic': [
          {
            'heading': "Character Data Types",
            'body':
                "The char data type is used to store a single character. The character must be surrounded by single quotes, like 'A' or 'c':"
                    "\n\nExample",
            'attachment': "assets/cPlus_beginner/8.14.png",
          },
          {
            'body': "Output:",
            'attachment': "assets/cPlus_beginner/8.15.png",
          },
          {
            'body':
                "Alternatively, if you are familiar with ASCII, you can use ASCII values to display certain characters:"
                    "\n\nExample",
            'attachment': "assets/cPlus_beginner/8.16.png",
          },
          {
            'body': "Output:",
            'attachment': "assets/cPlus_beginner/8.17.png",
          },
        ]
      },
      17: {
        'topic': '     8.5     Strings',
        'subTopic': [
          {
            'heading': "String Data Types",
            'bodoy':
                "The string type is used to store a sequence of characters (text). This is not a built-in type, but it behaves like one in its most basic usage. String values must be surrounded by double quotes:"
                    "\n\nExample",
            'attachment': "assets/cPlus_beginner/8.18.png",
          },
          {
            'body':
                "To use strings, you must include an additional header file in the source code, the <string> library:"
                    "\n\nExample",
            'attachment': "assets/cPlus_beginner/8.19.png",
          },
          {
            'body': "Output:",
            'attachment': "assets/cPlus_beginner/8.20.png",
          },
        ]
      },
      18: {
        'topic': '9.     Operators',
        'subTopic': [
          {
            'heading': "C++ Operators",
            'body': "Operators are used to perform operations on variables and values."
                "\n\nIn the example below, we use the '+' operator to add together two values:"
                "\n\nExample",
            'attachment': "assets/cPlus_beginner/9.1.png",
          },
          {
            'body': "Output:",
            'attachment': "assets/cPlus_beginner/9.2.png",
          },
          {
            'body':
                "Although the '+' operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:"
                    "\n\nExample",
            'attachment': "assets/cPlus_beginner/9.3.png",
          },
          {
            'body': "Output:",
            'attachment': "assets/cPlus_beginner/9.4.png",
          },
          {
            'body': "C++ divides the operators into the following groups:"
                "   • Arithmetic operators"
                "   • Assignment operators"
                "   • Comparison operators"
                "   • Logical operators"
                "   • Bitwise operators",
          },
        ]
      },
      19: {
        'topic': '     9.1     Arithmetic',
        'subTopic': [
          {
            'heading': "Arithmetic Operators",
            'body':
                "Arithmetic operators are used to perform common mathematical operations.",
            'attachment': "assets/cPlus_beginner/9.5.png",
          },
          {
            'body': "'+'  -  Addition",
            'attachment': "assets/cPlus_beginner/9.6.png",
          },
          {
            'body': "'-'  -  Subtraction",
            'attachment': "assets/cPlus_beginner/9.7.png",
          },
          {
            'body': "'*'  -  Multiplication",
            'attachment': "assets/cPlus_beginner/9.8.png",
          },
          {
            'body': "'/'  -  Division",
            'attachment': "assets/cPlus_beginner/9.9.png",
          },
          {
            'body': "'%'  -  Modulus",
            'attachment': "assets/cPlus_beginner/9.10.png",
          },
          {
            'body': "'++'  -  Increment",
            'attachment': "assets/cPlus_beginner/9.11.png",
          },
          {
            'body': "'--'  -  Decrement",
            'attachment': "assets/cPlus_beginner/9.12.png",
          },
        ]
      },
      20: {
        'topic': '     9.2     Assignment',
        'subTopic': [
          {
            'heading': "Assignment Operators",
            'body': "Assignment operators are used to assign values to variables."
                "\n\nIn the example below, we use the assignment operator (=) to assign the value 10 to a variable called x:"
                "\n\nExample",
            'attachment': "assets/cPlus_beginner/9.13.png",
          },
          {
            'body':
                "The addition assignment operator (+=) adds a value to a variable:"
                    "\n\nExample",
            'attachment': "assets/cPlus_beginner/9.14.png",
          },
          {
            'heading': "\nA list of all assignment operators:",
            'attachment': "assets/cPlus_beginner/9.15.png",
          },
          {
            'body': "'='    operator",
            'attachment': "assets/cPlus_beginner/9.16.png",
          },
          {
            'body': "'+='    operator",
            'attachment': "assets/cPlus_beginner/9.17.png",
          },
          {
            'body': "'-='    operator",
            'attachment': "assets/cPlus_beginner/9.18.png",
          },
          {
            'body': "'*='    operator",
            'attachment': "assets/cPlus_beginner/9.19.png",
          },
          {
            'body': "'/='    operator",
            'attachment': "assets/cPlus_beginner/9.20.png",
          },
          {
            'body': "'%='    operator",
            'attachment': "assets/cPlus_beginner/9.21.png",
          },
          {
            'body': "'&='    operator",
            'attachment': "assets/cPlus_beginner/9.22.png",
          },
          {
            'body': "'|='    operator",
            'attachment': "assets/cPlus_beginner/9.23.png",
          },
          {
            'body': "'^='    operator",
            'attachment': "assets/cPlus_beginner/9.24.png",
          },
          {
            'body': "'>>='    operator",
            'attachment': "assets/cPlus_beginner/9.25.png",
          },
          {
            'body': "'<<='    operator",
            'attachment': "assets/cPlus_beginner/9.26.png",
          },
        ]
      },
      21: {
        'topic': '     9.3     Comparison',
        'subTopic': [
          {
            'heading': "Comparison Operators",
            'body': "Comparison operators are used to compare two values (or variables). This is important in programming, because it helps us to find answers and make decisions."
                "\n\nThe return value of a comparison is either 1 or 0, which means true (1) or false (0). These values are known as Boolean values, and you will learn more about them in the Booleans and If..Else chapter."
                "\n\nIn the following example, we use the greater than operator (>) to find out if 5 is greater than 3:"
                "\n\nExample",
            'attachment': "assets/cPlus_beginner/9.27.png",
          },
          {
            'heading': "\nA list of all comparison operators:",
            'attachment': "assets/cPlus_beginner/9.28.png",
          },
          {
            'body': "'=='    Equal to",
            'attachment': "assets/cPlus_beginner/9.29.png",
          },
          {
            'body': "'!='    Not equal",
            'attachment': "assets/cPlus_beginner/9.30.png",
          },
          {
            'body': "'>	'    Greater than	",
            'attachment': "assets/cPlus_beginner/9.31.png",
          },
          {
            'body': "'<'    Less than",
            'attachment': "assets/cPlus_beginner/9.32.png",
          },
          {
            'body': "'>='    Greater than or equal to",
            'attachment': "assets/cPlus_beginner/9.33.png",
          },
          {
            'body': "'<='    Less than or equal to",
            'attachment': "assets/cPlus_beginner/9.34.png",
          },
        ]
      },
      22: {
        'topic': '     9.4     Logical',
        'subTopic': [
          {
            'heading': "Logical Operators",
            'body': "As with comparison operators, you can also test for true (1) or false (0) values with logical operators."
                "\n\nLogical operators are used to determine the logic between variables or values:",
            'attachment': "assets/cPlus_beginner/9.35.png",
          },
          {
            'body': "'&&'    Logical and",
            'attachment': "assets/cPlus_beginner/9.36.png",
          },
          {
            'body': "'||'    Logical or",
            'attachment': "assets/cPlus_beginner/9.37.png",
          },
          {
            'body': "'!'    Logical not",
            'attachment': "assets/cPlus_beginner/9.38.png",
          },
        ]
      },
    },
    Categories.intermediate: {
      0: {
        'topic': '10.     Strings',
        'subTopic': [
          {
            'heading': "C++ Strings",
            'body': "Strings are used for storing text."
                "\n\nA string variable contains a collection of characters surrounded by double quotes:"
                "\n\nExample - Create a variable of type string and assign it a value:",
            'attachment': "assets/cPlus_intermediate/10.1.png",
          },
          {
            'body':
                "To use strings, you must include an additional header file in the source code, the <string> library:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.2.png",
          }
        ]
      },
      1: {
        'topic': '     10.1     Concatenation',
        'subTopic': [
          {
            'heading': 'String Concatenation',
            'body':
                "The '+' operator can be used between strings to add them together to make a new string. This is called concatenation:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.3.png",
          },
          {
            'body':
                "In the example above, we added a space after firstName to create a space between John and Doe on output. However, you could also add a space with quotes ("
                    " or ' '):"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.4.png",
          },
          {
            'heading': "\nAppend",
            'body':
                "A string in C++ is actually an object, which contain functions that can perform certain operations on strings. For example, you can also concatenate strings with the append() function:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.5.png",
          }
        ]
      },
      2: {
        'topic': '     10.2     Numbers and Strings',
        'subTopic': [
          {
            'heading': 'Adding Numbers and Strings',
            'attachment': "assets/cPlus_intermediate/10.6.png",
          },
          {
            'body':
                "Example: If you add two numbers, the result will be a number",
            'attachment': "assets/cPlus_intermediate/10.7.png",
          },
          {
            'body':
                "Example: If you add two strings, the result will be a string concatenation:",
            'attachment': "assets/cPlus_intermediate/10.8.png",
          },
          {
            'body':
                "Example: If you try to add a number to a string, an error occurs",
            'attachment': "assets/cPlus_intermediate/10.9.png",
          }
        ]
      },
      3: {
        'topic': '     10.3     String Length',
        'subTopic': [
          {
            'heading': 'String Length',
            'body': "To get the length of a string, use the length() function:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.10.png",
          },
          {
            'body': "*Tip: You might see some C++ programs that use the size() function to get the length of a string. "
                "\n\nThis is just an alias of length(). It is completely up to you if you want to use length() or size():"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.11.png",
          },
        ]
      },
      4: {
        'topic': '     10.4     Access Strings',
        'subTopic': [
          {
            'heading': 'Access Strings',
            'body':
                "You can access the characters in a string by referring to its index number inside square brackets []."
                    "\n\nThis example prints the first character in myString:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.12.png",
          },
          {
            'body':
                "*Note: String indexes start with 0: [0] is the first character. [1] is the second character, etc."
          },
          {
            'body': "This example prints the second character in myString:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.14.png",
          },
          {
            'heading': "\nChange String Characters,",
            'body':
                "To change the value of a specific character in a string, refer to the index number, and use single quotes:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.15.png",
          },
        ]
      },
      5: {
        'topic': '     10.5     Special Characters',
        'subTopic': [
          {
            'heading': 'Special Characters',
            'body':
                'Because strings must be written within quotes, C++ will misunderstand this string, and generate an error:',
            'attachment': "assets/cPlus_intermediate/10.16.png",
          },
          {
            'body': 'The solution to avoid this problem, is to use the backslash escape character.'
                '\n\nThe backslash (\\\) escape character turns special characters into string characters:',
            'attachment': "assets/cPlus_intermediate/10.17.png",
          },
          {
            'body': "The sequence \\\"  inserts a double quote in a string:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.18.png",
          },
          {
            'body': "The sequence \\\'  inserts a single quote in a string:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.19.png",
          },
          {
            'body': "The sequence \\\\  inserts a single backslash in a string:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.20.png",
          },
          {
            'body': "Other popular escape characters in C++ are:",
            'attachment': "assets/cPlus_intermediate/10.21.png",
          },
          {
            'body': "'\\n'   	New Line",
            'attachment': "assets/cPlus_intermediate/10.22.png",
          },
          {
            'body': "'\\t'    Tab",
            'attachment': "assets/cPlus_intermediate/10.23.png",
          },
        ]
      },
      6: {
        'topic': '     10.6     User Input Strings',
        'subTopic': [
          {
            'heading': 'User Input Strings',
            'body':
                "It is possible to use the extraction operator >> on cin to store a string entered by a user:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.24.png",
          },
          {
            'body':
                "However, (cin) considers a space (whitespace, tabs, etc) as a terminating character, which means that it can only store a single word (even if you type many words):"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.25.png",
          },
          {
            'body': 'From the example above, you would expect the program to print "John Mark", but it only prints "John".'
                '\n\nThat\'s why, when working with strings, we often use the getline() function to read a line of text. It takes cin as the first parameter, and the string variable as second:'
                '\n\nExample',
            'attachment': "assets/cPlus_intermediate/10.26.png",
          },
        ]
      },
      7: {
        'topic': '     10.7     Omitting Namespace',
        'subTopic': [
          {
            'heading': 'Omitting Namespace',
            'body': "You might see some C++ programs that runs without the standard namespace library. The using namespace std line can be omitted and replaced with the std keyword, followed by the :: operator for string (and cout) objects:"
                "\n\nIt is up to you if you want to include the standard namespace library or not"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.27.png"
          },
        ]
      },
      23: {
        'topic': '11.     Math',
        'subTopic': [
          {
            'heading': "C++ Math",
            'body':
                "C++ has many functions that allows you to perform mathematical tasks on numbers."
          },
          {
            'heading': "Max and Min",
            'body':
                "The max(x,y) function can be used to find the highest value of x and y:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.28.png"
          },
          {
            'body':
                "And the min(x,y) function can be used to find the lowest value of x and y:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.29.png"
          },
          {
            'heading': "\nC++ <cmath> Header",
            'body':
                "Other functions, such as sqrt (square root), round (rounds a number) and log (natural logarithm), can be found in the <cmath> header file:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.30.png"
          },
          {
            'heading': "\nOther Math Functions",
            'body': "A list of other popular Math functions (from the <cmath> library) can be found in the table below:"
                "\n\nabs(x)  -  Returns the absolute value of x"
                "\n\nacos(x)  -  Returns the arccosine of x"
                "\n\nasin(x)  -  Returns the arcsine of x"
                "\n\natan(x)  -  Returns the arctangent of x"
                "\n\ncbrt(x)  -  Returns the cube root of x"
                "\n\nceil(x)  -  Returns the value of x rounded up to its nearest integer"
                "\n\ncos(x)  -  Returns the cosine of x"
                "\n\ncosh(x)  -  Returns the hyperbolic cosine of x"
                "\n\nexp(x)  -  Returns the value of Ex"
                "\n\nexpm1(x)  -  Returns ex -1"
                "\n\nfabs(x)  -  Returns the absolute value of a floating x"
                "\n\nfdim(x, y)  -  Returns the positive difference between x and y"
                "\n\nfloor(x)  -  Returns the value of x rounded down to its nearest integer"
                "\n\nhypot(x, y)  -  Returns sqrt(x2 +y2) without intermediate overflow or underflow"
                "\n\nfma(x, y, z)  -  Returns x*y+z without losing precision"
                "\n\nfmax(x, y)  -  Returns the highest value of a floating x and y"
                "\n\nfmin(x, y)  -  Returns the lowest value of a floating x and y"
                "\n\nfmod(x, y)  -  Returns the floating point remainder of x/y"
                "\n\npow(x, y)  -  Returns the value of x to the power of y"
                "\n\nsin(x)  -  Returns the sine of x (x is in radians)"
                "\n\nsinh(x)  -  Returns the hyperbolic sine of a double value"
                "\n\ntan(x)  -  Returns the tangent of an angle"
                "\n\ntanh(x)  -  Returns the hyperbolic tangent of a double value",
          },
        ]
      },
      24: {
        'topic': '11.     Booleans',
        'subTopic': [
          {
            'heading': "C++ Booleans",
            'body': "Very often, in programming, you will need a data type that can only have one of two values, like:"
                "\n\n   • YES / NO"
                "\n\n   • ON / OFF"
                "\n\n   • TRUE / FALSE"
                "\n\nFor this, C++ has a bool data type, which can take the values true (1) or false (0)."
          },
        ]
      },
      25: {
        'topic': '     11.1     Boolean Values',
        'subTopic': [
          {
            'heading': "Boolean Values",
            'body':
                "A boolean variable is declared with the bool keyword and can only take the values true or false:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.31.png"
          },
          {
            'body': "From the example above, you can read that a true value returns 1, and false returns 0."
                "\n\nHowever, it is more common to return a boolean value by comparing values and variables (see next page)."
          }
        ]
      },
      26: {
        'topic': '     11.2     Boolean Expressions',
        'subTopic': [
          {
            'heading': "Boolean Expression",
            'body': "A Boolean expression returns a boolean value that is either 1 (true) or 0 (false)."
                "\n\nThis is useful to build logic, and find answers."
                "\n\nYou can use a comparison operator, such as the greater than (>) operator, to find out if an expression (or variable) is true or false:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.32.png"
          },
          {
            'body': "Or even easier:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.33.png"
          },
          {
            'body':
                "In the examples below, we use the equal to (==) operator to evaluate an expression:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.34.png"
          },
          {
            'body': "Example",
            'attachment': "assets/cPlus_intermediate/10.35.png"
          },
          {
            'heading': "\nReal Life Example",
            'body': 'Let\'s think of a "real life example" where we need to find out if a person is old enough to vote.'
                '\n\nIn the example below, we use the >= comparison operator to find out if the age (25) is greater than OR equal to the voting age limit, which is set to 18:'
                '\n\nExample',
            'attachment': "assets/cPlus_intermediate/10.36.png"
          },
        ]
      }
    },
    Categories.advanced: {},
  },
};
