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
        'topic': '12.     Booleans',
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
        'topic': '     12.1     Boolean Values',
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
        'topic': '     12.2     Boolean Expressions',
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
          {
            'body': "Cool, right? An even better approach (since we are on a roll now), would be to wrap the code above in an if...else statement, so we can perform different actions depending on the result:"
                '\n\nExample: Output "Old enough to vote!" if myAge is greater than or equal to 18. Otherwise output "Not old enough to vote."',
            'attachment': "assets/cPlus_intermediate/10.37.png"
          },
          {
            'body': "Booleans are the basis for all C++ comparisons and conditions."
                "\n\nYou will learn more about conditions (if...else) in the next chapter."
          },
        ]
      },
      27: {
        'topic': '13.     Conditions and If Statements',
        'subTopic': [
          {
            'heading': "Conditions and If Statements",
            'body': "You already know that C++ supports the usual logical conditions from mathematics:"
                "\n\n   • Less than: a < b"
                "\n\n   • Less than or equal to: a <= b"
                "\n\n   • Greater than: a > b"
                "\n\n   • Greater than or equal to: a >= b"
                "\n\n   • Equal to a == b"
                "\n\n   • Not Equal to: a != b"
                "\n\nYou can use these conditions to perform different actions for different decisions."
                "\n\n\nC++ has the following conditional statements:"
                "\n\n   • Use if to specify a block of code to be executed, if a specified condition is true"
                "\n\n   • Use else to specify a block of code to be executed, if the same condition is false"
                "\n\n   • Use else if to specify a new condition to test, if the first condition is false"
                "\n\n   • Use switch to specify many alternative blocks of code to be executed",
          },
          {
            'heading': "The if Statement",
            'body':
                "Use the if statement to specify a block of C++ code to be executed if a condition is true."
                    "\n\nSyntax",
            'attachment': "assets/cPlus_intermediate/10.38.png",
          },
          {
            'body': "*Note that if is in lowercase letters. Uppercase letters (If or IF) will generate an error."
                "\n\nIn the example below, we test two values to find out if 20 is greater than 18. If the condition is true, print some text:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.39.png",
          },
          {
            'body': "We can also test variables:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.40.png",
          },
          {
            'body': "Example explained"
                '\nIn the example above we use two variables, x and y, to test whether x is greater than y (using the > operator). As x is 20, and y is 18, and we know that 20 is greater than 18, we print to the screen that "x is greater than y".'
          },
        ]
      },
      28: {
        'topic': '     13.1     else',
        'subTopic': [
          {
            'heading': "The else Statement",
            'body':
                "Use the else statement to specify a block of code to be executed if the condition is false."
                    "\n\nSyntax",
            'attachment': "assets/cPlus_intermediate/10.41.png",
          },
          {
            'body': "Example",
            'attachment': "assets/cPlus_intermediate/10.42.png"
          },
          {
            'body': "Example explained"
                '\nIn the example above, time (20) is greater than 18, so the condition is false. Because of this, we move on to the else condition and print to the screen "Good evening". If the time was less than 18, the program would print "Good day".',
          }
        ]
      },
      29: {
        'topic': '     13.2     Else If',
        'subTopic': [
          {
            'heading': "The else if Statement",
            'body':
                "Use the else if statement to specify a new condition if the first condition is false."
                    "\n\nSyntax",
            'attachment': "assets/cPlus_intermediate/10.43.png"
          },
          {
            'body': "Example",
            'attachment': "assets/cPlus_intermediate/10.44.png"
          },
          {
            'body': "Example explained"
                '\n\nIn the example above, time (22) is greater than 10, so the first condition is false. The next condition, in the else if statement, is also false, so we move on to the else condition since condition1 and condition2 is both false - and print to the screen "Good evening".'
                '\n\nHowever, if the time was 14, our program would print "Good day."'
          },
        ]
      },
      30: {
        'topic': '     13.3     Short Hand If Else',
        'subTopic': [
          {
            'heading': "Short Hand If...Else (Ternary Operator)",
            'body':
                "There is also a short-hand if else, which is known as the ternary operator because it consists of three operands. It can be used to replace multiple lines of code with a single line. It is often used to replace simple if else statements:"
                    "\n\nSyntax",
            'attachment': "assets/cPlus_intermediate/10.45.png"
          },
          {
            'body': "Instead of writing:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.46.png"
          },
          {
            'body': "You can simply write:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.47.png"
          },
        ]
      },
      31: {
        'topic': '14.     Switch',
        'subTopic': [
          {
            'heading': "Switch Statements",
            'body':
                "Use the switch statement to select one of many code blocks to be executed."
                    "\n\nSyntax",
            'attachment': "assets/cPlus_intermediate/10.48.png"
          },
          {
            'body': "This is how it works:"
                "\n\n   • The switch expression is evaluated once"
                "\n\n   • The value of the expression is compared with the values of each case"
                "\n\n   • If there is a match, the associated block of code is executed"
                "\n\n   • The break and default keywords are optional, and will be described later in this chapter"
                "\n\nThe example below uses the weekday number to calculate the weekday name:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.49.png"
          },
          {
            'heading': "\nThe break Keyword",
            'body': "When C++ reaches a break keyword, it breaks out of the switch block."
                "\n\nThis will stop the execution of more code and case testing inside the block."
                "\n\nWhen a match is found, and the job is done, it's time for a break. There is no need for more testing."
                '\n\nA break can save a lot of execution time because it "ignores" the execution of all the rest of the code in the switch block.'
          }
        ]
      },
      32: {
        'topic': '15.     While Loop',
        'subTopic': [
          {
            'heading': "C++ Loops",
            'body': "Loops can execute a block of code as long as a specified condition is reached."
                "\n\nLoops are handy because they save time, reduce errors, and they make code more readable."
          },
          {
            'heading': "While Loop",
            'body':
                "The while loop loops through a block of code as long as a specified condition is true:"
                    "\n\nSyntax",
            'attachment': "assets/cPlus_intermediate/10.50.png"
          },
          {
            'body':
                "In the example below, the code in the loop will run, over and over again, as long as a variable (i) is less than 5:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.51.png"
          },
          {
            'body':
                "*Note: Do not forget to increase the variable used in the condition, otherwise the loop will never end!"
          },
        ]
      },
      33: {
        'topic': '     15.1     Do/While Loop',
        'subTopic': [
          {
            'heading': "The Do/While Loop",
            'body':
                "The do/while loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true."
                    "\n\nSyntax",
            'attachment': "assets/cPlus_intermediate/10.52.png"
          },
          {
            'body':
                "The example below uses a do/while loop. The loop will always be executed at least once, even if the condition is false, because the code block is executed before the condition is tested:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.53.png"
          },
          {
            'body':
                "*Note:Do not forget to increase the variable used in the condition, otherwise the loop will never end!"
          },
        ]
      },
      34: {
        'topic': '16.     For Loop',
        'subTopic': [
          {
            'heading': "For Loop",
            'body':
                "When you know exactly how many times you want to loop through a block of code, use the for loop instead of a while loop:"
                    "\n\nSyntax",
            'attachment': "assets/cPlus_intermediate/10.54.png"
          },
          {
            'body': "Statement 1 - is executed (one time) before the execution of the code block."
                "\n\nStatement 2 - defines the condition for executing the code block."
                "\n\nStatement 3 - is executed (every time) after the code block has been executed."
                "\n\nThe example below will print the numbers 0 to 4:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.55.png"
          },
          {
            'body': "Example explained"
                "\n\nStatement 1 sets a variable before the loop starts (int i = 0)."
                "\n\nStatement 2 defines the condition for the loop to run (i must be less than 5). If the condition is true, the loop will start over again, if it is false, the loop will end."
                "\n\nStatement 3 increases a value (i++) each time the code block in the loop has been executed."
                "\n\nAnother Example: This example will only print even values between 0 and 10:",
            'attachment': "assets/cPlus_intermediate/10.56.png"
          },
          {
            'heading': "Nested Loops",
            'body': "It is also possible to place a loop inside another loop. This is called a nested loop."
                '\n\nThe "inner loop" will be executed one time for each iteration of the "outer loop":'
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.57.png"
          },
          {
            'heading': "The foreach Loop",
            'body':
                'There is also a "for-each loop" (introduced in C++ version 11 (2011), which is used exclusively to loop through elements in an array (or other data sets):'
                    "\n\nSyntax",
            'attachment': "assets/cPlus_intermediate/10.58.png"
          },
          {
            'body':
                'The following example outputs all elements in an array, using a "for-each loop":'
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.59.png"
          },
        ]
      },
      35: {
        'topic': '17.     Break and Continue',
        'subTopic': [
          {
            'heading': "Break",
            'body': 'You have already seen the break statement used in an earlier chapter of this tutorial. It was used to "jump out" of a switch statement.'
                "\n\nThe break statement can also be used to jump out of a loop."
                "\n\nThis example jumps out of the loop when i is equal to 4:"
                "\n\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.60.png"
          },
          {
            'heading': "Continue",
            'body':
                "The continue statement breaks one iteration (in the loop), if a specified condition occurs, and continues with the next iteration in the loop."
                    "\nThis example skips the value of 4:"
                    "\n\n\nExample",
            'attachment': "assets/cPlus_intermediate/10.61.png"
          },
          {
            'heading': "Break and Continue in While Loop",
            'body': "You can also use break and continue in while loops:"
                "\n\nBreak Example",
            'attachment': "assets/cPlus_intermediate/10.62.png"
          },
          {
            'body': "Continue Example",
            'attachment': "assets/cPlus_intermediate/10.63.png"
          },
        ]
      },
      36: {
        'topic': '18.     Arrays',
        'subTopic': [
          {
            'heading': "Arrays",
            'body': "Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value."
                "\n\nTo declare an array, define the variable type, specify the name of the array followed by square brackets and specify the number of elements it should store:",
            'attachment': "assets/cPlus_intermediate/18.1.png"
          },
          {
            'body':
                "We have now declared a variable that holds an array of four strings. To insert values to it, we can use an array literal - place the values in a comma-separated list, inside curly braces:",
            'attachment': "assets/cPlus_intermediate/18.2.png"
          },
          {
            'body': "To create an array of three integers, you could write:",
            'attachment': "assets/cPlus_intermediate/18.3.png"
          },
          {
            'heading': "\nAccess the Elements of an Array",
            'body': "You access an array element by referring to the index number inside square brackets []."
                "\n\nThis statement accesses the value of the first element in cars:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.4.png"
          },
          {
            'body':
                "Note: Array indexes start with 0: [0] is the first element. [1] is the second element, etc."
          },
          {
            'heading': "Change an Array Element",
            'body':
                "To change the value of a specific element, refer to the index number:",
            'attachment': "assets/cPlus_intermediate/18.5.png"
          },
          {
            'body': "Example",
            'attachment': "assets/cPlus_intermediate/18.6.png"
          }
        ]
      },
      37: {
        'topic': '     18.1     Arrays and Loops',
        'subTopic': [
          {
            'heading': "Loop Through an Array",
            'body': "You can loop through the array elements with the for loop."
                "\n\nThe following example outputs all elements in the cars array:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.7.png"
          },
          {
            'body':
                "This example outputs the index of each element together with its value:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.8.png"
          },
          {
            'body':
                "And this example shows how to loop through an array of integers:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.9.png"
          },
          {
            'heading': "The foreach Loop",
            'body':
                'There is also a "for-each loop" (introduced in C++ version 11 (2011), which is used exclusively to loop through elements in an array:'
                    "\n\nSyntax",
            'attachment': "assets/cPlus_intermediate/18.10.png"
          },
          {
            'body':
                'The following example outputs all elements in an array, using a "for-each loop":'
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.11.png"
          },
        ]
      },
      38: {
        'topic': '     18.2     Omit Array Size',
        'subTopic': [
          {
            'heading': "Omit Array Size",
            'body':
                "In C++, you don't have to specify the size of the array. The compiler is smart enough to determine the size of the array based on the number of inserted values:",
            'attachment': "assets/cPlus_intermediate/18.12.png"
          },
          {
            'body': "The example above is equal to:",
            'attachment': "assets/cPlus_intermediate/18.13.png"
          },
          {
            'body':
                'However, the last approach is considered as "good practice", because it will reduce the chance of errors in your program.'
          },
          {
            'heading': "Omit Elements on Declaration",
            'body':
                "It is also possible to declare an array without specifying the elements on declaration, and add them later:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.14.png"
          }
        ]
      },
      39: {
        'topic': '     18.3     Get Array Size',
        'subTopic': [
          {
            'heading': "Get the Size of an Array",
            'body':
                "To get the size of an array, you can use the sizeof() operator:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.15.png"
          },
          {
            'body': "Why did the result show 20 instead of 5, when the array contains 5 elements?"
                "\n\nIt is because the sizeof() operator returns the size of a type in bytes."
                "\n\nYou learned from the Data Types chapter that an int type is usually 4 bytes, so from the example above, 4 x 5 (4 bytes x 5 elements) = 20 bytes."
                "\n\nTo find out how many elements an array has, you have to divide the size of the array by the size of the data type it contains:"
                "\n\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.16.png"
          },
          {
            'heading': "\nLoop Through an Array with sizeof()",
            'body': "In the Arrays and Loops Chapter, we wrote the size of the array in the loop condition (i < 5). This is not ideal, since it will only work for arrays of a specified size."
                "\n\nHowever, by using the sizeof() approach from the example above, we can now make loops that work for arrays of any size, which is more sustainable."
                "\n\nInstead of writing:",
            'attachment': "assets/cPlus_intermediate/18.17.png"
          },
          {
            'body': "It is better to write:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.18.png"
          },
          {
            'body':
                'Note that, in C++ version 11 (2011), you can also use the "for-each" loop:'
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.19.png"
          },
          {
            'body':
                "It is good to know the different ways to loop through an array, since you may encounter them all in different programs."
          }
        ]
      },
      40: {
        'topic': '     18.4     Multidimensional Arrays',
        'subTopic': [
          {
            'heading': "Multi-Dimensional Arrays",
            'body': "A multi-dimensional array is an array of arrays."
                "\n\nTo declare a multi-dimensional array, define the variable type, specify the name of the array followed by square brackets which specify how many elements the main array has, followed by another set of square brackets which indicates how many elements the sub-arrays have:",
            'attachment': "assets/cPlus_intermediate/18.20.png"
          },
          {
            'body':
                "As with ordinary arrays, you can insert values with an array literal - a comma-separated list inside curly braces. In a multi-dimensional array, each element in an array literal is another array literal.",
            'attachment': "assets/cPlus_intermediate/18.21.png"
          },
          {
            'body': "Each set of square brackets in an array declaration adds another dimension to an array. An array like the one above is said to have two dimensions."
                "\n\nArrays can have any number of dimensions. The more dimensions an array has, the more complex the code becomes. The following array has three dimensions:",
            'attachment': "assets/cPlus_intermediate/18.22.png"
          },
          {
            'heading': "\nAccess the Elements of a Multi-Dimensional Array",
            'body': "To access an element of a multi-dimensional array, specify an index number in each of the array's dimensions."
                "\n\nThis statement accesses the value of the element in the first row (0) and third column (2) of the letters array."
                "\n\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.23.png"
          },
          {
            'body':
                "*Remember that: Array indexes start with 0: [0] is the first element. [1] is the second element, etc."
          },
          {
            'heading': "Change Elements in a Multi-Dimensional Array",
            'body':
                "To change the value of an element, refer to the index number of the element in each of the dimensions:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.24.png"
          },
          {
            'heading': "\nLoop Through a Multi-Dimensional Array",
            'body': "To loop through a multi-dimensional array, you need one loop for each of the array's dimensions."
                "\n\nThe following example outputs all elements in the letters array:"
                "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.25.png"
          },
          {
            'body':
                "This example shows how to loop through a three-dimensional array:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.26.png"
          },
          {
            'heading': "\nWhy Multi-Dimensional Arrays?",
            'body':
                "Multi-dimensional arrays are great at representing grids. This example shows a practical use for them. In the following example we use a multi-dimensional array to represent a small game of Battleship:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/18.27.png"
          },
          {
            'body': "Output:",
            'attachment': "assets/cPlus_intermediate/18.28.png"
          },
        ]
      },
      41: {
        'topic': '19.     Structures',
        'subTopic': [
          {
            'heading': "C++ Structures",
            'body': "Structures (also called structs) are a way to group several related variables into one place. Each variable in the structure is known as a member of the structure."
                "\n\nUnlike an array, a structure can contain many different data types (int, string, bool, etc.)."
          },
          {
            'heading': "\nCreate a Structure",
            'body': "To create a structure, use the struct keyword and declare each of its members inside curly braces."
                "\n\nAfter the declaration, specify the name of the structure variable (myStructure in the example below):"
                "\n\nSyntax",
            'attachment': "assets/cPlus_intermediate/19.1.png"
          },
          {
            'heading': "Access Structure Members",
            'body': "To access members of a structure, use the dot syntax (.):"
                "\n\nExample: Assign data to members of a structure and print it:",
            'attachment': "assets/cPlus_intermediate/19.2.png"
          },
          {
            'heading': "One Structure in Multiple Variables",
            'body':
                "You can use a comma (,) to use one structure in many variables:",
            'attachment': "assets/cPlus_intermediate/19.3.png"
          },
          {
            'body':
                "This example shows how to use a structure in two different variables:"
                    "\n\nExample: Use one structure to represent two cars:",
            'attachment': "assets/cPlus_intermediate/19.4.png"
          },
          {
            'heading': "Named Structures",
            'body': "By giving a name to the structure, you can treat it as a data type. This means that you can create variables with this structure anywhere in the program at any time."
                "\n\nTo create a named structure, put the name of the structure right after the struct keyword:",
            'attachment': "assets/cPlus_intermediate/19.5.png"
          },
          {
            'body':
                "To declare a variable that uses the structure, use the name of the structure as the data type of the variable:",
            'attachment': "assets/cPlus_intermediate/19.6.png"
          },
          {
            'body': "Example: Use one structure to represent two cars:",
            'attachment': "assets/cPlus_intermediate/19.7.png"
          },
        ]
      },
      42: {
        'topic': '20.     References',
        'subTopic': [
          {
            'headimg': "Creating References",
            'body':
                'A reference variable is a "reference" to an existing variable, and it is created with the & operator:',
            'attachment': "assets/cPlus_intermediate/19.8.png"
          },
          {
            'body':
                "Now, we can use either the variable name food or the reference name meal to refer to the food variable:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/19.9.png"
          },
        ]
      },
      43: {
        'topic': '     20.1     Memory Address',
        'subTopic': [
          {
            'heading': "Memory Address",
            'body': "In the example from the previous page, the '&' operator was used to create a reference variable. But it can also be used to get the memory address of a variable; which is the location of where the variable is stored on the computer."
                "\n\nWhen a variable is created in C++, a memory address is assigned to the variable. And when we assign a value to the variable, it is stored in this memory address."
                "\n\nTo access it, use the '&' operator, and the result will represent where the variable is stored:"
                "\n\n\nExample",
            'attachment': "assets/cPlus_intermediate/19.10.png"
          },
          {
            'body':
                "^Note: The memory address is in hexadecimal form (0x..). Note that you may not get the same result in your program."
          },
          {
            'heading': "And why is it useful to know the memory address?",
            'body': "References and Pointers (which you will learn about in the next chapter) are important in C++, because they give you the ability to manipulate the data in the computer\'s memory - which can reduce the code and improve the performance."
                "\n\nThese two features are one of the things that make C++ stand out from other programming languages, like Python and Java."
          }
        ]
      },
      44: {
        'topic': '21.     Creating Pointers',
        'subTopic': [
          {
            'heading': "Creating Pointers",
            'body':
                "You learned from the previous chapter, that we can get the memory address of a variable by using the '&' operator:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/20.1.png"
          },
          {
            'body': "A pointer however, is a variable that stores the memory address as its value."
                "\n\nA pointer variable points to a data type (like int or string) of the same type, and is created with the '*' operator. The address of the variable you\'re working with is assigned to the pointer:"
                "\n\n\nExample",
            'attachment': "assets/cPlus_intermediate/20.2.png"
          },
          {
            'body': "Example explained"
                "\n\nCreate a pointer variable with the name 'ptr', that points to a 'string' variable, by using the asterisk sign '*' (string* ptr). Note that the type of the pointer has to match the type of the variable you\'re working with."
                "\n\nUse the & operator to store the memory address of the variable called food, and assign it to the pointer."
                "\n\nNow, ptr holds the value of food\'s memory address."
                "\n\n*Tip: There are three ways to declare pointer variables, but the first way is preferred:",
            'attachment': "assets/cPlus_intermediate/20.3.png"
          },
        ]
      },
      45: {
        'topic': '     21.1     Dereferencing',
        'subTopic': [
          {
            'heading': "Get Memory Address and Value",
            'body':
                "In the example from the previous page, we used the pointer variable to get the memory address of a variable (used together with the '&' reference operator). However, you can also use the pointer to get the value of the variable, by using the '*' operator (the dereference operator):"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/21.1.png"
          },
          {
            'body': "*Note that the '*' sign can be confusing here, as it does two different things in our code:"
                "\n\n   • When used in declaration (string* ptr), it creates a pointer variable."
                "\n\n   • When not used in declaration, it act as a dereference operator."
          },
        ]
      },
      46: {
        'topic': '     21.2     Modify Pointers',
        'subTopic': [
          {
            'heading': "Modify the Pointer Value",
            'body':
                "You can also change the pointer's value. But note that this will also change the value of the original variable:"
                    "\n\nExample",
            'attachment': "assets/cPlus_intermediate/21.2.png"
          }
        ]
      },
    },
    Categories.advanced: {
      0: {
        'topic': '1.    Functions',
        'subTopic': [
          {
            'heading': "C++ Functions",
            'body': "A function is a block of code which only runs when it is called."
                "\n\nYou can pass data, known as parameters, into a function."
                "\n\nFunctions are used to perform certain actions, and they are important for reusing code: Define the code once, and use it many times."
          },
          {
            'heading': "\nCreate a Function",
            'body': "C++ provides some pre-defined functions, such as main(), which is used to execute code. But you can also create your own functions to perform certain actions."
                "\n\nTo create (often referred to as declare) a function, specify the name of the function, followed by parentheses ():"
                "\n\nSyntax",
            'attachment': "assets/cPlus_intermediate/22.1.png"
          },
          {
            'body': "Example Explained"
                "\n\n   • myFunction() is the name of the function"
                "\n\n   • void means that the function does not have a return value. You will learn more about return values later in the next chapter"
                "\n\n   • inside the function (the body), add code that defines what the function should do"
          },
          {
            'heading': "\nCall a Function",
            'body': 'Declared functions are not executed immediately. They are "saved for later use", and will be executed later, when they are called.'
                '\n\nTo call a function, write the function\'s name followed by two parentheses \'()\' and a semicolon \';\''
                '\n\nIn the following example, myFunction() is used to print a text (the action), when it is called:'
                '\n\nExample'
                '\n\nInside main, call myFunction():',
            'attachment': "assets/cPlus_advanced/1.1.png"
          },
          {
            'body': "A function can be called multiple times:"
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.2.png"
          },
          {
            'heading': "\nFunction Declaration and Definition",
            'body': "   • Declaration: the return type, the name of the function, and parameters (if any)"
                "\n\n   • Definition: the body of the function (code to be executed)",
            'attachment': "assets/cPlus_advanced/1.3.png"
          },
          {
            'body':
                "Note: If a user-defined function, such as myFunction() is declared after the main() function, an error will occur:"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.4.png"
          },
          {
            'body': "However, it is possible to separate the declaration and the definition of the function - for code optimization."
                "\n\nYou will often see C++ programs that have function declaration above main(), and function definition below main(). This will make the code better organized and easier to read:"
                "\n\n\nExample",
            'attachment': "assets/cPlus_advanced/1.5.png"
          },
        ]
      },
      1: {
        'topic': '2.     Function Parameters',
        'subTopic': [
          {
            'heading': "Parameters and Arguments",
            'body': "Information can be passed to functions as a parameter. Parameters act as variables inside the function."
                "\n\nParameters are specified after the function name, inside the parentheses. You can add as many parameters as you want, just separate them with a comma:"
                "\n\nSyntax",
            'attachment': "assets/cPlus_advanced/1.6.png"
          },
          {
            'body':
                "The following example has a function that takes a string called fname as parameter. When the function is called, we pass along a first name, which is used inside the function to print the full name:"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.7.png"
          },
          {
            'body':
                "*When a parameter is passed to the function, it is called an argument. So, from the example above: fname is a parameter, while Hanna, Jaesy and Mark are arguments."
          },
        ]
      },
      2: {
        'topic': '     2.1     Default Parameters',
        'subTopic': [
          {
            'heading': "Default Parameter Value",
            'body': "You can also use a default parameter value, by using the equals sign (=)."
                '\n\nIf we call the function without an argument, it uses the default value ("Norway"):'
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.8.png"
          },
          {
            'body':
                'A parameter with a default value, is often known as an "optional parameter". From the example above, country is an optional parameter and "Norway" is the default value.'
          },
        ]
      },
      3: {
        'topic': '     2.2     Multiple Parameters',
        'subTopic': [
          {
            'heading': "Multiple Parameters",
            'body':
                "Inside the function, you can add as many parameters as you want:"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.9.png"
          },
          {
            'body':
                "*Note that when you are working with multiple parameters, the function call must have the same number of arguments as there are parameters, and the arguments must be passed in the same order."
          }
        ]
      },
      4: {
        'topic': '     2.3     Return Values',
        'subTopic': [
          {
            'heading': "Return Values",
            'body':
                "The void keyword, used in the previous examples, indicates that the function should not return a value. If you want the function to return a value, you can use a data type (such as int, string, etc.) instead of void, and use the return keyword inside the function:"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.10.png"
          },
          {
            'body':
                "This example returns the sum of a function with two parameters:"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.11.png"
          },
          {
            'body': "You can also store the result in a variable:"
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.12.png"
          },
        ]
      },
      5: {
        'topic': '     2.4     Pass By Reference',
        'subTopic': [
          {
            'heading': "Pass By Reference",
            'body':
                "In the examples from the previous page, we used normal variables when we passed parameters to a function. You can also pass a reference to the function. This can be useful when you need to change the value of the arguments:"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.13.png"
          },
        ]
      },
      6: {
        'topic': '     2.5     Pass Array to a Function',
        'subTopic': [
          {
            'heading': "Pass Arrays as Function Parameters",
            'body': "You can also pass arrays to a function:"
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.14.png"
          },
          {
            'body': "Example Explained"
                "\n\nThe function (myFunction) takes an array as its parameter (int myNumbers[5]), and loops through the array elements with the for loop."
                "\n\nWhen the function is called inside main(), we pass along the myNumbers array, which outputs the array elements."
                "\n\n*Note that when you call the function, you only need to use the name of the array when passing it as an argument myFunction(myNumbers). However, the full declaration of the array is needed in the function parameter (int myNumbers[5])."
          }
        ]
      },
      7: {
        'topic': '3.     Function Overloading',
        'subTopic': [
          {
            'heading': "Function Overloading",
            'body':
                "With function overloading, multiple functions can have the same name with different parameters:"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.15.png"
          },
          {
            'body':
                "Consider the following example, which have two functions that add numbers of different type:"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.16.png"
          },
          {
            'body': "Instead of defining two functions that should do the same thing, it is better to overload one."
                "\n\nIn the example below, we overload the plusFunc function to work for both int and double:"
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.17.png"
          },
          {
            'body':
                "*Note: Multiple functions can have the same name as long as the number and/or type of parameters are different."
          },
        ]
      },
      8: {
        'topic': '4.     Recursion',
        'subTopic': [
          {
            'heading': "Recursion",
            'body': "Recursion is the technique of making a function call itself. This technique provides a way to break complicated problems down into simple problems which are easier to solve."
                "\n\nRecursion may be a bit difficult to understand. The best way to figure out how it works is to experiment with it.",
          },
          {
            'heading': "Recursion Example",
            'body':
                "Adding two numbers together is easy to do, but adding a range of numbers is more complicated. In the following example, recursion is used to add a range of numbers together by breaking it down into the simple task of adding two numbers:"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.18.png"
          },
          {
            'body': "Example Explained"
                "\n\nWhen the sum() function is called, it adds parameter k to the sum of all numbers smaller than k and returns the result. When k becomes 0, the function just returns 0. When running, the program follows these steps:",
            'attachment': "assets/cPlus_advanced/1.19.png"
          },
          {
            'body': "Since the function does not call itself when k is 0, the program stops there and returns the result."
                "\n\n*The developer should be very careful with recursion as it can be quite easy to slip into writing a function which never terminates, or one that uses excess amounts of memory or processor power. However, when written correctly recursion can be a very efficient and mathematically-elegant approach to programming."
          }
        ]
      },
      9: {
        'topic': '5.     OOP',
        'subTopic': [
          {
            'heading': "What is OOP?",
            'body': "OOP stands for Object-Oriented Programming."
                "\n\nProcedural programming is about writing procedures or functions that perform operations on the data, while object-oriented programming is about creating objects that contain both data and functions."
                "\n\nObject-oriented programming has several advantages over procedural programming:"
                "\n\n   • OOP is faster and easier to execute"
                "\n\n   • OOP provides a clear structure for the programs"
                '\n\n   • OOP helps to keep the C++ code DRY "Don\'t Repeat Yourself", and makes the code easier to maintain, modify and debug'
                "\n\n   • OOP makes it possible to create full reusable applications with less code and shorter development time"
                '\n\nTip: The "Don\'t Repeat Yourself" (DRY) principle is about reducing the repetition of code. You should extract out the codes that are common for the application, and place them at a single place and reuse them instead of repeating it.',
          },
          {
            'heading': "C++ What are Classes and Objects?",
            'body': "Classes and objects are the two main aspects of object-oriented programming."
                "\n\nLook at the following illustration to see the difference between class and objects:",
            'attachment': "assets/cPlus_advanced/1.20.png"
          },
          {
            'body': "Another example:",
            'attachment': "assets/cPlus_advanced/1.21.png"
          },
          {
            'body': "So, a class is a template for objects, and an object is an instance of a class."
                "\n\nWhen the individual objects are created, they inherit all the variables and functions from the class."
                "\n\nYou will learn much more about classes and objects in the next chapter."
          }
        ]
      },
      10: {
        'topic': '6.     Classes and Objects',
        'subTopic': [
          {
            'heading': "C++ Classes/Objects",
            'body': 'C++ is an object-oriented programming language.'
                '\n\nEverything in C++ is associated with classes and objects, along with its attributes and methods. For example: in real life, a car is an object. The car has attributes, such as weight and color, and methods, such as drive and brake.'
                '\n\nAttributes and methods are basically variables and functions that belongs to the class. These are often referred to as "class members".'
                '\n\nA class is a user-defined data type that we can use in our program, and it works as an object constructor, or a "blueprint" for creating objects.',
          },
          {
            'heading': "Create a Class",
            'body': "To create a class, use the class keyword:"
                "\n\nExample"
                '\n\nCreate a class called "MyClass":',
            'attachment': "assets/cPlus_advanced/1.22.png"
          },
          {
            'body': "Example explained"
                "\n\n   • The class keyword is used to create a class called MyClass."
                "\n\n   • The public keyword is an access specifier, which specifies that members (attributes and methods) of the class are accessible from outside the class. You will learn more about access specifiers later."
                "\n\n   • Inside the class, there is an integer variable myNum and a string variable myString. When variables are declared within a class, they are called attributes."
                "\n\n   • At last, end the class definition with a semicolon ;."
          },
          {
            'heading': "Create an Object",
            'body': "In C++, an object is created from a class. We have already created the class named MyClass, so now we can use this to create objects."
                "\n\nTo create an object of MyClass, specify the class name, followed by the object name."
                "\n\nTo access the class attributes (myNum and myString), use the dot syntax (.) on the object:"
                "\n\n\nExample"
                '\n\nCreate an object called "myObj" and access the attributes:',
            'attachment': "assets/cPlus_advanced/1.23.png"
          },
          {
            'heading': "Multiple Objects",
            'body': "You can create multiple objects of one class:"
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.24.png"
          },
        ]
      },
      11: {
        'topic': '7.     Class Methods',
        'subTopic': [
          {
            'heading': "Class Methods",
            'body': "Methods are functions that belongs to the class."
                "\n\nThere are two ways to define functions that belongs to a class:"
                "\n\n   • Inside class definition"
                "\n\n   • Outside class definition"
                '\n\nIn the following example, we define a function inside the class, and we name it "myMethod".'
                "\n\n*Note: You access methods just like you access attributes; by creating an object of the class and using the dot syntax (.):"
                "\n\n\nInside Example",
            'attachment': "assets/cPlus_advanced/1.25.png"
          },
          {
            'body':
                "To define a function outside the class definition, you have to declare it inside the class and then define it outside of the class. This is done by specifiying the name of the class, followed the scope resolution :: operator, followed by the name of the function:"
                    "\n\nOutside Example",
            'attachment': "assets/cPlus_advanced/1.26.png"
          },
          {
            'heading': "Parameters",
            'body': "You can also add parameters:"
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.27.png"
          },
        ]
      },
      12: {
        'topic': '8.     Constructors',
        'subTopic': [
          {
            'heading': "Constructors",
            'body': "A constructor in C++ is a special method that is automatically called when an object of a class is created."
                "\n\nTo create a constructor, use the same name as the class, followed by parentheses ():"
                "\n\n\nExample",
            'attachment': "assets/cPlus_advanced/1.28.png"
          },
          {
            'body':
                "*Note: The constructor has the same name as the class, it is always public, and it does not have any return value."
          },
          {
            'heading': "Constructor Parameters",
            'body': "Constructors can also take parameters (just like regular functions), which can be useful for setting initial values for attributes."
                "\n\nThe following class have brand, model and year attributes, and a constructor with different parameters. Inside the constructor we set the attributes equal to the constructor parameters (brand=x, etc). When we call the constructor (by creating an object of the class), we pass parameters to the constructor, which will set the value of the corresponding attributes to the same:"
                "\n\n\nExample",
            'attachment': "assets/cPlus_advanced/1.29.png"
          },
          {
            'body':
                "Just like functions, constructors can also be defined outside the class. First, declare the constructor inside the class, and then define it outside of the class by specifying the name of the class, followed by the scope resolution :: operator, followed by the name of the constructor (which is the same as the class):"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.30.png"
          }
        ]
      },
      13: {
        'topic': '9.     Access Specifiers',
        'subTopic': [
          {
            'heading': "Access Specifiers",
            'body':
                "By now, you are quite familiar with the public keyword that appears in all of our class examples:"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.31.png"
          },
          {
            'body': "The public keyword is an access specifier. Access specifiers define how the members (attributes and methods) of a class can be accessed. In the example above, the members are public - which means that they can be accessed and modified from outside the code."
                "\n\nHowever, what if we want members to be private and hidden from the outside world?"
                "\n\nIn C++, there are three access specifiers:"
                "\n\n   • public - members are accessible from outside the class"
                "\n\n   • private - members cannot be accessed (or viewed) from outside the class"
                "\n\n   • protected - members cannot be accessed from outside the class, however, they can be accessed in inherited classes. You will learn more about Inheritance later."
                "\n\n\nIn the following example, we demonstrate the differences between public and private members:"
                "\n\n\nExample",
            'attachment': "assets/cPlus_advanced/1.32.png"
          },
          {
            'body': "If you try to access a private member, an error occurs:",
            'attachment': "assets/cPlus_advanced/1.33.png"
          },
          {
            'body': "*Note: It is possible to access private members of a class using a public method inside the same class. See the next chapter (Encapsulation) on how to do this."
                "\n\n*Tip: It is considered good practice to declare your class attributes as private (as often as you can). This will reduce the possibility of yourself (or others) to mess up the code. This is also the main ingredient of the Encapsulation concept, which you will learn more about in the next chapter."
                "\n\n\n*Note: By default, all members of a class are private if you don't specify an access specifier:"
                "\n\n\nExample",
            'attachment': "assets/cPlus_advanced/1.34.png"
          },
        ]
      },
      14: {
        'topic': '10.     Encapsulation',
        'subTopic': [
          {
            'heading': "Encapsulation",
            'body':
                'The meaning of Encapsulation, is to make sure that "sensitive" data is hidden from users. To achieve this, you must declare class variables/attributes as private (cannot be accessed from outside the class). If you want others to read or modify the value of a private member, you can provide public get and set methods.',
          },
          {
            'heading': "Access Private Members",
            'body':
                'To access a private attribute, use public "get" and "set" methods:'
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.35.png"
          },
          {
            'body': "Example explained"
                "\n\nThe salary attribute is private, which have restricted access."
                "\n\nThe public setSalary() method takes a parameter (s) and assigns it to the salary attribute (salary = s)."
                "\n\nThe public getSalary() method returns the value of the private salary attribute."
                "\n\nInside main(), we create an object of the Employee class. Now we can use the setSalary() method to set the value of the private attribute to 50000. Then we call the getSalary() method on the object to return the value."
          },
          {
            'heading': "Why Encapsulation?",
            'body':
                "   • It is considered good practice to declare your class attributes as private (as often as you can). Encapsulation ensures better control of your data, because you (or others) can change one part of the code without affecting other parts"
                    "   • Increased security of data",
          },
        ]
      },
      15: {
        'topic': '11.     Inheritance',
        'subTopic': [
          {
            'heading': "Inheritance",
            'body': 'In C++, it is possible to inherit attributes and methods from one class to another. We group the "inheritance concept" into two categories:'
                "\n\n   • derived class (child) - the class that inherits from another class"
                "\n\n   • base class (parent) - the class being inherited from"
                "\n\nTo inherit from a class, use the : symbol."
                "\n\nIn the example below, the Car class (child) inherits the attributes and methods from the Vehicle class (parent):"
                "\n\n\nExample",
            'attachment': "assets/cPlus_advanced/1.36.png"
          },
          {
            'body': 'Why And When To Use "Inheritance"?'
                "\n\n- It is useful for code reusability: reuse attributes and methods of an existing class when you create a new class."
          },
        ]
      },
      16: {
        'topic': '     11.1     Multilevel Inheritance',
        'subTopic': [
          {
            'heading': "Multilevel Inheritance",
            'body': "A class can also be derived from one class, which is already derived from another class."
                "\n\nIn the following example, MyGrandChild is derived from class MyChild (which is derived from MyClass)."
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.37.png"
          },
        ]
      },
      17: {
        'topic': '     11.2     Multiple Inheritance',
        'subTopic': [
          {
            'heading': "Multiple Inheritance",
            'body':
                "A class can also be derived from more than one base class, using a comma-separated list:"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.38.png"
          }
        ]
      },
      18: {
        'topic': '     11.3     Access Specifiers',
        'subTopic': [
          {
            'heading': "Access Specifiers",
            'body':
                "You learned from the Access Specifiers chapter that there are three specifiers available in C++. Until now, we have only used public (members of a class are accessible from outside the class) and private (members can only be accessed within the class). The third specifier, protected, is similar to private, but it can also be accessed in the inherited class:"
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.39.png"
          }
        ]
      },
      19: {
        'topic': '12.     Polymorphism',
        'subTopic': [
          {
            'heading': "Polymorphism",
            'body': 'Polymorphism means "many forms", and it occurs when we have many classes that are related to each other by inheritance.'
                '\n\nLike we specified in the previous chapter; Inheritance lets us inherit attributes and methods from another class. Polymorphism uses those methods to perform different tasks. This allows us to perform a single action in different ways.'
                '\n\nFor example, think of a base class called Animal that has a method called animalSound(). Derived classes of Animals could be Pigs, Cats, Dogs, Birds - And they also have their own implementation of an animal sound (the pig oinks, and the cat meows, etc.):'
                '\n\n\nExample',
            'attachment': "assets/cPlus_advanced/1.40.png"
          },
          {
            'body': "*Remember from the Inheritance chapter that we use the : symbol to inherit from a class."
                "\n\nNow we can create Pig and Dog objects and override the animalSound() method:"
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.41.png"
          },
          {
            'body': '*Why And When To Use "Inheritance" and "Polymorphism"?'
                '\n\n- It is useful for code reusability: reuse attributes and methods of an existing class when you create a new class.'
          },
        ]
      },
      20: {
        'topic': '13.     Files',
        'subTopic': [
          {
            'heading': "Files",
            'body': "The fstream library allows us to work with files."
                "\n\nTo use the fstream library, include both the standard <iostream> AND the <fstream> header file:"
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.42.png"
          },
          {
            'body':
                "There are three classes included in the fstream library, which are used to create, write or read files:",
            'attachment': "assets/cPlus_advanced/1.43.png"
          },
          {
            'heading': "Create and Write To a File",
            'body':
                "To create a file, use either the ofstream or fstream class, and specify the name of the file."
                    "\n\nTo write to the file, use the insertion operator (<<)."
                    "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.44.png"
          },
          {
            'heading': "Why do we close the file?",
            'body':
                "It is considered good practice, and it can clean up unnecessary memory space."
          },
          {
            'heading': "Read a File",
            'body': "To read from a file, use either the ifstream or fstream class, and the name of the file."
                "\n\nNote that we also use a while loop together with the getline() function (which belongs to the ifstream class) to read the file line by line, and to print the content of the file:"
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.45.png"
          },
        ]
      },
      21: {
        'topic': '14.     Exceptions',
        'subTopic': [
          {
            'heading': "Exceptions",
            'body': "When executing C++ code, different errors can occur: coding errors made by the programmer, errors due to wrong input, or other unforeseeable things."
                "\n\nWhen an error occurs, C++ will normally stop and generate an error message. The technical term for this is: C++ will throw an exception (throw an error).",
          },
          {
            'heading': "C++ try and catch",
            'body': "Exception handling in C++ consist of three keywords: try, throw and catch:"
                "\n\nThe try statement allows you to define a block of code to be tested for errors while it is being executed."
                "\n\nThe throw keyword throws an exception when a problem is detected, which lets us create a custom error."
                "\n\nThe catch statement allows you to define a block of code to be executed, if an error occurs in the try block."
                "\n\nThe try and catch keywords come in pairs:"
                "\n\n\nExample",
            'attachment': "assets/cPlus_advanced/1.46.png"
          },
          {
            'body': "Consider the following example:"
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.47.png"
          },
          {
            'body': "Example explained"
                "\n\nWe use the try block to test some code: If the age variable is less than 18, we will throw an exception, and handle it in our catch block."
                "\n\nIn the catch block, we catch the error and do something about it. The catch statement takes a parameter: in our example we use an int variable (myNum) (because we are throwing an exception of int type in the try block (age)), to output the value of age."
                "\n\nIf no error occurs (e.g. if age is 20 instead of 15, meaning it will be be greater than 18), the catch block is skipped:"
                "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.48.png"
          },
          {
            'body': "You can also use the throw keyword to output a reference number, like a custom error number/code for organizing purposes:"
            "\n\nExample",
            'attachment': "assets/cPlus_advanced/1.49.png"
          },
          {
            'heading': "\nHandle Any Type of Exceptions (...)",
            'body': 'If you do not know the throw type used in the try block, you can use the "three dots" syntax (...) inside the catch block, which will handle any type of exception:'
            '\n\nExample',
            'attachment': "assets/cPlus_advanced/1.50.png"
          },
        ]
      },
    },
  },
};
