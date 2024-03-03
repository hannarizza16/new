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
            'body': "The precision of a floating point value indicates how many digits the value can have after the decimal point. The precision of float is only six or seven decimal digits, while double variables have a precision of about 15 digits. Therefore it is safer to use double for most calculations.",
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
        'subTopic': [{
          'heading': "Boolean Data Types",
        }]
      },
      16: {
        'topic': '     8.4     Characters',
        'subTopic': [{
          'heading': "Character Data Types",

        }]
      },
      17: {
        'topic': '     8.5     Strings',
        'subTopic': [{
          'heading': "String Data Types",
        }]
      },
    },
    Categories.intermediate: {},
    Categories.advanced: {},
  },
};
