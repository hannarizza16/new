import 'package:charts_flutter/flutter.dart';
import 'package:first_project/enums/enums.dart';

const codex = {
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
            'body': "You can also output multiple lines with a single printf() function. However, this could make the code harder to read:"
          },
          {
            'attachment': 'assets/C/ss11.png',
            'body': "Tip: Two '\\n' characters after each other will create a blank line:"
          }
        ]
      },
      6: {
        'topic': '5.     Comments',
        'subTopic': [
          {
            'heading': 'Comments in C',
            'body': "Comments can be used to explain code, and to make it more readable. It can also be used to prevent execution when testing alternative code."
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
          {'heading': 'Create Variables',
            'body': "Variables are containers for storing data values, like numbers and characters."
            "\n\nIn C, there are different types of variables (defined with different keywords), for example:"
            "\n\n • int - stores integers (whole numbers), without decimals, such as 123 or -123"
            "\n\n • float - stores floating point numbers, with decimals, such as 19.99 or -19.99"
            "\n\n • char - stores single characters, such as 'a' or 'B'. Characters are surrounded by single quote"
          },
          {
            'heading': 'Declaring (Creating) Variables',
            'attachment': 'assets/C/ss15.png',
            'body': "To create a variable, specify the type and assign it a value:"
          },
          {
            'attachment': 'assets/C/ss16.png',
            'body': "Where type is one of C types (such as int), and variableName is the name of the variable (such as x or myName). The equal sign is used to assign a value to the variable."
          "\n\nSo, to create a variable that should store a number, look at the following example:"
          },
          {
            'attachment': 'assets/C/ss16.png',
            'body': "You can also declare a variable without assigning the value, and assign the value later:"
          },
          {
            'heading': 'Output Variables',
            'attachment': 'assets/C/ss1.png',
'body': "You learned from the output chapter that you can output values/print text with the printf() function:"
          },
{
  'body': "In many other programming languages (like Python, Java, and C++), you would normally use a print function to display the value of a variable. However, this is not possible in C:"

}
        ]
      },
      8: {
        'topic': '    6.1     Format Specifiers',
        'subTopic': [
          {'heading': 'Format Specifiers',
            'attachment': 'assets/C/ss19.png',
            'body': "Format specifiers are used together with the printf() function to tell the compiler what type of data the variable is storing. It is basically a placeholder for the variable value."
                "\n\nA format specifier starts with a percentage sign %, followed by a character."
                "\n\nFor example, to output the value of an int variable, use the format specifier %d surrounded by double quotes (""), inside the printf() function:"
          },
          {
            'attachment': 'assets/C/ss20.png',
            'body': "To print other types, use %c for char and %f for float:"
          },
          {
            'attachment': 'assets/C/ss21.png',
            'body': "To combine both text and a variable, separate them with a comma inside the printf() function:"
          },
          {
            'attachment': 'assets/C/ss22.png',
            'body': "To print different types in a single printf() function, you can use the following: "
          }
        ]
      },
      9: {
        'topic': '    6.2     Change Value',
        'subTopic': [
          {'heading': 'Change Variable Values',
            'attachment': 'assets/C/ss23.png',
            'body': "If you assign a new value to an existing variable, it will overwrite the previous value:"
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
            'body': "To add a variable to another variable, you can use the + operator:"
          }
        ]
      },
      10: {
        'topic': '    6.3     Multiple Variables',
        'subTopic': [
          {'heading': 'Declare Multiple Variables',
            'attachment': 'assets/C/ss27.png',
            'body': "To declare more than one variable of the same type, use a comma-separated list:"
          },
          {
            'attachment': 'assets/C/s28.png',
            'body': "You can also assign the same value to multiple variables of the same type:"
          }
        ]
      },
      11: {
        'topic': '    6.4     Variable Names (Identifiers)',
        'subTopic': [
          {'heading': 'Variable Names',
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
          {'heading': 'Real-Life Example',
            'attachment': 'assets/C/s30.png',
            'body': "Often in our examples, we simplify variable names to match their data type (myInt or myNum for int types, myChar for char types, and so on). This is done to avoid confusion."
          "\n\nHowever, if you want a real-life example of how variables can be used, take a look at the following, where we have made a program that stores different data of a college student:"
          },
          {
            'heading': '\n\nCalculate the Area of a Rectangle',
            'attachment': 'assets/C/s31.png',
            'body': "In this real-life example, we create a program to calculate the area of a rectangle (by multiplying the length and width):"
          }
        ]
      },
      13: {
        'topic': '7.     Data Types',
        'subTopic': [
          {'heading': 'Data Types',
            'attachment': 'assets/C/s32.png',
            'body': "As explained in the Variables chapter, a variable in C must be a specified data type, and you must use a format specifier inside the printf() function to display it:"
          },
          {
            'heading': 'Basic Data Types',
            'attachment': 'assets/C/s33.png',
            'body': "The data type specifies the size and type of information the variable will store."
                    "In this tutorial, we will focus on the most basic ones:"
          },
          {
            'heading': 'Basic Format Specifiers',
            'attachment': 'assets/C/s34.png',
            'body': "There are different format specifiers for each data type. Here are some of them:"
          }
        ]
      },
      14: {
        'topic': '    7.1     Character',
        'subTopic': [
          {'heading': 'The char Type',
            'attachment': 'assets/C/s35.png',
            'body': "The char data type is used to store a single character."
            "\n\nThe character must be surrounded by single quotes, like 'A' or 'c', and we use the %c format specifier to print it:"
          },
          {
            'attachment': 'assets/C/s36.png',
            'body': "Alternatively, if you are familiar with ASCII, you can use ASCII values to display certain characters. Note that these values are not surrounded by quotes (''), as they are numbers:"
          },
          {
            'heading': '\n\nNotes on Characters',
            'attachment': 'assets/C/s37.png',
            'body': "If you try to store more than a single character, it will only print the last character:"
            "\n\nNote: Don't use the char type for storing multiple characters, as it may produce errors."

          },
          {
            'attachment': 'assets/C/s38.png',
            'body': "To store multiple characters (or whole words), use strings (which you will learn more about in a later chapter):"
          }
          ]
      },
      15: {
        'topic': '    7.2     Numbers',
        'subTopic': [
          {'heading': 'Numeric Data Types',
            'attachment': 'assets/C/s39.png',
            'body': "Use int when you need to store a whole number without decimals, like 35 or 1000, and float or double when you need a floating point number (with decimals), like 9.99 or 3.14515."
          },
          {
            'heading': '\n\nScientific Numbers',
            'attachment': 'assets/C/s40.png',
            'body': "A floating point number can also be a scientific number with an 'e' to indicate the power of 10:"

          }
        ]
      },
      16: {
        'topic': '    7.3     Decimal Precision',
        'subTopic': [
          {
            'heading': 'Set Decimal Precision',
            'attachment': 'assets/C/s41.png',
            'body': "You have probably already noticed that if you print a floating point number, the output will show many digits after the decimal point:"
          },
          {
            'attachment': 'assets/C/s42.png',
            'body': "If you want to remove the extra zeros (set decimal precision), you can use a dot (.) followed by a number that specifies how many digits that should be shown after the decimal point:"
          }
        ]
      },
      17: {
        'topic': '    7.4     Memory Size',
        'subTopic': [
          {
            'heading': 'Get the Memory Size',
            'attachment': 'assets/C/s43.png',
            'body': "We introduced in the data types chapter that the memory size of a variable varies depending on the type:"
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
            'body': "Here's a real-life example of using different data types, to calculate and output the total cost of a number of items:"

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
          'body': "To get the right result, you need to know how type conversion works."
            "\n\nThere are two types of conversion in C:"
            "\n\n: Implicit Conversion (automatically)"
            "\n\n: Explicit Conversion (manually)"
          },
          {
            'heading': 'Implicit Conversion',
            'attachment': 'assets/C/s47.png',
            'body': "Implicit conversion is done automatically by the compiler when you assign a value of one type to another."
            "\n\nFor example, if you assign an int value to a float type:"
          },
          {
            'attachment': 'assets/C/s48.png',
            'body': "As you can see, the compiler automatically converts the int value 9 to a float value of 9.000000.\n\n This can be risky, as you might lose control over specific values in certain situations.\n\n Especially if it was the other way around - the following example automatically converts the float value 9.99 to an int value of 9:"
          },
          {
            'attachment': 'assets/C/s49.png',
            'body': "What happened to .99? We might want that data in our program! So be careful. It is important that you know how the compiler work in these situations, to avoid unexpected results.\n\nAs another example, if you divide two integers: 5 by 2, you know that the sum is 2.5. And as you know from the beginning of this page, if you store the sum as an integer, the result will only display the number 2. Therefore, it would be better to store the sum as a float or a double, right?"
          },
          {
            'body': "Why is the result 2.00000 and not 2.5? Well, it is because 5 and 2 are still integers in the division. In this case, you need to manually convert the integer values to floating-point values. (see below)."
          },
          {
            'heading': 'Explicit Conversion',
            'attachment': 'assets/C/s50.png',
            'body': "Explicit conversion is done manually by placing the type in parentheses () in front of the value.\n\nConsidering our problem from the example above, we can now get the right result:"
          },
          {
            'attachment': 'assets/C/s51.png',
            'body': "You can also place the type in front of a variable:"
          },
          {
            'attachment': 'assets/C/s52.png',
            'body': "And since you learned about 'decimal precision' in the previous chapter, you could make the output even cleaner by removing the extra zeros (if you like):"
          },
          {
            'heading': 'Real-Life Example',
            'attachment': 'assets/C/s53.png',
            'body': "Here's a real-life example of data types and type conversion where we create a program to calculate the percentage of a user's score in relation to the maximum score in a game:"
          }
        ]
      },
      20: {
        'topic': '8.     Constants',
        'subTopic': [
          {
            'heading': 'Constants',
            'attachment': 'assets/C/s54.png',
            'body': "If you don't want others (or yourself) to change existing variable values, you can use the const keyword.\n\nThis will declare the variable as 'constant', which means unchangeable and read-only:"
          },
          {
            'attachment': 'assets/C/s55.png',
            'body': "You should always declare the variable as constant when you have values that are unlikely to change:"
          },
          {
            'heading': '\n\nNotes On Constants',
            'attachment': 'assets/C/s56.png',
            'body': "When you declare a constant variable, it must be assigned with a value:"
          },
          {
            'heading': '\n\nGood Practice',
            'body': "Another thing about constant variables, is that it is considered good practice to declare them with uppercase.\n\nIt is not required, but useful for code readability and common for C programmers:\n\n   const int BIRTHYEAR = 1980;"
          }
        ]
      },
      21: {
        'topic': '9.    Operators',
        'subTopic': [
          {
            'heading': 'Operators',
            'attachment': 'assets/C/s57.png',
            'body': "Operators are used to perform operations on variables and values.\n\n In the example below, we use the + operator to add together two values:"
          },
          {
            'attachment': 'assets/C/s58.png',
            'body': "Although the + operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:"
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
            'body': "Arithmetic operators are used to perform common mathematical operations."
          },
          {
            'heading': '\n\nAssignment Operators',
            'attachment': 'assets/C/s60.png',
            'body': "Assignment operators are used to assign values to variables.\n\nIn the example below, we use the assignment operator (=) to assign the value 10 to a variable called x:"
          },
          {
            'attachment': 'assets/C/s61.png',
            'body': "The addition assignment operator (+=) adds a value to a variable:"
          },
          {
            'attachment': 'assets/C/s62.png',
            'body': "A list of all assignment operators:"
          },
          {
            'heading': '\n\nComparison Operators',
            'attachment': 'assets/C/s63.png',
            'body': "Comparison operators are used to compare two values (or variables). This is important in programming, because it helps us to find answers and make decisions.\n\nThe return value of a comparison is either 1 or 0, which means true (1) or false (0). These values are known as Boolean values, and you will learn more about them in the Booleans and If..Else chapter.\n\nIn the following example, we use the greater than operator (>) to find out if 5 is greater than 3:"
          },
          {
            'attachment': 'assets/C/s64.png',
            'body': "A list of all comparison operators:"
          },
          {
            'heading': '\n\nLogical Operators',
            'attachment': 'assets/C/s65.png',
            'body': "You can also test for true or false values with logical operators.\n\nLogical operators are used to determine the logic between variables or values:"
          }
        ]
      }








    },
    Categories.intermediate: {},
    Categories.advanced: {},
  },
  Languages.cplusplus: {
    Categories.beginner: {},
    Categories.intermediate: {},
    Categories.advanced: {},
  },
  Languages.java: {
    Categories.beginner: {
      0: {
        'topic': '1.    Introduction to Java',
        'subTopic': [
          {
            'heading': 'What is Java?',
            'body': "Java is a popular programming language, created in 1995. "
                "It is owned by Oracle, and more than 3 billion devices run Java."
                "\n\nIt is used for:"
                "\n\n   • Mobile applications (specially Android apps)"
                "\n   • Desktop applications"
                "\n   • Web applications"
                "\n   • Web servers and application servers"
                "\n   • GamesDatabase connection"
          },
          {
            'heading': 'Why Use Java?',
            'body': "\n   • Java works on different platforms \n     (Windows, Mac, Linux, Raspberry Pi, etc.)"
                "\n   • It is one of the most popular programming \n      language in the world "
                "\n   • It has a large demand in the current job market"
                "\n   • It is easy to learn and simple to use "
                "\n   • It is open-source and free "
                "\n   • It is secure, fast and powerful "
                "\n   • It has a huge community support \n      (tens of millions of developers) "
                "\n   • Java is an object oriented language which gives"
                "\n      a clear structure to programs and allows code"
                "\n      to be reused, lowering development costs "
                "\n   • As Java is close to C++ and C#, it makes it easy "
                "\n      for programmers to switch to Java or vice versa "
          }
        ]
      },
      1: {
        'topic': '2.     Get Started',
        'subTopic': [
          {
            'heading': 'Java Install',
            'attachment': 'assets/java_lessons_image/get_started1.png',
            'body': "Some PCs might have Java already installed."
                "\n\nTo check if you have Java installed on a Windows PC, search in the start bar for Java or type the following in Command Prompt (cmd.exe):"
          },
          {
            'attachment': 'assets/java_lessons_image/get_started2.jpg',
            'body':
            "If Java is installed, you will see something like this (depending on version):"
          },
          {
            'body': "If you do not have Java installed on your computer, you can download it for free at oracle.com"
                "\n\nNOTE: In this tutorial, we will write Java code in a text editor."
                " However, it is possible to write Java in an Integrated Development Environment, such as IntelliJ IDEA, Netbeans or Eclipse, which are particularly useful when managing larger collections of Java files.\n\n"
          },
          {
            'heading': 'Setup For Windows',
            'attachment': 'assets/java_lessons_image/step1_get_started.jpg',
            'body': "To install Java on Windows: "
                "\n\nTo check if you have Java installed on a Windows PC, search in the start bar for Java or type the following in Command Prompt (cmd.exe):"
                "\n\n 1. Go to System Properties (Can be found on Control Panel > System and Security > System > Advanced System Settings)."
          },
          {
            'attachment': 'assets/java_lessons_image/step2_get_started.jpg',
            'body':
            "\n2. Click on the Environment variables button under the Advanced tab."
          },
          {
            'attachment': 'assets/java_lessons_image/step3_get_started.jpg',
            'body':
            "\n3. Then, select the Path variable in System variables and click on the Edit button."
          },
          {
            'attachment': 'assets/java_lessons_image/step4_get_started.jpg',
            'body':
            "\n4. Click on the New button and add the path where Java is installed, followed by -bin By default, Java is installed in C:-Program Files-Java-jdk-11.0.1 \n(If nothing else was specified when you installed it).\nIn that case, You will have to add a new path with: C:-Program Files-Java-jdk-11.0.1-bin"
                " then, click OK, and save the settings."
          },
          {
            'attachment': 'assets/java_lessons_image/step5_get_started.jpg',
            'body':
            "\n5. At last, open Command Prompt (cmd.exe) and type java -version to see if Java is running on your machine."
          },
          {
            'attachment': 'assets/java_lessons_image/step6_get_started.jpg',
            'body':
            "If Java was successfully installed, you will see something like this (depending on version):"
          },
          {
            'heading': '\n\nJava Quickstart',
            'attachment': 'assets/java_lessons_image/step7_get_started.jpg',
            'body': "In Java, every application begins with a class name, and that class must match the filename."
                "\n\nLet's create our first Java file, called Main.java, which can be done in any text editor (like Notepad)."
                "\n\nThe file should contain a `Hello World` message, which is written with the following code:"
          },
          {
            'attachment': 'assets/java_lessons_image/step8_get_started.jpg',
            'body': "Don't worry if you don't understand the code above - we will discuss it in detail in later chapters. For now, focus on how to run the code above."
                "\n\nSave the code in Notepad as `Main.java`. Open Command Prompt (cmd.exe), navigate to the directory where you saved your file, and type `javac Main.java:`"
          },
          {
            'attachment': 'assets/java_lessons_image/step9_get_started.jpg',
            'body':
            "This will compile your code. If there are no errors in the code, the command prompt will take you to the next line. Now, type `java Main` to run the file:"
          },
          {
            'attachment': 'assets/java_lessons_image/step10_get_started.jpg',
            'body': "The output should read:"
          },
        ]
      },
      2: {
        'topic': '3.     Syntax',
        'subTopic': [
          {
            'heading': 'Java Syntax',
            'attachment': 'assets/java_lessons_image/step7_get_started.jpg',
            'body':
            "In the previous chapter, we created a Java file called Main.java, and we used the following code to print `Hello World` to the screen: "
          },
          {
            'heading': '\n\nExample Explained',
            'attachment': 'assets/java_lessons_image/step10_get_started.jpg',
            'body': "Every line of code that runs in Java must be inside a class. In our example, we named the class Main. A class should always start with an uppercase first letter."
                "\n\nNOTE: Java is case-sensitive: `MyClass` and `myclass` has different meaning."
                "\n\nThe name of the java file must match the class name. When saving the file, save it using the class name and add `.java` to the end of the filename. "
                "\n\nTo run the example above on your computer, make sure that Java is properly installed: Go to the Get Started Chapter for how to install Java. The output should be:"
          },
          {
            'heading': '\n\nThe main Method',
            'attachment': 'assets/java_lessons_image/syntax_1.jpg',
            'body':
            "The main() method is required and you will see it in every Java program:"
          },
          {
            'body': "Any code inside the main() method will be executed. Don't worry about the keywords before and after main. You will get to know them bit by bit while reading this tutorial."
                "\n\nFor now, just remember that every Java program has a class name which must match the filename, and that every program must contain the main() method."
          },
          {
            'heading': 'System.out.println()',
            'attachment': 'assets/java_lessons_image/syntax_2.jpg',
            'body':
            "Inside the main() method, we can use the println() method to print a line of text to the screen:"
          },
          {
            'heading': 'Note',
            'body': "The curly braces {} marks the beginning and the end of a block of code."
                "\n\nSystem is a built-in Java class that contains useful members, such as out, which is short for `output`. The println() method, short for `print line`, is used to print a value to the screen (or a file)."
                "\n\nDon't worry too much about System, out and println(). Just know that you need them together to print stuff to the screen."
                "\n\nYou should also note that each code statement must end with a semicolon (;)."
          }
        ]
      },
      3: {'topic': '4.     Output', 'heading': '', 'body': ""},
      4: {
        'topic': '     4.1     Print Text',
        'subTopic': [
          {
            'heading': 'Print Text',
            'attachment': 'assets/java_lessons_image/output_text_1.jpg',
            'body':
            "You learned from the previous chapter that you can use the println() method to output values or print text in Java: "
          },
          {
            'attachment': 'assets/java_lessons_image/output_text_2.jpg',
            'body':
            " You can add as many println() methods as you want. Note that it will add a new line for each method"
          },
          {
            'heading': 'Double Quotes',
            'attachment': 'assets/java_lessons_image/output_text_3.jpg',
            'body':
            "When you are working with text, it must be wrapped inside double quotations marks "
                "."
                "If you forget the double quotes, an error occurs:"
          },
          {
            'heading': 'The Print() Method',
            'attachment': 'assets/java_lessons_image/output_text_4.jpg',
            'body': "There is also a print() method, which is similar to println()."
                "The only difference is that it does not insert a new line at the end of the output:"
          },
          {
            'body':
            "Note that we add an extra space (after `Hello World`! in the example above), for better readability."
          }
        ]
      },
      5: {
        'topic': '     4.2     Print Numbers',
        'subTopic': [
          {
            'heading': 'Print Numbers',
            'attachment': 'assets/java_lessons_image/output_number_1.jpg',
            'body': "You can also use the println() method to print numbers."
                "However, unlike text, we don't put numbers inside double quotes:"
          },
          {
            'attachment': 'assets/java_lessons_image/output_number_2.jpg',
            'body':
            "You can also perform mathematical calculations inside the println() method:"
          },
          {
            'attachment': 'assets/java_lessons_image/output_number_3.jpg',
          }
        ]
      },
      6: {
        'topic': '5.     Comments',
        'subTopic': [
          {
            'heading': "Java Comments",
            'body':
            "Comments can be used to explain Java code, and to make it more readable. It can also be used to prevent execution when testing alternative code.",
          },
          {
            'heading': "Single-line comments",
            'attachment': 'assets/java_lessons_image/comments_1.jpg',
            'body': "Single-line comments start with two forward slashes (//)."
                "\n\nAny text between // and the end of the line is ignored by Java (will not be executed)."
                "\n\nThis example uses a single-line comment before a line of code:"
          },
          {
            'attachment': 'assets/java_lessons_image/comments_2.jpg',
            'body':
            "This example uses a single-line comment at the end of a line of code:"
          },
          {
            'heading': 'Java Multi-line Comments',
            'attachment': 'assets/java_lessons_image/comments_3.jpg',
            'body': "Multi-line comments start with /* and ends with */."
                "\n\nAny text between /* and */ will be ignored by Java."
                "\n\nThis example uses a multi-line comment (a comment block) to explain the code:"
          },
        ]
      },
      7: {
        'topic': '6.     Variables',
        'subTopic': [
          {
            'heading': 'Java Variables',
            'body': "Variables are containers for storing data values."
                "\n\nIn Java, there are different types of variables, for example:"
                "\n\nString - stores text, such as `Hello`. String values are surrounded by double quotes"
                "\n\nint - stores integers (whole numbers), without decimals, such as 123 or -123"
                "\n\nfloat - stores floating point numbers, with decimals, such as 19.99 or -19.99"
                "\n\nchar - stores single characters, such as 'a' or 'B'. Char values are surrounded by single quotes"
                "\n\nboolean - stores values with two states: true or false"
          },
          {
            'heading': 'Declaring (Creating) Variables',
            'attachment': 'assets/java_lessons_image/variables_1.jpg',
            'body':
            "To create a variable, you must specify the type and assign it a value:"
          },
          {
            'attachment': 'assets/java_lessons_image/variables_2.jpg',
            'body': "Where type is one of Java's types (such as int or String), and variableName is the name of the variable (such as x or name). The equal sign is used to assign values to the variable."
                "\n\nTo create a variable that should store text, look at the following example:"
                "\n\nCreate a variable called name of type String and assign it the value `John`:"
          },
          {
            'attachment': 'assets/java_lessons_image/variables_3.jpg',
            'body': "To create a variable that should store a number, look at the following example:"
                "\n\nCreate a variable called myNum of type int and assign it the value 15",
          },
          {
            'attachment': 'assets/java_lessons_image/variables_4.jpg',
            'body':
            "You can also declare a variable without assigning the value, and assign the value later:"
          },
          {
            'attachment': 'assets/java_lessons_image/variables_5.jpg',
            'body':
            "Note that if you assign a new value to an existing variable, it will overwrite the previous value:"
                "\n\nChange the value of myNum from 15 to 20:"
          },
          {
            'heading': 'Final Variables',
            'attachment': 'assets/java_lessons_image/variables_6.jpg',
            'body':
            "If you don't want others (or yourself) to overwrite existing values, use the final keyword (this will declare the variable as final or `constant`, which means unchangeable and read-only):"
          },
          {
            'heading': 'Other Types',
            'attachment': 'assets/java_lessons_image/variables_7.jpg',
            'body':
            "A demonstration of how to declare variables of other types:"
          },
        ]
      },
      8: {
        'topic': '     6.1     Print Variables',
        'subTopic': [
          {
            'heading': 'Display Variables',
            'attachment': 'assets/java_lessons_image/variables_8.jpg',
            'body': "The println() method is often used to display variables."
                "\n\nTo combine both text and a variable, use the + character:"
          },
          {
            'attachment': 'assets/java_lessons_image/variables_9.jpg',
            'body':
            "You can also use the + character to add a variable to another variable:"
          },
          {
            'attachment': 'assets/java_lessons_image/variables_10.jpg',
            'body':
            "For numeric values, the + character works as a mathematical operator (notice that we use int (integer) variables here):"
          },
        ]
      },
      9: {
        'topic': '     6.2     Declare Multiple Variables',
        'subTopic': [
          {
            'heading': 'Declare Many Variables',
            'attachment': 'assets/java_lessons_image/variables_11.jpg',
            'body':
            "To declare more than one variable of the same type, you can use a comma-separated list:"
                "\n\nInstead of writing:"
          },
          {
            'attachment': 'assets/java_lessons_image/variables_12.jpg',
            'body': "You can simply write:"
          },
          {
            'heading': 'One Value to Multiple Variables',
            'attachment': 'assets/java_lessons_image/variables_13.jpg',
            'body':
            "You can also assign the same value to multiple variables in one line:"
          },
        ]
      },
      10: {
        'topic': '     6.3     Identifiers',
        'subTopic': [
          {
            'heading': "Identifiers",
            'attachment': 'assets/java_lessons_image/variables_14.jpg',
            'body': "All Java variables must be identified with unique names."
                "\n\nThese unique names are called identifiers."
                "\n\nIdentifiers can be short names (like x and y) or more descriptive names (age, sum, totalVolume)."
                "\n\nNote: It is recommended to use descriptive names in order to create understandable and maintainable code:"
          },
          {
            'body': "The general rules for naming variables are:"
                "\n\n*Names can contain letters, digits, underscores, and dollar signs"
                "\n\n*Names must begin with a letter"
                "\n\n*Names should start with a lowercase letter and it cannot contain whitespace"
                "\n\n*Names can also begin with (Dollar Sign) and _ (but we will not use it in this tutorial)"
                "\n\n*Names are case sensitive (myVar and myvar are different variables)"
                "\n\n*Reserved words (like Java keywords, such as int or boolean) cannot be used as names"
          },
        ]
      },
      11: {
        'topic': '7.    Java Data Types',
        'subTopic': [
          {
            'heading': 'Java Data types',
            'attachment': 'assets/java_lessons_image/dtypes_1.jpg',
            'body':
            "As explained in the previous chapter, a variable in Java must be a specified data type:"
          },
          {
            'body': "Data types are divided into two groups"
                "\n\nPrimitive data types - includes byte, short, int, long, float, double, boolean and char"
                "\n\nNon-primitive data types - such as String, Arrays and Classes (you will learn more about these in a later chapter)"
          },
          {
            'heading': 'Primitive Data Types',
            'attachment': 'assets/java_lessons_image/dtypes_2.jpg',
            'body':
            "A primitive data type specifies the size and type of variable values, and it has no additional methods."
                "\n\nThere are eight primitive data types in Java:"
          },
        ]
      },
      12: {
        'topic': '     7.1     Java Numbers',
        'subTopic': [
          {
            'heading': 'Numbers',
            'body': "Primitive number types are divided into two groups:"
                "\n\nInteger types stores whole numbers, positive or negative (such as 123 or -456), without decimals. Valid types are byte, short, int and long. Which type you should use, depends on the numeric value."
                "\n\nFloating point types represents numbers with a fractional part, containing one or more decimals. There are two types: float and double."
                "\n\nEven though there are many numeric types in Java, the most used for numbers are int (for whole numbers) and double (for floating point numbers). However, we will describe them all as you continue to read."
          },
          {
            'heading': 'Integer Types',
            'attachment': 'assets/java_lessons_image/number_1.jpg',
            'body': "\n\nBYTE"
                "The byte data type can store whole numbers from -128 to 127. This can be used instead of int or other integer types to save memory when you are certain that the value will be within -128 and 127:"
          },
          {
            'heading': 'Short',
            'attachment': 'assets/java_lessons_image/number_2.jpg',
            'body':
            "The short data type can store whole numbers from -32768 to 32767:"
          },
          {
            'heading': 'Int',
            'attachment': 'assets/java_lessons_image/number_3.jpg',
            'body':
            "The int data type can store whole numbers from -2147483648 to 2147483647. In general, and in our tutorial, the int data type is the preferred data type when we create variables with a numeric value."
          },
          {
            'heading': 'Long',
            'attachment': 'assets/java_lessons_image/number_4.jpg',
            'body':
            "The long data type can store whole numbers from -9223372036854775808 to 9223372036854775807. This is used when int is not large enough to store the value. Note that you should end the value with an `L`:"
          },
          {
            'heading': 'Floating Point Types',
            'attachment': 'assets/java_lessons_image/number_5.jpg',
            'body': "You should use a floating point type whenever you need a number with a decimal, such as 9.99 or 3.14515."
                "\n\nThe float and double data types can store fractional numbers. Note that you should end the value with an `f` for floats"
                "\n\nand d for doubles:"
                "\n\nFloat Example"
          },
          {
            'heading': 'Double Example',
            'attachment': 'assets/java_lessons_image/number_6.jpg',
          },
          {
            'heading': 'Use float or double?',
            'body': "The precision of a floating point value indicates how many digits the value can have after the decimal point. The precision"
                "\n\nof float is only six or seven decimal digits, while double variables have a precision of about 15 digits. Therefore it is"
                "\n\nsafer to use double for most calculations."
          },
          {
            'heading': 'Scientific Numbers',
            'attachment': 'assets/java_lessons_image/number_7.jpg',
            'body':
            "A floating point number can also be a scientific number with an `e` to indicate the power of 10:"
          },
        ]
      },
      13: {
        'topic': '     7.2     Boolean',
        'subTopic': [
          {
            'heading': 'Booleans Types',
            'attachment': 'assets/java_lessons_image/boo_1.jpg',
            'body':
            "Very often in programming, you will need a data type that can only have one of two values, like:"
                "\n\nYES / NO"
                "\n\nON / OFF"
                "\n\nTRUE / FALSE"
          },
        ]
      },
      14: {
        'topic': '     7.3     Character',
        'subTopic': [
          {
            'heading': 'Characters',
            'attachment': 'assets/java_lessons_image/char_1.jpg',
            'body':
            "The char data type is used to store a single character. The character must be surrounded by single quotes, like 'A' or 'c':"
          },
          {
            'attachment': 'assets/java_lessons_image/char_2.jpg',
            'body':
            "Alternatively, if you are familiar with ASCII values, you can use those to display certain characters:"
          },
          {
            'heading': 'Strings',
            'attachment': 'assets/java_lessons_image/char_3.jpg',
            'body':
            "The String data type is used to store a sequence of characters (text). String values must be surrounded by double quotes:"
          },
          {
            'body': "The String type is so much used and integrated in Java, that some call it the special ninth type"
                "\n\nA String in Java is actually a non-primitive data type, because it refers to an object. The String object has methods that"
                "\n\nare used to perform certain operations on strings. Don't worry if you don't understand the term `object` just yet."
                "\n\nWe will learn more about strings and objects in a later chapter."
          },
        ]
      },
      15: {
        'topic': '     7.4     Java Non-Primitive Data Types',
        'subTopic': [
          {
            'heading': 'Non-Primitive Data Types',
            'body': "Non-primitive data types are called reference types because they refer to objects."
                "\n\nThe main difference between primitive and non-primitive data types are:"
                "\n\n*Primitive types are predefined (already defined) in Java. Non-primitive types are created by the programmer and is not defined by Java (except for String)."
                "\n\n*Non-primitive types can be used to call methods to perform certain operations, while primitive types cannot."
                "\n\n*A primitive type has always a value, while non-primitive types can be null."
                "\n\n*A primitive type starts with a lowercase letter, while non-primitive types starts with an uppercase letter."
                "\n\n*Examples of non-primitive types are Strings, Arrays, Classes, Interface, etc. You will learn more about these in a later chapter."
          },
        ]
      },
      16: {
        'topic': '     7.5     Java Type Casting',
        'subTopic': [
          {
            'heading': 'Java Type Casting',
            'attachment': 'assets/java_lessons_image/cast_1.jpg',
            'body':
            "Type casting is when you assign a value of one primitive data type to another type."
                "\n\nIn Java, there are two types of casting:"
          },
        ]
      },
      17: {
        'topic': '     7.6     Java Operators',
        'subTopic': [
          {
            'heading': 'Java Operators',
            'attachment': 'assets/java_lessons_image/op_1.jpg',
            'body':
            "Operators are used to perform operations on variables and values.In the example below, we use the + operator to add together two values:"
          },
          {
            'attachment': 'assets/java_lessons_image/op_2.jpg',
            'body':
            "Although the + operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:"
          },
          {
            'body': "Java divides the operators into the following groups:"
                "\n\n*Arithmetic operators"
                "\n\n*Assignment operators"
                "\n\n*Comparison operators"
                "\n\n*Logical operators"
                "\n\n*Bitwise operators"
          },
          {
            'heading': 'Arithmetic Operators',
            'attachment': 'assets/java_lessons_image/op_3.jpg',
            'body':
            "Arithmetic operators are used to perform common mathematical operations."
          },
          {
            'heading': 'Java Assignment Operators',
            'attachment': 'assets/java_lessons_image/op_4.jpg',
            'body':
            "Assignment operators are used to assign values to variables.In the example below, we use the assignment operator (=) to assign the value 10 to a variable called x:"
          },
          {
            'attachment': 'assets/java_lessons_image/op_5.jpg',
            'body':
            " The addition assignment operator (+=) adds a value to a variable:"
          },
          {
            'heading': 'Java Comparison Operators',
            'attachment': 'assets/java_lessons_image/op_6.jpg',
            'body':
            " Comparison operators are used to compare two values (or variables). This is important in programming, because it helps us to find answers and make decisions.The return value of a comparison is either true or false. These values are known as Boolean values, and you will learn more about them in the Booleans and If..Else chapter.In the following example, we use the greater than operator (>) to find out if 5 is greater than 3:"
          },
          {
            'attachment': 'assets/java_lessons_image/op_7.jpg',
            'body': " A list of all assignment operators:"
          },
          {'attachment': 'assets/java_lessons_image/op_8.jpg'},
          {
            'heading': 'Java Logical Operators',
            'attachment': 'assets/java_lessons_image/op_9.jpg',
            'body': " You can also test for true or false values with logical operators."
                "Logical operators are used to determine the logic between variables or values:"
          },
        ]
      },
      18: {
        'topic': '8.    Java Strings',
        'subTopic': [
          {
            'heading': 'String',
            'attachment': 'assets/java_lessons_image/string_1.jpg',
            'body':
            "Strings are used for storing text. A String variable contains a collection of characters surrounded by double quotes:"
          },
          {
            'heading': 'String Length',
            'attachment': 'assets/java_lessons_image/string_2.jpg',
            'body':
            "A String in Java is actually an object, which contain methods that can perform certain operations on strings. For example, the length of a string can be found with the length() method:"
          },
          {
            'heading': 'More String Methods',
            'attachment': 'assets/java_lessons_image/string_3.jpg',
            'body':
            "There are many string methods available, for example toUpperCase() and toLowerCase():",
          },
          {
            'heading': 'Finding a Character in a String',
            'attachment': 'assets/java_lessons_image/string_4.jpg',
            'body':
            "The indexOf() method returns the index (the position) of the first occurrence of a specified text in a string (including whitespace):",
          },
        ]
      },
      19: {
        'topic': '     8.1   Java String Concatenation',
        'subTopic': [
          {
            'heading': 'String Concatenation',
            'attachment': 'assets/java_lessons_image/scon_1.jpg',
            'body':
            "The + operator can be used between strings to combine them. This is called concatenation:"
                "\n\nNote that we have added an empty text ("
                ") to create a space between firstName and lastName on print."
          },
          {
            'attachment': 'assets/java_lessons_image/scon_2.jpg',
            'body':
            "\n\nYou can also use the concat() method to concatenate two strings:"
          },
        ]
      },
      20: {
        'topic': '     8.2   Java Numbers and Strings',
        'subTopic': [
          {
            'heading': 'Adding Numbers and Strings',
            'attachment': 'assets/java_lessons_image/numstring_1.jpg',
            'body':
            "WARNING!Java uses the + operator for both addition and concatenation. Numbers are added. Strings are concatenated."
                "\n\nIf you add two numbers, the result will be a number:"
          },
          {
            'attachment': 'assets/java_lessons_image/numstring_2.jpg',
            'body':
            "If you add two strings, the result will be a string concatenation:"
          },
          {
            'attachment': 'assets/java_lessons_image/numstring_3.jpg',
            'body':
            "If you add a number and a string, the result will be a string concatenation:"
          },
        ]
      },
      21: {
        'topic': '9.    Java Math',
        'subTopic': [
          {
            'heading': 'Java Math',
            'body':
            "The Java Math class has many methods that allows you to perform mathematical tasks on numbers."
          },
          {
            'heading': 'Math.max(x,y)',
            'attachment': 'assets/java_lessons_image/javamath_1.jpg',
            'body':
            "The Math.max(x,y) method can be used to find the highest value of x and y:"
          },
          {
            'heading': 'Math.min(x,y)',
            'attachment': 'assets/java_lessons_image/javamath_2.jpg',
            'body':
            "The Math.min(x,y) method can be used to find the lowest value of x and y:"
          },
          {
            'heading': 'Math.sqrt(x)',
            'attachment': 'assets/java_lessons_image/javamath_3.jpg',
            'body': "The Math.sqrt(x) method returns the square root of x:"
          },
          {
            'heading': 'Math.abs(x)',
            'attachment': 'assets/java_lessons_image/javamath_4.jpg',
            'body':
            "The Math.abs(x) method returns the absolute (positive) value of x:"
          },
          {
            'heading': 'Random Numbers',
            'attachment': 'assets/java_lessons_image/javamath_5.jpg',
            'body':
            "Math.random() returns a random number between 0.0 (inclusive), and 1.0 (exclusive):"
          },
          {
            'attachment': 'assets/java_lessons_image/javamath_6.jpg',
            'body':
            "To get more control over the random number, for example, if you only want a random number between 0 and 100, you can use the following formula:"
          },
        ]
      },
      22: {
        'topic': '10  Java Booleans',
        'subTopic': [
          {
            'heading': 'Java Booleans',
            'body': "Very often, in programming, you will need a data type that can only have one of two values, like:"
                "\n\n*YES / NO"
                "\n\n*ON / OFF"
                "\n\n*TRUE / FALSE"
                "\n\nFor this, Java has a boolean data type, which can store true or false values."
          },
          {
            'heading': 'Boolean Values',
            'attachment': 'assets/java_lessons_image/bool_1.jpg',
            'body':
            "A boolean type is declared with the boolean keyword and can only take the values true or false:",
          },
          {
            'heading': 'Boolean Expression',
            'attachment': 'assets/java_lessons_image/bool_2.jpg',
            'body': "A Boolean expression returns a boolean value: true or false."
                "\n\nThis is useful to build logic, and find answers."
                "\n\nFor example, you can use a comparison operator, such as the greater than (>) operator, to find out if an expression (or a variable) is true or false:"
          },
          {
            'attachment': 'assets/java_lessons_image/bool_3.jpg',
            'body': "Or even easier:",
          },
          {
            'attachment': 'assets/java_lessons_image/bool_4.jpg',
            'body':
            "In the examples below, we use the equal to (==) operator to evaluate an expression:",
          },
          {'attachment': 'assets/java_lessons_image/bool_5.jpg'},
          {
            'heading': 'Real Life Example',
            'attachment': 'assets/java_lessons_image/bool_6.jpg',
            'body': "Let's think of a real life example where we need to find out if a person is old enough to vote."
                "\n\nIn the example below, we use the > = comparison operator to find out if the age (25) is greater than OR equal to the voting age limit, which is set to 18:"
          },
          {
            'attachment': 'assets/java_lessons_image/bool_7.jpg',
            'body':
            "Output Old enough to vote! if myAge is greater than or equal to 18. Otherwise output Not old enough to vote.:"
          },
        ]
      },
      23: {
        'topic': '11.     Java If ... Else',
        'subTopic': [
          {
            'heading': 'Java Conditions and If Statements',
            'body': "You already know that Java supports the usual logical conditions from mathematics:"
                "\n\n*Less than: a < b"
                "\n\n*Less than or equal to: a <= b"
                "\n\n*Greater than: a > b"
                "\n\n*Greater than or equal to: a >= b"
                "\n\n*Equal to a == b"
                "\n\n*Not Equal to: a != b"
                "You can use these conditions to perform different actions for different decisions.Java has the following conditional statements:"
                "\n\n*Use if to specify a block of code to be executed, if a specified condition is true"
                "\n\n*Use else to specify a block of code to be executed, if the same condition is false"
                "\n\n*Use else if to specify a new condition to test, if the first condition is false"
                "\n\n*Use switch to specify many alternative blocks of code to be executed"
          },
          {
            'heading': 'The if Statement',
            'attachment': 'assets/java_lessons_image/javaelse_1.jpg',
            'body':
            "Use the if statement to specify a block of Java code to be executed if a condition is true."
          },
          {
            'attachment': 'assets/java_lessons_image/javaelse_2.jpg',
            'body':
            "Note that if is in lowercase letters. Uppercase letters (If or IF) will generate an error.In the example below, we test two values to find out if 20 is greater than 18. If the condition is true, print some text:"
          },
          {
            'attachment': 'assets/java_lessons_image/javaelse_3.jpg',
            'body': "We can also test variables:",
          },
          {
            'body': "Example explained"
                "\n\nIn the example above we use two variables, x and y, to test whether x is greater than y (using the > operator). As x is 20, and y is 18, and we know that 20 is greater"
                "\n\nthan 18, we print to the screen that x is greater than y."
          },
          {
            'heading': 'The else Statement',
            'attachment': 'assets/java_lessons_image/javaelse_4.jpg',
            'body':
            "Use the else statement to specify a block of code to be executed if the condition is false."
          },
          {
            'attachment': 'assets/java_lessons_image/javaelse_5.jpg',
            'body': "Example"
          },
          {
            'heading': 'Example explained,',
            'body':
            "In the example above, time (20) is greater than 18, so the condition is false. Because of this, we move on to the else condition and print to the screen `Good evening`. If the time was less than 18, the program would print Good day."
          },
          {
            'heading': 'The else if Statement',
            'attachment': 'assets/java_lessons_image/javaelse_6.jpg',
            'body':
            "Use the else if statement to specify a new condition if the first condition is false."
          },
          {
            'attachment': 'assets/java_lessons_image/javaelse_7.jpg',
            'body': "Example"
                "\n\nExample explainedIn the example above, time (22) is greater than 10, so the first condition is false. The next condition, in the else if statement, is also false, so we move on to the else condition since condition1 and condition2 is both false - and print to the screen `Good evening`.However, if the time was 14, our program would print Good day`"
          },
        ]
      },
      24: {
        'topic': '     11.1   Java Short Hand If...Else',
        'subTopic': [
          {
            'heading': 'Short Hand If...Else',
            'attachment': 'assets/java_lessons_image/shorthand_1.jpg',
            'body': "There is also a short-hand if else, which is known as the ternary operator because it consists of three operands."
                "It can be used to replace multiple lines of code with a single line, and is most often used to replace simple if else statements:"
                "instead of writing"
          },
          {
            'attachment': 'assets/java_lessons_image/shorthand_2.jpg',
            'body': "Example"
          },
          {
            'attachment': 'assets/java_lessons_image/shorthand_3.jpg',
            'body': "Example"
          },
        ]
      },
      25: {
        'topic': '12      Java Switch',
        'subTopic': [
          {
            'heading': 'Java Switch Statements',
            'attachment': 'assets/java_lessons_image/switch_1.jpg',
            'body': 'Instead of writing many if..else statements, you can use the switch statement.'
                'The switch statement selects one of many code blocks to be executed:'
                "This is how it works:"
                "\n\n*The switch expression is evaluated once."
                "\n\n*The value of the expression is compared with the values of each case."
                "\n\n*If there is a match, the associated block of code is executed."
                "\n\n*The break and default keywords are optional, and will be described later in this chapter"
                "\n\nThe example below uses the weekday number to calculate the weekday name:"
          },
          {
            'attachment': 'assets/java_lessons_image/switch_2.jpg',
            'body': 'Example'
          },
          {
            'heading': 'The break Keyword',
            'body': "When Java reaches a break keyword, it breaks out of the switch block."
                "This will stop the execution of more code and case testing inside the block."
                "When a match is found, and the job is done, it's time for a break. There is no need for more testing."
                "A break can save a lot of execution time because it ignores the execution of all the rest of the code in the switch block."
          },
          {
            'heading': 'The default Keyword',
            'attachment': 'assets/java_lessons_image/switch_3.jpg',
            'body':
            "The default keyword specifies some code to run if there is no case match:"
          },
        ]
      },
      26: {
        'topic': '13    Java While Loop',
        'subTopic': [
          {
            'heading': 'Loops',
            'body': "Loops can execute a block of code as long as a specified condition is reached."
                "Loops are handy because they save time, reduce errors, and they make code more readable."
          },
          {
            'heading': 'Java While Loop',
            'attachment': 'assets/java_lessons_image/while_1.jpg',
            'body':
            "The while loop loops through a block of code as long as a specified condition is true:"
          },
          {
            'attachment': 'assets/java_lessons_image/while_2.jpg',
            'body':
            "In the example below, the code in the loop will run, over and over again, as long as a variable (i) is less than 5:"
          },
          {
            'heading': 'The Do/While Loop',
            'attachment': 'assets/java_lessons_image/while_3.jpg',
            'body':
            'The do/while loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true.'
          },
          {
            'attachment': 'assets/java_lessons_image/while_4.jpg',
            'body':
            "The example below uses a do/while loop. The loop will always be executed at least once, even if the condition is false, because the code block is executed before the condition is tested:"
          }
        ]
      },
      27: {
        'topic': '14.   Java For Loop',
        'subTopic': [
          {
            'heading': 'Java For Loop',
            'attachment': 'assets/java_lessons_image/for_1.jpg',
            'body':
            "When you know exactly how many times you want to loop through a block of code, use the for loop instead of a while loop:"
          },
          {
            'body': "Statement 1 is executed (one time) before the execution of the code block."
                "\n\nStatement 2 defines the condition for executing the code block."
                "\n\nStatement 3 is executed (every time) after the code block has been executed."
                "\n\nThe example below will print the numbers 0 to 4:"
          },
          {
            'attachment': 'assets/java_lessons_image/for_2.jpg',
            'body': "example"
          },
          {
            'body': "Example explained"
                "\n\nStatement 1 sets a variable before the loop starts (int i = 0)."
                "\n\nStatement 2 defines the condition for the loop to run (i must be less than 5). If the condition is true, the loop will start over again, if it is false, the loop will end."
                "\n\nStatement 3 increases a value (i++) each time the code block in the loop has been executed."
          },
          {
            'heading': 'Another Example',
            'attachment': 'assets/java_lessons_image/for_3.jpg',
            'body': "This example will only print even values between 0 and 10:"
          },
          {
            'heading': 'Nested Loops',
            'attachment': 'assets/java_lessons_image/for_4.jpg',
            'body':
            "It is also possible to place a loop inside another loop. This is called a nested loop.The `inner loop` will be executed one time for each iteration of the outer loop:"
          }
        ]
      },
      28: {
        'topic': '     14.1 Java For Each Loop',
        'subTopic': [
          {
            'heading': 'For-Each Loop',
            'attachment': 'assets/java_lessons_image/each_1.jpg',
            'body':
            "There is also a for-each loop, which is used exclusively to loop through elements in an array:"
          },
          {
            'heading': 'Example',
            'attachment': 'assets/java_lessons_image/each_2.jpg',
            'body':
            "The following example outputs all elements in the cars array, using a for-each loop:"
          },
        ]
      },
      29: {
        'topic': '15. Java Break and Continue',
        'subTopic': [
          {
            'heading': 'Java Break',
            'attachment': 'assets/java_lessons_image/break_1.jpg',
            'body':
            'You have already seen the break statement used in an earlier chapter of this tutorial. It was used to "jump out" of a switch statement.The break statement can also be used to jump out of a loop.This example stops the loop when i is equal to 4:'
          },
          {
            'heading': 'Java Continue',
            'attachment': 'assets/java_lessons_image/break_2.jpg',
            'body':
            "The continue statement breaks one iteration (in the loop), if a specified condition occurs, and continues with the next iteration in the loop This example skips the value of 4:"
          },
          {
            'heading': 'Break and Continue in While Loop',
            'attachment': 'assets/java_lessons_image/break_3.jpg,',
            'body': "You can also use break and continue in while loops:"
          },
          {
            'heading': 'Continue Example',
            'attachment': 'assets/java_lessons_image/break_4.jpg,',
          },
        ]
      },
      30: {
        'topic': '16.  Java Arrays',
        'subtopic': [
          {
            'heading': "Java Arrays",
            'attachment': 'assets/java_lessons_image/array_1.jpg',
            'body': "Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value."
                "To declare an array, define the variable type with square brackets:"
          },
          {
            'attachment': 'assets/java_lessons_image/array_2.jpg',
            'body':
            'We have now declared a variable that holds an array of strings. To insert values to it, you can place the values in a comma-separated list, inside curly braces:'
          },
          {
            'attachment': 'assets/java_lessons_image/array_3.jpg',
            'body': 'To create an array of integers, you could write:'
          },
          {
            'heading': "Access the Elements of an Array",
            'attachment': 'assets/java_lessons_image/array_4.jpg',
            'body': "You can access an array element by referring to the index number."
                "This statement accesses the value of the first element in cars:"
          },
          {
            'heading': "Change an Array Element",
            'attachment': 'assets/java_lessons_image/array_5.jpg',
            'body':
            "To change the value of a specific element, refer to the index number:"
          },
          {
            'attachment': 'assets/java_lessons_image/array_6  .jpg',
            'body': "example"
          },
          {
            'heading': "Array Length",
            'attachment': 'assets/java_lessons_image/array_7.jpg',
            'body':
            "To find out how many elements an array has, use the length property:"
          },
        ]
      },
      31: {
        'topic': '     16.1 Loop Through an Array',
        'subTopic': [
          {
            'heading': 'Loop Through an Array',
            'attachment': 'assets/java_lessons_image/allop_1.jpg',
            'body': "You can loop through the array elements with the for loop, and use the length property to specify how many times the loop should run."
                "\n\nThe following example outputs all elements in the cars array:"
          },
          {
            'heading': 'Loop Through an Array with For-Each',
            'attachment': 'assets/java_lessons_image/allop_2.jpg',
            'body':
            "There is also a for-each loop, which is used exclusively to loop through elements in arrays:"
          },
          {
            'attachment': 'assets/java_lessons_image/allop_3.jpg',
            'body':
            "The following example outputs all elements in the cars array, using a for-each loop:"
          },
          {
            'body': "The example above can be read like this: for each String element (called i - as in index) in cars, print out the value of i."
                "\n\nIf you compare the for loop and for-each loop, you will see that the for-each method is easier to write, "
                "\n\nit does not require a counter (using the length property), and it is more readable."
          },
        ]
      },
      32: {
        'topic': '     16.2  Java Multi-Dimensional Arrays',
        'subTopic': [
          {
            'heading': 'Multidimensional Arrays',
            'attachment': 'assets/java_lessons_image/multi_1.jpg',
            'body': "A multidimensional array is an array of arrays."
                "\n\nMultidimensional arrays are useful when you want to store data as a tabular form, like a table with rows and columns."
                "\n\nTo create a two-dimensional array, add each array within its own set of curly braces:"
          },
          {
            'heading': 'Access Elements',
            'attachment': 'assets/java_lessons_image/multi_2.jpg',
            'body': "myNumbers is now an array with two arrays as its elements."
                "\n\nTo access the elements of the myNumbers array, specify two indexes: one for the array, and one for the element inside that array."
                "\n\nThis example accesses the third element (2) in the second array (1) of myNumbers:"
          },
          {
            'heading': 'Change Element Values',
            'attachment': 'assets/java_lessons_image/multi_3.jpg',
            'body': "You can also change the value of an element:"
                "Example"
          },
          {
            'heading': 'Loop Through a Multi-Dimensional Array',
            'attachment': 'assets/java_lessons_image/multi_4.jpg',
            'body':
            "We can also use a for loop inside another for loop to get the elements of a two-dimensional array (we still have to point to the two indexes):"
                "Example"
          },
        ]
      },
    },
    Categories.intermediate: {
      0: {
        'topic': '1.     Java OOP',
        'subTopic':[
          {
            'heading': "Java - What is OOP?",
            'body': "OOP stands for Object-Oriented Programming.  "
            "\n\n Procedural programming is about writing procedures or methods that perform operations on "
                "\n the data, while object-oriented programming is about creating objects that contain both data "
            "\n and methods."
            "\n\n\n"
            "\nObject-oriented programming has several advantages over procedural programming:"
            "\n • OOP is faster and easier to execute"
            "\n • OOP provides a clear structure for the programs"
            "\n • OOP helps to keep the Java code DRY 'Don't Repeat Yourself', and makes the code"
            "\n  easier to maintain, modify and debug"
            "\n • OOP makes it possible to create full reusable applications with less code and shorter "
            "\n development time "

          },
          {
            'heading': "TIP",
            'body': "\n\nThe 'Don't Repeat Yourself' (DRY) principle is about reducing the repetition of code. You"
            "\nshould extract out the codes that are common for the application, and place them at a single"
            "\nplace and reuse them instead of repeating it. "

          },
          {
            'heading': "Java - What are Classes and Objects?",
            'attachment': 'assets/java_intermediate/oop_1.png',

            'body': "\n\n Classes and objects are the two main aspects of object-oriented programming."
            "\n Look at the following illustration to see the difference between class and objects:",
          },
          {
            'heading': "",
            'attachment': "assets/java_intermediate/oop_2.png",
            'body': "\nAnother example:"
            "\n\n\nSo, a class is a template for objects, and an object is an instance of a class. "
            "\n When the individual objects are created, they inherit all the variables and methods from the class."
          },
        ]
      },
      1:{
        'topic': '2.     Java Classes and objects',
        'subTopic': [
          {
            'heading': 'Java Classes/Objects',
            'body': "\nJava is an object-oriented programming language."
            "\n\n Everything in Java is associated with classes and objects, along with its attributes and"
            "methods. \n\n For example: in real life, a car is an object. The car has attributes, such as weight and "
            " color,and methods,such as drive and brake."
            " A Class is like an object constructor, or a 'blueprint' for creating objects. "
          },
          {
            'heading': 'Create a class',
            'attachment': "assets/java_intermediate/cla_1.png",
            'body': "To create a class, use the keyword class:"
            "\n\n\n Remember from the Java Syntax chapter that"
            "a class should always start with an "
            " uppercase first letter, and that"
            "he name of the java file should match the class name."
          },
          {
            'heading': 'Remember',
            'body': "\nfrom the Java Syntax chapter that a class "
            " should always start with an uppercase"
            "first letter, and that the name of the java file should match the class name."
          },
          {
            'heading': 'Create an object',
            'attachment': "assets/java_intermediate/cla_2.png",
            'body': "In Java, an object is created from a class. "
             "We have already created the class named Main, so now we can use this to create objects."
            "\nTo create an object of Main, specify the class "
            "name, followed by the object name, and use the keyword new: "
          },
          {
            'heading': 'Multiple Objects',
            'attachment': "assets/java_intermediate/cla_3.png",
            'body': "You can create multiple objects of one class:"
          },
          {
            'heading': 'Using Multiple Classes',
            'body': "You can also create an object of a class and access it in another class."
            "This is often used for better organization of classes"
            "(one class has all the attributes and methods, "
            "while the other class holds the main() method (code to be executed))."
            "\n\nRemember that the name of the java file should match the class name. "
            "\nIn this example, we have created two files in the same directory/folder: "
            "\n •Main.java"
            "\n •Second.java"
          },
          {
            'heading': 'Main.java',
            'attachment': "assets/java_intermediate/cla_4.png",
          },
          {
            'heading': 'Second.java',
            'attachment': "assets/java_intermediate/cla_5.png",
          },
          {
            'heading': '',
            'attachment': "assets/java_intermediate/cla_6.png",
            'body': "When both files have been compiled:"
          },
          {
            'heading': '',
            'attachment': "assets/java_intermediate/cla_7.png",
            'body': "Run the Second.java file:"
          },
          {
            'heading': '',
            'attachment': "assets/java_intermediate/cla_8.png",
            'body': "And the output will be:"
          },


        ]

      },
      2:{
        'topic': '3.     Java Class Attributes',
        'subTopic': [
          {
            'heading': "Java Class Attributes",
            'attachment': "assets/java_intermediate/att_1.png",
            'body': "In the previous chapter, we used the term 'variable' for x in the example"
            "(as shown below). It is actually an attribute of the class."
            "Or you could say that class attributes are variables within a class:"
          },
          {
            'heading': "Accessing attributes",
            'attachment': "assets/java_intermediate/att_2.png",
            'body': "You can access attributes by creating an object of "
                "the class, and by using the dot syntax (.):"
            "The following example will create an object of the Main class,"
            "with the name myObj. We use the x attribute on the object to print its value:"
          },
          {
            'heading': "Modify Attributes",
            'attachment': "assets/java_intermediate/att_3.png",
            'body': "You can also modify attribute values:"
          },

          {
            'heading': "",
            'attachment': "assets/java_intermediate/att_4.png",
            'body': "Or override existing values:"
          },

          {
            'heading': "",
            'attachment': "assets/java_intermediate/att_5.png",
            'body': "If you don't want the ability to override existing values, "
                "declare the attribute as final:"

          },
          {
            'heading': "Multiple Objects",
            'attachment': "assets/java_intermediate/att_6.png",
            'body': "If you create multiple objects of one class, you can "
            "change the attribute values in one object, without"
            "affecting the attribute values in the other"
          },
          {
            'heading': "Multiple Objects",
            'attachment': "assets/java_intermediate/att_7.png",
            'body': "You can specify as many attributes as you want: "
          },

        ]
      },
      3:{
        'topic': '4.     Java Class Methods',
        'subTopic': [
          {
            'heading': "Java Class Methods ",
            'attachment': "assets/java_intermediate/cmet_1.png",
            'body': "You learned from the Java Methods chapter that methods are"
            "declared within a class, and that they are used to perform certain actions:"
          },
          {
            'heading': "",
            'attachment': "assets/java_intermediate/cmet_2.png",
            'body': "myMethod() prints a text (the action), when it is called."
            "  To call a method, write the method's name followed"
            "by two parentheses () and a semicolon;"
          },
          {
            'heading': "Static vs Public",
            'attachment': "assets/java_intermediate/cmet_3.png",
            'body': "You will often see Java programs that have either static or"
            " public attributes and methods."
            "\n\nIn the example above, we created a static"
            "method, which means that it can be accessed without"
            "creating an object of the class, unlike public, which can only be accessed by objects:"
          },
          {
            'heading': "Access Methods With an Object",
            'attachment': "assets/java_intermediate/cmet_4.png",
          },
          {
            'heading': 'Using Multiple Classes',
            'attachment': "assets/java_intermediate/cmet_5.png",
            'body': "Like we specified in the Classes chapter, it is a good practice "
            "to create an object of a class and access it in another class."
            " Remember that the name of the java file should match"
            "the class name. In this example, we have created"
                "two files in the same directory:"
          },
          {
            'heading':"",
            'attachment': "assets/java_intermediate/cmet_6.png",
          },
          {
            'heading': "",
            'attachment': "assets/java_intermediate/cmet_7.png",
            'body': "When both files have been compiled:"
          },
          {
            'heading': "",
            'attachment': "assets/java_intermediate/cmet_8.png",
            'body': "Run the Second.java file:"
          },
          {
            'heading': "",
            'attachment': "assets/java_intermediate/cmet_9.png",
            'body': "And the output will be:"
          },

        ]
      },
      4:{
        'topic': '5.     Java Constructors',
        'subTopic': [
          {
            'heading': "Java Constructors",
            'attachment': "assets/java_intermediate/cons_1.png",
            'body': "A constructor in Java is a special method that is used"
            "to initialize objects. \nThe constructor is called when "
            "an object of a class is created. It can be"
            "used to set initial values for object attributes:"
          },
          {
            'heading': "Constructor Parameters",
            'attachment': "assets/java_intermediate/cons_2.png",
            'body': "Constructors can also take parameters, which is used to initialize attributes."
            "\n\nThe following example adds an int y parameter to the constructor."
            "Inside the constructor we set x to y (x=y). When we call"
            "the constructor, we pass a parameter to"
            "the constructor (5), which will set the value of x to 5:"
          },
          {
            'heading': "",
            'attachment': "assets/java_intermediate/cons_3.png",
            'body': "You can have as many parameters as you want:"
          },
        ]
      },
      5: {
        'topic': '6.     Java Methods ',
        'subTopic': [
          {
            'heading': "Create a method",
            'attachment': "assets/java_intermediate/met_1.png",
            'body': "A method must be declared within a class. It is defined with"
            "the name of the method, followed by parentheses (). Java provides"
            "some pre-defined methods, such as System.out.println()"
            "but you can also create your own methods to perform certain actions:"
          },
          {
            'heading': "Call a Method",
            'attachment': "assets/java_intermediate/met_2.png",
            'body': "To call a method in Java, write the method's name"
            "followed by two parentheses () and a semicolon;"
            "\n\nIn the following example, myMethod() is used to print a text (the action), when it is called:"
          },
          {
            'heading': "",
            'attachment': "assets/java_intermediate/met_3.png",
            'body': "A method can also be called multiple times:"
          },
        ]
      },
      6: {
        'topic': '7.     Java Method Parameters ',
        'subTopic': [
          {
            'heading': "Parameters and Arguments",
            'attachment': "assets/java_intermediate/mpar_1.png",
            'body': "Information can be passed to methods as parameter. Parameters act as variables inside the method."
            "\n\nParameters are specified after the method name, inside the parentheses. "
                "You can add as many parameters as you want, just separate them with a comma."
            "\n\nThe following example has a method that takes a String called fname as parameter. When the"
            "method is called, we pass along a first name, which is used inside the method to print the full name:"

          },
          {
            'heading': "Multiple Parameters",
            'attachment': "assets/java_intermediate/mpar_2.png",
            'body': "You can have as many parameters as you like:"
          },
          {
            'heading': "Return Values",
            'attachment': "assets/java_intermediate/mpar_3.png",
            'body': "The void keyword, used in the examples above, indicates that the method"
            "should not return a value. If you want the method to return a value,"
            "you can use a primitive data type (such as int, char, etc.) instead of void,"
            "and use the return keyword inside the method:"
          },
          {
            'heading': "",
            'attachment': "assets/java_intermediate/mpar_4.png",
            'body': "This example returns the sum of a method's two parameters:"
          },
          {
            'heading': "",
            'attachment': "assets/java_intermediate/mpar_5.png",
            'body': "You can also store the result in a variable (recommended, as it is easier to read and maintain):"
          },
          {
            'heading': "A Method with If...Else",
            'attachment': "assets/java_intermediate/mpar_6.png",
            'body': "It is common to use if...else statements inside methods:"
          },

        ]
      },
      7:{
        'topic': '8.     Java Method Overloading',
        'subTopic': [
          {
            'heading': "Method Overloading",
            'attachment': "assets/java_intermediate/over_1.png",
            'body': "With method overloading, multiple methods can have the same name with different parameters:"
          },
          {
            'heading': "",
            'attachment': "assets/java_intermediate/over_2.png",
            'body': "Consider the following example, which has two methods that add numbers of different type:"

          },
          {
            'heading': "",
            'attachment': "assets/java_intermediate/over_3.png",
            'body': "Instead of defining two methods that should do the same thing, it is better to overload one."
            "\n\nIn the example below, we overload the plusMethod method to work for both int and double:"
          },
        ]
      },
      8:{
        'topic': '9.     Java Scope',
        'subTopic': [
          {
            'heading': "Java Scope",
            'body': "In Java, variables are only accessible inside the region they are created. This is called scope."
          },
          {
            'heading': "Method Scope",
            'attachment': "assets/java_intermediate/scope_1.png",
            'body': "Variables declared directly inside a method are available anywhere "
                "in the method following the line of code in which they were declared:"
          },
          {
            'heading': "Block Scope",
            'attachment': "assets/java_intermediate/scope_2.png",
            'body': "A block of code refers to all of the code between curly braces"
            "Variables declared inside blocks of code are only accessible by the code between the curly braces,"
            "which follows the line in which the variable was declared:"
          },
        ]
      },
      9:{
        'topic': '10.   Java Recursion',
        'subTopic': [
          {
            'heading': " Java Recursion",
            'body': "Recursion is the technique of making a function call itself. This technique provides"
            "a way to break complicated problems down into simple problems which are easier to solve."
            "\n\nRecursion may be a bit difficult to understand. The best way to figure out how it works is to experiment with it."

          },
          {
            'heading': "Recursion Example",
            'attachment': "assets/java_intermediate/rec_1.png",
            'body': "Adding two numbers together is easy to do, but adding a range"
            "of numbers is more complicated. In the following example, recursion is used"
            "to add a range of numbers together by breaking it down into the simple task of adding two numbers:"

          },
          {
            'heading': "Example Explained",
            'attachment': "assets/java_intermediate/rec_2.png",
            'body': "When the sum() function is called, it adds parameter k"
            "to the sum of all numbers smaller than k and returns the result. When k becomes 0,"
            "the function just returns 0. When running, the program follows these steps:"
            "\n\nSince the function does not call itself when k is 0, the program stops there and returns the result."

          },
          {
            'heading': "Halting Condition",
            'attachment': "assets/java_intermediate/rec_3.png",
            'body': "Just as loops can run into the problem of infinite looping, recursive functions"
            "can run into the problem of infinite recursion. Infinite recursion is"
            "when the function never stops calling itself. Every recursive function should have a halting condition,"
            "which is the condition where the function stops calling itself. In the previous example,"
            "the halting condition is when the parameter k becomes 0."
            "\n\nIt is helpful to see a variety of different examples to better understand the concept. In this example,"
            "the function adds a range of numbers between a start and an end. The halting condition"
            "for this recursive function is when end is not greater than start:"
          },
        ]
      },


    },

    Categories.advanced: {
      0:{
      'topic': '1.      Java Modifiers',
      'subTopic': [
        {
          'heading': "Modifiers",
          'attachment': "assets/java_advance/mod_1.png",
          'body': "The public keyword is an access modifier, meaning that it is used to set "
              "the access level for classes, attributes, methods and constructors."
              "\n\nWe divide modifiers into two groups:"
              "\n\n•Access Modifiers - controls the access level"
              "\n\n•Non-Access Modifiers - do not control access level, but provides other functionality"
        },
        {
          'heading': "Access Modifiers",
          'attachment': "assets/java_advance/mod_2.png",
          'body': "For classes, you can use either public or default:"
        },
        {
          'heading':"",
          'attachment': "assets/java_advance/mod_3.png",
          'body': "For attributes, methods and constructors, you can use the one of the following:"
        },
        {
          'heading': "Non-Access Modifiers",
          'attachment': "assets/java_advance/mod_4.png",
          'body': "For classes, you can use either final or abstract:"
        },
        {
          'heading': "",
          'attachment': "assets/java_advance/mod_5.png",
          'body': "For attributes and methods, you can use the one of the following:",

        },
        {
          'heading': "Final",
          'attachment': "assets/java_advance/mod_6.png",
          'body': "If you don't want the ability to override existing attribute values, declare attributes as final:"
        },
        {
          'heading': "Static",
          'attachment': "assets/java_advance/mod_7.png",
          'body': "A static method means that it can be accessed without creating an object of the class, unlike public:"

        },
        {
          'heading': "Abstract",
          'attachment': "assets/java_advance/mod_8.png",
          'body': "An abstract method belongs to an abstract class, and it does not have a body. The body is provided by the subclass:"

        },
      ]
    },
      1:{
        'topic': '2.     Java Encapsulation',
        'subTopic': [
          {
            'heading': "Encapsulation",
            'body': "The meaning of Encapsulation, is to make sure that sensitive data is hidden from users. To achieve this, you must:"
            "\n\n •declare class variables/attributes as private"
            "\n\n •provide public get and set methods to access and update the value of a private variable"
          },
          {
            'heading': "Get and Set",
            'attachment': "assets/java_advance/encap_1.png",
            'body': "You learned from the previous chapter that private variables can only be accessed"
            "within the same class (an outside class has no access to it). However, it is possible to access "
            "them if we provide public get and set methods."
            "\n\nThe get method returns the variable value, and the set method sets the value."
            "\n\nSyntax for both is that they start with either get or set, "
                "followed by the name of the variable, with the first letter in upper case:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/encap_2.png",
            'body': "If the variable was declared as public, we would expect the following output:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/encap_3.png",
            'body': "However, as we try to access a private variable, we get an error:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/encap_4.png",
            'body': "Instead, we use the getName() and setName() methods to access and update the variable:"
          },
        ]
      },
      2:{
        'topic': '3.     Java Packages',
        'subTopic': [
          {
            'heading': "Java Packages & API",
            'body': "A package in Java is used to group related classes. Think of it as a folder in a file directory."
            "We use packages to avoid name conflicts, and to write a better maintainable code. "
            "Packages are divided into two categories:"
            "\n\n•Built-in Packages (packages from the Java API)"
                "\n\n•User-defined Packages (create your own packages)"
          },
          {
            'heading': "Built-in Packages",
            'attachment': "assets/java_advance/pack_1.png",
            'body': "The Java API is a library of prewritten classes, "
                "that are free to use, included in the Java Development Environment."
            "\n\n\nThe library contains components for managing input, database programming, and much much more."
            "The complete list can be found at Oracles website: https://docs.oracle.com/javase/8/docs/api/."
            "\n\n\nThe library is divided into packages and classes. Meaning you can either import a single class"
            "(along with its methods and attributes), or a whole package that contain all the classes that belong to the specified package."
            "\n\nTo use a class or a package from the library, you need to use the import keyword:"

          },
          {
            'heading': "Import a Class",
            'attachment': "assets/java_advance/pack_2.png",
            'body': "If you find a class you want to use, for example, the Scanner class, "
                "which is used to get user input, write the following code:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/pack_3.png",
            'body': "In the example above, java.util is a package, while Scanner is a class of the java.util package."
            "To use the Scanner class, create an object of the class and use any of the available methods found in the Scanner"
            "class documentation. In our example, we will use the nextLine() method, which is used to read a complete line:"

          },
          {
            'heading': "Import a Package",
            'attachment': "assets/java_advance/pack_4.png",
            'body': "There are many packages to choose from. In the previous example, we used the Scanner"
            "class from the java.util package. This package also contains date and time facilities, "
                "random-number generator and other utility classes."
            "\n\nTo import a whole package, end the sentence with an asterisk sign (*). "
                "The following example will import ALL the classes in the java.util package:"
          },
          {
            'heading': "User-defined Packages",
            'attachment': "assets/java_advance/pack_5.png",
            'body': "To create your own package, you need to understand that Java uses a file "
                "system directory to store them. Just like folders on your computer:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/pack_6.png",
            'body': "To create a package, use the package keyword:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/pack_7.png",
            'body': "Save the file as MyPackageClass.java, and compile it:"

          },
          {
            'heading': "",
            'attachment': "assets/java_advance/pack_8.png",
            'body': "Then compile the package:"

          },
          {
            'heading': "",
            'attachment': "assets/java_advance/pack_9.png",
            'body': "When we compiled the package in the example above, a new folder was created, called 'mypack'."
            "\nTo run the MyPackageClass.java file, write the following:"

          },
          {
            'heading': "",
            'attachment': "assets/java_advance/pack_10.png",
            'body': "The output will be:"
          },


        ]
      },
      3:{
        'topic': '4.     Java Inheritance',
        'subTopic': [
          {
            'heading': "Java Inheritance (Subclass and Superclass)",
            'attachment': "assets/java_advance/inhe_1.png",
            'body': "In Java, it is possible to inherit attributes and methods from "
                "one class to another. We group the inheritance concept into two categories:"
            "\n\n•subclass (child) - the class that inherits from another class"
                "\n•superclass (parent) - the class being inherited from"
            "\n\nTo inherit from a class, use the extends keyword."
            "\n\n In the example below, the Car class (subclass) inherits the "
                "attributes and methods from the Vehicle class (superclass):"

          },

        ]
      },
      4:{
        'topic': '5.     Java Polymorphism',
        'subTopic': [
          {
            'heading': "  Java Polymorphism",
            'attachment': "assets/java_advance/poly_1.png",
            'body': "\nPolymorphism means many forms, and it occurs when we have many "
                "classes that are related to each other by inheritance."
            "\nLike we specified in the previous chapter; Inheritance lets us inherit attributes"
            "and methods from another class. Polymorphism uses those methods to perform different tasks."
            "This allows us to perform a single action in different ways."
            "\n\nFor example, think of a superclass called Animal that has a method called animalSound()."
            "Subclasses of Animals could be Pigs, Cats, Dogs, Birds - And they also have their "
            "own implementation of an animal sound (the pig oinks, and the cat meows, etc.):"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/poly_2.png",
            'body': "Now we can create Pig and Dog objects and call the animalSound() method on both of them: "
          }
        ]
      },
      5:{
        'topic': '6.     Java Inner Classes',
        'subTopic': [
          {
            'heading': "Java Inner Classes",
            'attachment': "assets/java_advance/inn_1.png",
            'body': "In Java, it is also possible to nest classes (a class within a class). The purpose of nested classes is"
            "to group classes that belong together, which makes your code more readable and maintainable."
            "\nTo access the inner class, create an object of the outer class, and then create an object of the inner class:"
          },
          {
            'heading': "Private Inner Class",
            'attachment': "assets/java_advance/inn_2.png",
            'body': "Unlike a regular class, an inner class can be private or protected. If you don't want outside"
            "objects to access the inner class, declare the class as private:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/inn_3.png",
            'body': "If you try to access a private inner class from an outside class, an error occurs:"
          },
          {
            'heading': "Static Inner Class",
            'attachment': "assets/java_advance/inn_4.png",
            'body': "An inner class can also be static, which means that you "
                "can access it without creating an object of the outer class:"
          },
          {
            'heading': "Access Outer Class From Inner Class",
            'attachment': "assets/java_advance/inn_5.png",
            'body': "One advantage of inner classes, is that they can access attributes and methods of the outer class:"
          },


        ]
      },
      6:{
        'topic': '7.     Java Abstraction',
        'subTopic': [
          {
            'heading': "Abstract Classes and Methods ",
            'attachment': "assets/java_advance/abs_1.png",
            'body': "Data abstraction is the process of hiding certain details and showing"
            "only essential information to the user. Abstraction can be achieved with either"
            "abstract classes or interfaces"
            "\n\nThe abstract keyword is a non-access modifier, used for classes and methods:"
            "\n\n•Abstract class: is a restricted class that cannot be used to create objects "
                "(to access it, it must be inherited from another class)."
            "\n\n•Abstract method: can only be used in an abstract class, and it does "
                "not have a body. The body is provided by the subclass (inherited from)."
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/abs_2.png",
            'body': "To access the abstract class, it must be inherited from another class. "
            "\nLet's convert the Animal class we used in the Polymorphism chapter to an abstract class:"
          },
        ]
      },
      7:{
        'topic': '8.     Java Interface',
        'subTopic': [
          {
            'heading': "Interfaces",
            'attachment': "assets/java_advance/inter_1.png",
            'body': "Another way to achieve abstraction in Java, is with interfaces. An "
            "interface is a completely abstract class that is used to group related methods with empty bodies:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/inter_2.png",
            'body': "To access the interface methods, the interface must be implemented"
            "by another class with the implements keyword The body of the interface method is "
            "provided by the implement class:"
          },
          {
            'heading': "Multiple Interfaces",
            'attachment': "assets/java_advance/inter_3.png",
            'body': "To implement multiple interfaces, separate them with a comma:"
          }
        ]
      },
      8:{
        'topic': '9.     Java Enums',
        'subTopic': [
          {
            'heading': "Enums",
            'attachment': "assets/java_advance/enums_1.png",
            'body': "An enum is a special class that represents a group of constants "
            "To create an enum, use the enum keyword and separate the constants with a comma. Note that they "
            "should be in uppercase letters:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/enums_2.png",
            'body': "You can access enum constants with the dot syntax:"
          },
          {
            'heading': "Enum inside a Class",
            'attachment': "assets/java_advance/enums_3.png",
            'body': "You can also have an enum inside a class:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/enums_4.png",
            'body': "The output will be:"
          },
          {
            'heading': "Enum in a Switch Statement",
            'attachment': "assets/java_advance/enums_5.png",
            'body': "Enums are often used in switch statements to check for corresponding values:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/enums_6.png",
            'body': "The output will be:"
          },
          {
            'heading': "Loop Through an Enum",
            'attachment': "assets/java_advance/enums_7.png",
            'body': "The enum type has a values() method, which returns an array of all enum constants."
            "This method is useful when you want to loop through the constants of an enum:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/enums_8.png",
            'body': "The output will be:"

          },
        ]
      },
      9:{
        'topic': "10.     Java User Input (Scanner)",
        'subTopic': [
          {
            'heading': "Java User Input",
            'attachment': "assets/java_advance/user_1.png",
            'body': "The Scanner class is used to get user input, and it is found in the java.util package."
            "To use the Scanner class, create an object of the class and use any of the available "
            "methods found in the Scanner class documentation. In our example,"
            "we will use the nextLine() method, which is used to read Strings:"
          },
          {
            'heading': "Input types",
            'attachment': "assets/java_advance/user_2.png",
            'body': "In the example above, we used the nextLine() method, which is used to"
            "read Strings. To read other types, look at the table below:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/user_3.png",
            'body': "In the example below, we use different methods to read data of various types:"
          },
          {
            'heading': "Java Date and Time",

          }
        ]

      },
      10:{
        'topic': "11.     Java Date and Time",
        'subTopic': [
          {
            'heading': "Java Dates",
            'attachment': "assets/java_advance/date_1.png",
            'body': "Java does not have a built-in Date class, but we can import the java.time"
            "package to work with the date and time API. The package includes many date and time classes. For example:"

          },
          {
            'heading': "Display Current Date",
            'attachment': "assets/java_advance/date_2.png",
            'body': "To display the current date, import the java.time.LocalDate class, and use its now() method:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/date_3.png",
            'body': "The output will be:"
          },
          {
            'heading': "Display Current Time",
            'attachment': "assets/java_advance/date_4.png",
            'body': "To display the current time (hour, minute, second, and nanoseconds), "
                "import the java.time.LocalTime class, and use its now() method:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/date_5.png",
            'body': "The output will be:"
          },
          {
            'heading': "Display Current Date and Time",
            'attachment': "assets/java_advance/date_6.png",
            'body': "To display the current date and time, import the java.time.LocalDateTime class, "
                "and use its now() method:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/date_7.png",
            'body': "The output will be:"
          },
          {
            'heading': "Formatting Date and Time",
            'attachment': "assets/java_advance/date_8.png",
            'body': "The T in the example above is used to separate the date from the time."
            "You can use the DateTimeFormatter class with the ofPattern()"
            "method in the same package to format or parse date-time objects."
            "The following example will remove both the T and nanoseconds from the date-time:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/date_9.png",
            'body': "The ofPattern() method accepts all sorts of values, "
                "if you want to display the date and time in a different format. For example:"
          },
        ]
      },
      11: {
        'topic': "12.     Java ArrayList",
        'subTopic':[
          {
            'heading': "Java ArrayList",
            'attachment': "assets/java_advance/array_1.png",
            'body': "The ArrayList class is a resizable array, which can be found in the java.util package."
            "The difference between a built-in array and an ArrayList in Java, is that the size of an array"
            "cannot be modified (if you want to add or remove elements to/from an array,"
            "you have to create a new one). While elements can be added"
            "and removed from an ArrayList whenever you want. The syntax is also slightly different:"
          },
          {
            'heading': "Add Items",
            'attachment': "assets/java_advance/array_2.png",
            'body': "The ArrayList class has many useful methods. For example, "
                "to add elements to the ArrayList, use the add() method:"
          },
          {
            'heading': "Access an Item",
            'attachment': "assets/java_advance/array_3.png",
            'body': "To access an element in the ArrayList, use the get() method and refer to the index number:"
          },
          {
            'heading': "Change an Item",
            'attachment': "assets/java_advance/array_4.png",
            'body': "To modify an element, use the set() method and refer to the index number:"
          },
          {
            'heading': "Remove an Item",
            'attachment': "assets/java_advance/array_5.png",
            'body': "To remove an element, use the remove() method and refer to the index number:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/array_6.png",
            'body': "To remove all the elements in the ArrayList, use the clear() method:"
          },
          {
            'heading': "ArrayList Size",
            'attachment': "assets/java_advance/array_7.png",
            'body': "To find out how many elements an ArrayList have, use the size method:"
          },
          {
            'heading': "Loop Through an ArrayList",
            'attachment': "assets/java_advance/array_8.png",
            'body': "Loop through the elements of an ArrayList with a for loop, and use the size() "
                "method to specify how many times the loop should run:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/array_9.png",
            'body': "You can also loop through an ArrayList with the for-each loop:"
          },
          {
            'heading': "Other Types",
            'attachment': "assets/java_advance/array_10.png",
            'body': "Elements in an ArrayList are actually objects. In the examples above, we created elements"
            "(objects) of type String. Remember that a String in Java is an object (not a primitive type)."
            "To use other types, such as int, you must specify an equivalent wrapper class: Integer."
            "For other primitive types, use: Boolean for boolean, Character for char, Double for double, etc:"

          },
          {
            'heading': "Sort an ArrayList",
            'attachment': "assets/java_advance/array_11.png",
            'body': "Another useful class in the java.util package is the Collections class, "
                "which include the sort() method for sorting lists alphabetically or numerically:"

          },
          {
            'heading': "",
            'attachment': "assets/java_advance/array_12.png",
            'body': "Sort an ArrayList of Integers:"

          },
        ]
      },
      12:{
        'topic': '13.     Java Linkedlist',
        'subTopic':[
          {
            'heading': "Java LinkedList",
            'attachment': "assets/java_advance/linked_1.png",
            'body': "In the previous chapter, you learned about the ArrayList class. "
                "The LinkedList class is almost identical to the ArrayList:"
          },
          {
            'heading': "ArrayList vs. LinkedList",
            'body': "The LinkedList class is a collection which can contain many objects of the same type, just like the ArrayList."
                "\nThe LinkedList class has all of the same methods as the ArrayList class because they"
            "both implement the List interface. This means that you can add items, change items,"
            "remove items and clear the list in the same way."
            "However, while the ArrayList class and the LinkedList class can be used in the same way, "
                "they are built very differently."
          },
          {
            'heading': "How the ArrayList works",
            'body': "The ArrayList class has a regular array inside it. When an element is added,"
            "it is placed into the array. If the array is not big enough, a new,"
                "larger array is created to replace the old one and the old one is removed."
          },
          {
            'heading': "How the LinkedList works",
            'body': "The LinkedList stores its items in containers. The list has a link to the "
            "first container and each container has a link to the next container in"
            "the list. To add an element to the list, the element is placed"
            "into a new container and that container is linked to one of the other containers in the list."

          },
          {
            'heading': "LinkedList Methods",
            'attachment': "assets/java_advance/linked_2.png",
            'body': "For many cases, the ArrayList is more efficient as it is common to need access to"
            "random items in the list, but the LinkedList provides several methods to do certain operations more efficiently:"
          },
        ]
      },
      13:{
        'topic': '14.     Java HashMap',
        'subTopic': [
          {
            'heading': "Java HashMap",
            'attachment': "assets/java_advance/hash_1.png",
            'body': "In the ArrayList chapter, you learned that Arrays store items as an ordered collection,"
            "and you have to access them with an index number (int type). A HashMap however, "
            "store items in key/value pairs, and you can access them by an index of another type "
            "One object is used as a key (index) to another object (value). It can store different types:"
            "String keys and Integer values, or the same type, like: String keys and String values:"
          },
          {
            'heading': "add items",
            'attachment': "assets/java_advance/hash_2.png",
            'body': "The HashMap class has many useful methods. For example, to add items to it, use the put() method:"
          },
          {
            'heading': "Access an Item",
            'attachment': "assets/java_advance/hash_3.png",
            'body': "To access a value in the HashMap, use the get() method and refer to its key:"
          },
          {
            'heading': "Remove an Item",
            'attachment': "assets/java_advance/hash_4.png",
            'body': "To access a value in the HashMap, use the get() method and refer to its key:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/hash_5.png",
            'body': "To remove all items, use the clear() method:"
          },
          {
            'heading': "HashMap Size",
            'attachment': "assets/java_advance/hash_6.png",
            'body': "To find out how many items there are, use the size() method:"
          },
          {
            'heading': "Loop Through a HashMap",
            'attachment': "assets/java_advance/hash_7.png",
            'body': "Loop through the items of a HashMap with a for-each loop."
            "\n\nNote: Use the keySet() method if you only want the keys, and use the values() "
                "method if you only want the values:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/hash_8.png",
            'body': "example"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/hash_9.png",
            'body': "example"
          },
          {
            'heading': "Other Types",
            'attachment': "assets/java_advance/hash_10.png",
            'body': "Keys and values in a HashMap are actually objects. In the examples above,"
            "we used objects of type String. Remember that a String in Java"
            "is an object (not a primitive type). To use other types, such as int, you must specify"
            "an equivalent wrapper class: Integer. For other primitive types, use:"
            "Boolean for boolean, Character for char, Double for double, etc:"
          },
        ]
      },
      14:{
        'topic': '15.     Java HashSet',
        'subTopic': [
          {
            'heading': "Java Hashset",
            'attachment': "assets/java_advance/set_1.png",
            'body': "A HashSet is a collection of items where every item is unique, and it is found in the java.util package:"
          },
          {
            'heading': "Add Items",
            'attachment': "assets/java_advance/set_2.png",
            'body': "The HashSet class has many useful methods. For example, to add items to it, use the add() method:"
          },
          {
            'heading': "Check If an Item Exists",
            'attachment': "assets/java_advance/set_3.png",
            'body': "To check whether an item exists in a HashSet, use the contains() method:"
          },
          {
            'heading': "Remove an Item",
            'attachment': "assets/java_advance/set_4.png",
            'body': "To remove an item, use the remove() method:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/set_5.png",
            'body': "To remove an item, use the remove() method:"
          },
          {
            'heading': "HashSet Size",
            'attachment': "assets/java_advance/set_6.png",
            'body': "To find out how many items there are, use the size method:"
          },
          {
            'heading': "Loop Through a HashSet",
            'attachment': "assets/java_advance/set_7.png",
            'body': "Loop through the items of an HashSet with a for-each loop:"
          },
          {
            'heading': "Other Types",
            'attachment': "assets/java_advance/set_8.png",
            'body': "Items in an HashSet are actually objects. In the examples above, we created items (objects) of type String."
            "Remember that a String in Java is an object (not a primitive type). To use other types,"
            "such as int, you must specify an equivalent wrapper class: Integer. For other primitive"
            "types, use: Boolean for boolean, Character for char, Double for double, etc:"
          },
        ]
      },
      15:{
        'topic': '16.     Java Iterator',
        'subTopic': [
          {
            'heading': "Java Iterator",
            'body': "An Iterator is an object that can be used to loop through collections, "
            "like ArrayList and HashSet. It is called an iterator because iterating"
            "is the technical term for looping."
            "\n\nTo use an Iterator, you must import it from the java.util package."
          },
          {
            'heading': "Getting an Iterator ",
            'attachment': "assets/java_advance/ite_1.png",
            'body': "The iterator() method can be used to get an Iterator for any collection:"
          },
          {
            'heading': "Looping Through a Collection ",
            'attachment': "assets/java_advance/ite_2.png",
            'body': "To loop through a collection, use the hasNext() and next() methods of the Iterator:"
          },
          {
            'heading': "Removing Items from a Collection ",
            'attachment': "assets/java_advance/ite_3.png",
            'body': "Iterators are designed to easily change the collections that they loop through."
            "The remove() method can remove items from a collection while looping."
          },
        ]
      },
      16:{
        'topic': '17.     Java Wrapper Classes',
        'subTopic':[
          {
            'heading': "Java Wrapper Classes ",
            'attachment': "assets/java_advance/wrap_1.png",
            'body': "Wrapper classes provide a way to use primitive data types (int, boolean, etc..) as objects."
            "The table below shows the primitive type and the equivalent wrapper class:"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/wrap_2.png",
            'body': "Sometimes you must use wrapper classes, for example when working with Collection objects,"
            "such as ArrayList, where primitive types cannot be used (the list can only store objects):"
          },
          {
            'heading': "Creating Wrapper Objects ",
            'attachment': "assets/java_advance/wrap_3.png",
            'body': "To create a wrapper object, use the wrapper class instead of the primitive type. "
                "To get the value, you can just print the object:"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/wrap_4.png",
            'body': "Since you're now working with objects, you can use certain methods to get information"
                "about the specific object."
            "For example, the following methods are used to get the value associated with"
            "the corresponding wrapper object: intValue(), byteValue(), shortValue(), longValue(), floatValue(),"
            "doubleValue(), charValue(), booleanValue()."
                "This example will output the same result as the example above:"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/wrap_5.png",
            'body': "Another useful method is the toString() method, which is used to convert wrapper objects to strings."
            "In the following example, we convert an Integer to a String,"
            "and use the length() method of the String class to output the length of the string:"
          },

        ]
      },
      17:{
        'topic': '18.     Java Exceptions - Try...Catch',
        'subTopic': [
          {
            'heading': "Java Exceptions",
            'body': "When executing Java code, different errors can occur: coding errors made by the programmer, "
                "errors due to wrong input, or other unforeseeable things."
            "When an error occurs, Java will normally stop and generate an error message. "
            "The technical term for this is: Java will throw an exception (throw an error)."
          },
          {
            'heading': "Java try and catch ",
            'attachment': "assets/java_advance/ex_1.png",
            'body': "The try statement allows you to define a block of code to be tested for errors while it is being executed."
            "\nThe catch statement allows you to define a block of code to be executed, if an error occurs in the try block."
            "\nThe try and catch keywords come in pairs:"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/ex_2.png",
            'body': "\n\nConsider the following example:"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/ex_3.png",
            'body': "The output will be something like this:"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/ex_4.png",
            'body': "Example"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/ex_5.png",
            'body': "The output will be:"
          },
          {
            'heading': "Finally ",
            'attachment': "assets/java_advance/ex_6.png",
            'body': "The finally statement lets you execute code, after try...catch, regardless of the result:"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/ex_7.png",
            'body': "The output will be:"
          },
          {
            'heading': "The throw keyword ",
            'attachment': "assets/java_advance/ex_8.png",
            'body': "The throw statement allows you to create a custom error."
            "The throw statement is used together with an exception type. "
            "There are many exception types available in Java: ArithmeticException,"
            "FileNotFoundException, ArrayIndexOutOfBoundsException, SecurityException, etc:"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/ex_9.png",
            'body': "The output will be:"
          },
          {
            'heading': "",
            'attachment': "assets/java_advance/ex_10.png",
            'body': "If age was 20, you would not get an exception: "
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/ex_11.png",
            'body': "The output will be"
          },
        ]
      },
      18:{
        'topic': '19.     Java Regular Expressions',
        'subTopic': [
          {
            'heading': "What is a Regular Expression?",
            'attachment': "assets/java_advance/reg_1.png",
            'body': "A regular expression is a sequence of characters that forms a search pattern. "
                "When you search for data in a text, you can use this search pattern to describe what you are searching for."
            "\nA regular expression can be a single character, or a more complicated pattern."
            "\nRegular expressions can be used to perform all types of text search and text replace operations."
            "\nJava does not have a built-in Regular Expression class, but we can import the "
                "java.util.regex package to work with regular expressions. The package includes the following classes:"
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "•Pattern Class - Defines a pattern (to be used in a search)"
            "\n•Matcher Class - Used to search for the pattern"
            "\n•PatternSyntaxException Class - Indicates syntax error in a regular expression pattern"
          },
          {
            'heading': "Flags ",
            'attachment': "",
            'body': "Flags in the compile() method change how the search is performed. Here are a few of them:"
            "\n\n•Pattern.CASE_INSENSITIVE - The case of letters will be ignored when performing a search."
            "\n\n•Pattern.LITERAL - Special characters in the pattern will not have any special meaning "
                "and will be treated as ordinary characters when performing a search."
            "\n\n•Pattern.UNICODE_CASE - Use it together with the CASE_INSENSITIVE flag to also ignore the "
                "case of letters outside of the English alphabet"
          },
          {
            'heading': "Regular Expression Patterns ",
            'attachment': "assets/java_advance/reg_2.png",
            'body': "The first parameter of the Pattern.compile() method is the pattern. "
                "It describes what is being searched for."
            "\n\nBrackets are used to find a range of characters:"
          },
          {
            'heading': "Metacharacters ",
            'attachment': "assets/java_advance/reg_3.png",
            'body': "Metacharacters are characters with a special meaning:"
          },
          {
            'heading': "Quantifiers ",
            'attachment': "assets/java_advance/reg_4.png",
            'body': "Quantifiers define quantities:"
          },
        ]
      },
      19:{
        'topic': "20.     Java Threads",
        'subTopic':[
          {
            'heading': "Java Threads ",
            'body': "Threads allows a program to operate more efficiently by doing multiple things at the same time."
            "\n\nThreads can be used to perform complicated tasks in the background without interrupting the main program."
          },
          {
            'heading': "Creating a Thread ",
            'attachment': "assets/java_advance/thread_1.png",
            'body': "There are two ways to create a thread."
            "\n\nIt can be created by extending the Thread class and overriding its run() method:"
          },
          {
            'heading': "Implement Syntax ",
            'attachment': "assets/java_advance/thread_2.png",
            'body': "Another way to create a thread is to implement the Runnable interface:"
          },
          {
            'heading': "Running Threads",
            'attachment': "assets/java_advance/thread_3.png",
            'body': "If the class extends the Thread class, the thread can be run by "
                "creating an instance of the class and call its start() method:"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/thread_4.png",
            'body': "If the class implements the Runnable interface, the thread can be run "
                "by passing an instance of the class to a Thread object's constructor and then "
                "calling the thread's start() method:"
          },
          {
            'heading': "Concurrency Problems",
            'attachment': "assets/java_advance/thread_5.png",
            'body': "Because threads run at the same time as other parts of the program, "
                "there is no way to know in which order the code will run. When the"
            "threads and main program are reading and writing the same variables, the values are unpredictable. "
                "The problems that result from this are"
            "called concurrency problems."
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/thread_6.png",
            'body': "To avoid concurrency problems, it is best to share as few attributes between threads as possible."
            "If attributes need to be shared, one possible solution is to use the isAlive()"
            "method of the thread to check whether the thread has finished running before using any attributes that the thread can change."
          },
]
      },
      20:{
        'topic': '21.     Java Lambda Expressions',
        'subTopic': [
          {
            'heading': "Java Lambda Expressions ",
            'attachment': "",
            'body': "Lambda Expressions were added in Java 8."
            "\n\nA lambda expression is a short block of code which takes in parameters and returns a value. "
                "Lambda expressions are similar to methods, but they do not need a name and they can be"
                " implemented right in the body of a method."
          },
          {
            'heading': "Syntax ",
            'attachment': "assets/java_advance/lamb_1.png",
            'body': "The simplest lambda expression contains a single parameter and an expression:"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/lamb_2.png",
            'body': "To use more than one parameter, wrap them in parentheses:"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/lamb_3.png",
            'body': "Expressions are limited. They have to immediately return a value, and they cannot contain variables,"
            "assignments or statements such as if or for. In order to do more complex operations,"
            "a code block can be used with curly braces. If the lambda expression needs to return a value,"
            "then the code block should have a return statement."
          },
          {
            'heading': "Using Lambda Expressions ",
            'attachment': "assets/java_advance/lamb_4.png",
            'body': "Lambda expressions are usually passed as parameters to a function:"
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/lamb_5.png",
            'body': "Lambda expressions can be stored in variables if the variable's type is an interface which has only one method."
            "The lambda expression should have the same number of parameters and the same return type as"
                "that method. Java has many of these kinds of interfaces built in, such as the Consumer"
            " interface (found in the java.util package) used by lists."
          },
          {
            'heading': " ",
            'attachment': "assets/java_advance/lamb_6.png",
            'body': "Create a method which takes a lambda expression as a parameter:"
          },
        ]
      }


    }
  },
  Languages.dart: {
    Categories.beginner: {
      0:{
        'topic': "1.     Introduction to Dart",
        'subTopic': [
          {
            'heading': "Introduction to Dart",
            'body': "This page provides a brief introduction to the Dart language through samples of its main features."
          },
          {
            'heading': "Hello World ",
            'attachment': "assets/dart_beginner/intro_1.png",
            'body': "Every app requires the top-level main() function, where execution starts. "
                "Functions that don't explicitly return a value have the void return type. "
                "To display text on the console, you can use the top-level print() function:"
          },
          {
            'heading': "Variables ",
            'attachment': "assets/dart_beginner/intro_2.png",
            'body': "Even in type-safe Dart code, you can declare most variables "
                "without explicitly specifying their type using var. Thanks to type inference, these variables' "
                "types are determined by their initial values:"
          },
          {
            'heading': "Control flow statements ",
            'attachment': "assets/dart_beginner/intro_3.png",
            'body': "Dart supports the usual control flow statements:"
          },
          {
            'heading': "Functions",
            'attachment': "assets/dart_beginner/intro_4.png",
            'body': "We recommend specifying the types of each function's arguments and return value:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_5.png",
            'body': "A shorthand => (arrow) syntax is handy for functions that contain a single statement. "
                "This syntax is especially useful when passing anonymous functions as arguments:"
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "Besides showing an anonymous function (the argument to where()), this code shows that you "
                "can use a function as an argument: the top-level print() function is an argument to forEach()."
          },
          {
            'heading': "Comments ",
            'attachment': "assets/dart_beginner/intro_6.png",
            'body': "Dart comments usually start with //."
          },
          {
            'heading': "Imports ",
            'attachment': "assets/dart_beginner/intro_7.png",
            'body': "To access APIs defined in other libraries, use import."
          },
          {
            'heading': "Classes ",
            'attachment': "",
            'body': "Here's an example of a class with three properties, two constructors, "
                "and a method. One of the properties can't be set directly, so it's defined using "
                "a getter method (instead of a variable). The method uses string interpolation to print "
                "variables' string equivalents inside of string literals."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_8.png",
            'body': "You might use the Spacecraft class like this:"
          },
          {
            'heading': "Enums ",
            'attachment': "assets/dart_beginner/intro_9.png",
            'body': "Enums are a way of enumerating a predefined set of values or "
                "instances in a way which ensures that there cannot be any other instances of that type."
            "\n\nHere is an example of a simple enum that defines a simple list of predefined planet types:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_10.png",
            'body': "\n\nHere is an example of an enhanced enum declaration of a class describing planets, "
                "with a defined set of constant instances, namely the planets of our own solar system."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_11.png",
            'body': "You might use the Planet enum like this:"
          },
          {
            'heading': "Inheritance ",
            'attachment': "assets/dart_beginner/intro_12.png",
            'body': "Dart has single inheritance."
          },
          {
            'heading': "Mixins",
            'attachment': "assets/dart_beginner/intro_13.png",
            'body': "Mixins are a way of reusing code in multiple class hierarchies. The following is a mixin declaration:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_14.png",
            'body': "To add a mixin's capabilities to a class, just extend the class with the mixin."
          },
          {
            'heading': "Interfaces and abstract classes",
            'attachment': "assets/dart_beginner/intro_15.png",
            'body': "All classes implicitly define an interface. Therefore, you can implement any class."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_16.png",
            'body': "You can create an abstract class to be extended (or implemented) by a concrete class. "
                "Abstract classes can contain abstract methods (with empty bodies)."
          },
          {
            'heading': "Async ",
            'attachment': "assets/dart_beginner/intro_17.png",
            'body': "Avoid callback hell and make your code much more readable by using async and await."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_18.png",
            'body': "The method above is equivalent to:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_19.png",
            'body': "As the next example shows, async and await help make asynchronous code easy to read."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_20.png",
            'body': "You can also use async*, which gives you a nice, readable way to build streams."
          },
          {
            'heading': "Exceptions ",
            'attachment': "assets/dart_beginner/intro_21.png",
            'body': "To raise an exception, use throw:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_22.png",
            'body': "To catch an exception, use a try statement with on or catch (or both):"
          },

        ]
      },
      1:{
        'topic': '2.     Syntax Basis',
        'subTopic': [
          {
            'heading': "Variables",
            'attachment': "assets/dart_beginner/var_1.png",
            'body': "Here's an example of creating a variable and initializing it:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/var_2.png",
            'body': "Variables store references. The variable called name contains a reference to a String object with a value of Bob."
            "The type of the name variable is inferred to be String, but you can change that type by specifying it. If an object isn't "
                "restricted to a single type, specify the Object type (or dynamic if necessary)."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/var_3.png",
            'body': "Another option is to explicitly declare the type that would be inferred:"
          },
          {
            'heading': "Null safety ",
            'attachment': "",
            'body': "The Dart language enforces sound null safety."
            "\nNull safety prevents an error that results from unintentional access of variables set to null. "
                "The error is called a null"
            "dereference error. A null dereference error occurs when you access a property or call a method on an expression that"
            "evaluates to null. An exception to this rule is when null supports the property or method, like toString() or hashCode."
            "With null safety, the Dart compiler detects these potential errors at compile time."
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "\n\nFor example, say you want to find the absolute value of an int variable i. "
                "If i is null, calling i.abs() causes a null"
            "dereference error. In other languages, trying this could lead to a runtime error,"
              "but Darts compiler prohibits these actions. Therefore, Dart apps cant cause runtime errors."
          },
          {
            'heading': "Null safety introduces three key changes: ",
            'attachment': "assets/dart_beginner/var_4.png",
            'body': "1.When you specify a type for a variable, parameter, or another relevant component, "
                "you can control whether the type allows null. To enable nullability, you add a ? to the end of the type declaration."
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "\n2. You must initialize variables before using them. Nullable variables default to null, "
                "so they are initialized by default. Dart"
            "doesn't set initial values to non-nullable types. It forces you to set an initial value. Dart doesn't allow you to observe an"
            "uninitialized variable. This prevents you from accessing properties or calling methods where the receiver's type can be"
            "null but null doesn't support the method or property used."
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "3.You can't access properties or call methods on an expression with a nullable type. "
                "The same exception applies where it's a property or method that null supports like hashCode or toString()."
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "Sound null safety changes potential runtime errors into edit-time analysis errors. "
                "Null safety flags a non-null variable when it has been either:"
            "\n\n•Not initialized with a non-null value."
            "\n\n•Assigned a null value."
          },
          {
            'heading': "Default value ",
            'attachment': "assets/dart_beginner/var_5.png",
            'body': "Uninitialized variables that have a nullable type have an initial value of null. Even variables with numeric "
                "types are initially null, because numbers—like everything else in Dart—are objects."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/var_6.png",
            'body': "With null safety, you must initialize the values of non-nullable variables before you use them:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/var_7.png",
            'body': "You don't have to initialize a local variable where it's declared, "
                "but you do need to assign it a value before it's used. For example, the following code is valid "
                "because Dart can detect that lineCount is non-null by the time it's passed to print():"
          },
          {
            'heading': "Late variables ",
            'attachment': "assets/dart_beginner/var_8.png",
            'body': "The late modifier has two use cases:"
            "\n•Declaring a non-nullable variable that's initialized after its declaration."
            "\n•Lazily initializing a variable."
            "Often Dart's control flow analysis can detect when a non-nullable variable is "
                "set to a non-null value before it's used, but"
            "sometimes analysis fails. Two common cases are top-level variables and instance "
                "variables: Dart often can't determine"
            "whether they're set, so it doesn't try."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/var_9.png",
            'body': "When you mark a variable as late but initialize it at its declaration, then the initializer "
                "runs the first time the variable is used. This lazy initialization is handy in a couple of cases:"
            "\n\n•The variable might not be needed, and initializing it is costly."
            "\n\n•You're initializing an instance variable, and its initializer needs access to this."
            "\n\nIn the following example, if the temperature variable is never used, then the expensive readThermometer() function is never called:"
          },
          {
            'heading': "Final and const",
            'attachment': "",
            'body': "If you never intend to change a variable, use final or const, either instead of var or in addition to a type. "
                "A final variable can be set only once; a const variable is a compile-time constant. (Const variables are implicitly final.)"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/var_10.png",
            'body': "Here's an example of creating and setting a final variable:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/var_11.png",
            'body': "You can't change the value of a final variable:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/var_12.png",
            'body': "Use const for variables that you want to be compile-time constants. "
                "If the const variable is at the class level, mark it"
            "static const. Where you declare the variable, set the value to a compile-time "
                "constant such as a number or string literal, a"
            "const variable, or the result of an arithmetic operation on constant numbers:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/var_13.png",
            'body': "The const keyword isn't just for declaring constant variables. You can also use it to "
                "create constant values, as well as to declare constructors that create constant values. "
                "Any variable can have a constant value."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/var_14.png",
            'body': "You can omit const from the initializing expression of a const "
                "declaration, like for baz above. For details, see DON'T use const redundantly."
            "\n\nYou can change the value of a non-final, non-const variable, even if it used to have a const value:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/var_15.png",
            'body': "You can't change the value of a const variable:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/var_16.png",
            'body': "You can define constants that use type checks and casts "
                "(is and as), collection if, and spread operators (... and ...?):"
          },

        ]
      },
      2: {
        'topic': '3.     Operators',
        'subTopic':[
          {
            'heading': "Operators ",
            'attachment': "assets/dart_beginner/op_1.png",
            'body': "Dart supports the operators shown in the following table. "
                "The table shows Dart's operator"
            "associativity and operator precedence from highest to lowest, which are an approximation of Dart's"
            "operator relationships. You can implement many of these operators as class members."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_2.png",
            'body': "When you use operators, you create expressions. Here are "
                "some examples of operator expressions:"
          },
          {
            'heading': "Operator precedence example ",
            'attachment': "assets/dart_beginner/op_3.png",
            'body': "In the operator table, each operator has higher precedence "
                "than the operators in the rows that follow it. For example, the"
            "multiplicative operator % has higher precedence than (and thus executes before) "
                "the equality operator ==, which has"
            "higher precedence than the logical AND operator &&. That precedence means "
                "that the following two lines of code execute the same way:"
          },
          {
            'heading': "Arithmetic operators ",
            'attachment': "assets/dart_beginner/op_4.png",
            'body': "Dart supports the usual arithmetic operators, as shown in the following table."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_5.png",
            'body': "Example:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_6.png",
            'body': "Dart also supports both prefix and postfix increment and decrement operators."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_7.png",
            'body': "Example:"
          },
          {
            'heading': "Equality and relational operators ",
            'attachment': "assets/dart_beginner/op_8.png",
            'body': "The following table lists the meanings of equality and relational operators."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_9.png",
            'body': "To test whether two objects x and y represent the same thing, "
                "use the == operator. (In the rare case where you need to"
            "know whether two objects are the exact same object, use the identical() "
                "function instead.) Here's how the == operator works:"
            "\n\n1.If x or y is null, return true if both are null, and false if only one is null."
            "\n\n2.Return the result of invoking the == method on x with the argument y. (That's right, operators such as == are"
            "methods that are invoked on their first operand. For details, see Operators.)"
            "\n\nHere's an example of using each of the equality and relational operators:"
          },
          {
            'heading': "Type test operators ",
            'attachment': "assets/dart_beginner/op_10.png",
            'body': "The as, is, and is! operators are handy for checking types at runtime."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_11.png",
            'body': "The result of obj is T is true if obj implements the interface "
                "specified by T. For example, obj is Object? is always true."
            "\n\nUse the as operator to cast an object to a particular type if and only "
                "if you are sure that the object is of that type. Example:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_12.png",
            'body': "If you aren't sure that the object is of type T, then use is T to check the type before using the obje"
          },
          {
            'heading': "Assignment operators",
            'attachment': "assets/dart_beginner/op_13.png",
            'body': "As you've already seen, you can assign values using the = operator. "
                "To assign only if the assigned-to variable is null, use the ??= operator."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_14.png",
            'body': "Compound assignment operators such as += combine an operation with an assignment."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_15.png",
            'body': "Here's how compound assignment operators work:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_16.png",
            'body': "The following example uses assignment and compound assignment operators:"
          },
          {
            'heading': "Logical operators ",
            'attachment': "assets/dart_beginner/op_17.png",
            'body': "You can invert or combine boolean expressions using the logical operators."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_18.png",
            'body': "Here's an example of using the logical operators:"
          },
          {
            'heading': "Bitwise and shift operators ",
            'attachment': "assets/dart_beginner/op_19.png",
            'body': "You can manipulate the individual bits of numbers in Dart. "
                "Usually, you'd use these bitwise and shift operators with integers."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_20.png",
            'body': "Here's an example of using bitwise and shift operators:"
          },
          {
            'heading': "Conditional expressions ",
            'attachment': "assets/dart_beginner/op_21.png",
            'body': "Dart has two operators that let you concisely evaluate expressions "
                "that might otherwise require if-else statements:"
            "\n\ncondition ? expr1 : expr2"
            "If condition is true, evaluates expr1 (and returns its value); otherwise, "
                "evaluates and returns the value of expr2."
            "\n\nexpr1 ?? expr2"
            "If expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2."
            "\n\nWhen you need to assign a value based on a boolean expression, consider using ? and :."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_22.png",
            'body': "If the boolean expression tests for null, consider using ??."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_23.png",
            'body': "The previous example could have been written at least two other ways, but not as succinctly:"
          },
          {
            'heading': "Cascade notation",
            'attachment': "assets/dart_beginner/op_24.png",
            'body': "Cascades (.., ?..) allow you to make a sequence of operations on the same object. "
                "In addition to accessing instance"
            "members, you can also call instance methods on that same object. "
                "This often saves you the step of creating a temporary"
            "variable and allows you to write more fluid code."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_25.png",
            'body': "The constructor, Paint(), returns a Paint object. The code that follows the cascade notation "
                "operates on this object, ignoring any values that might be returned."
            "\n\nThe previous example is equivalent to this code:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_26.png",
            'body': "If the object that the cascade operates on can be null, "
                "then use a null-shorting cascade (?..) for the first operation."
            "Starting with ?.. guarantees that none of the cascade operations are attempted on that null object."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_27.png",
            'body': "The previous code is equivalent to the following:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_28.png",
            'body': "You can also nest cascades. For example:"
          },
          {
            'heading': "Other operators ",
            'attachment': "assets/dart_beginner/op_29.png",
            'body': "You've seen most of the remaining operators in other examples:"
          },


        ]
      },
      3: {
        'topic': '4.     Comments',
        'subTopic':[
          {
            'heading': "Single-line comments ",
            'attachment': "assets/dart_beginner/com_1.png",
            'body': "A single-line comment begins with //. "
                "Everything between // and the end of line is ignored by the Dart compiler."
          },
          {
            'heading': "Multi-line comments ",
            'attachment': "assets/dart_beginner/com_2.png",
            'body': "A multi-line comment begins with /* and ends with */. "
                "Everything between /* and */ is ignored by the"
            "Dart compiler (unless the comment is a documentation comment; "
                "see the next section). Multi-line"
            "comments can nest."
          },
          {
            'heading': "Documentation comments ",
            'attachment': "assets/dart_beginner/com_3.png",
            'body': "Documentation comments are multi-line or single-line comments "
                "that begin with /// or /**. Using"
            "/// on consecutive lines has the same effect as a multi-line doc comment."
            "Inside a documentation comment, the analyzer ignores all text unless it is enclosed in brackets. Using"
            "brackets, you can refer to classes, methods, fields, top-level variables, functions, and parameters. The"
            "names in brackets are resolved in the lexical scope of the documented program element."
            "\n\nHere is an example of documentation comments with references to other classes and arguments:"
          },



        ]
      },
      4: {
        'topic': '5.     Metadata',
        'subTopic':[
          {
            'heading': "Metadata ",
            'attachment': "assets/dart_beginner/meta_1.png",
            'body': "se metadata to give additional information about your code. "
                "A metadata annotation begins with the character"
            " @, followed by either a reference to a compile-time constant (such as deprecated) or a call to a constant constructor."
            "Four annotations are available to all Dart code: @Deprecated, @deprecated, @override, "
                "and @pragma. For examples"
            "of using @override, see Extending a class. Here's an example of using the @Deprecated annotation:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/meta_2.png",
            'body': "You can use @deprecated if you don't want to specify a message. "
                "However, we recommend always specifying a message with @Deprecated."
            "\n\nYou can define your own metadata annotations. Here's an example of defining "
                "a @Todo annotation that takes two arguments:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/meta_3.png",
            'body': "And here's an example of using that @Todo annotation:"
            "\n\nMetadata can appear before a library, class, typedef, type parameter, constructor, factory, function, field, parameter, "
                "or variable declaration and before an import or export directive."
          },



        ]
      },
      5: {
        'topic': '6.     Libraries & imports',
        'subTopic': [
          {
            'heading': "Libraries & imports ",
            'attachment': "",
            'body': "The import and library directives can help you create a modular "
                "and shareable code base. Libraries not only provide"
            "APIs, but are a unit of privacy: identifiers that start with an underscore (_) are visible only inside the library. Every Dart file"
            "(plus its parts) is a library, even if it doesn't use a library directive."
          },
          {
            'heading': "Using libraries ",
            'attachment': "assets/dart_beginner/lib_1.png",
            'body': "Use import to specify how a namespace from one library is used in "
                "the scope of another library."
            "For example, Dart web apps generally use the dart:html library, which they can import like this:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/lib_2.png",
            'body': "The only required argument to import is a URI specifying the library. For built-in libraries, the URI has the special dart:"
            "scheme. For other libraries, you can use a file system path or the package: scheme. The package: scheme specifies"
            "libraries provided by a package manager such as the pub tool. For example:"
          },
          {
            'heading': "Importing only part of a library ",
            'attachment': "assets/dart_beginner/lib_3.png",
            'body': "If you want to use only part of a library, you can selectively import the library. For example:"
          },
          {
            'heading': "Lazily loading a library ",
            'attachment': "",
            'body': "Deferred loading (also called lazy loading) allows a web app to "
                "load a library on demand, if and when the library is"
            "needed. Here are some cases when you might use deferred loading:"
            "\n\n•To reduce a web app's initial startup time."
            "\n\n•To perform A/B testing—trying out alternative implementations of an algorithm, for example."
            "\n\n•To load rarely used functionality, such as optional screens and dialogs."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/lib_4.png",
            'body': "To lazily load a library, you must first import it using deferred as."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/lib_5.png",
            'body': "When you need the library, invoke loadLibrary() using the library's identifier."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/lib_6.png",
            'body': "In the preceding code, the await keyword pauses execution until the library is loaded. "
                "For more information about"
            "async and await, see asynchrony support."
            "You can invoke loadLibrary() multiple times on a library without problems. The library is loaded only once."
            "\n\nKeep in mind the following when you use deferred loading:"
            "\n\n•A deferred library's constants aren't constants in the importing file. Remember, these constants don't exist until the"
            "\n\n•You can't use types from a deferred library in the importing file. Instead, consider moving interface types to a"
            "library imported by both the deferred library and the importing file."
            "\n\n•Dart implicitly inserts loadLibrary() into the namespace that you define using deferred as namespace. The"
            "loadLibrary() function returns a Future."
          },
          {
            'heading': "The library directive ",
            'attachment': "assets/dart_beginner/lib_7.png",
            'body': "To specify library-level doc comments or metadata annotations, attach them to a library declaration at the start of the file."
          },

        ]
      },
      6:{
        'topic': '7.     Keywords',
        'subTopic': [
          {
            'heading': "Keywords ",
            'attachment': "assets/dart_beginner/key_1.png",
            'body': "The following table lists the words that the Dart language treats specially."
          },

        ]
      },
      7: {
        'topic': '8.     Built-in Types',
        'subTopic': [
          {
            'heading': "Built-in types ",
            'attachment': "",
            'body': "The Dart language has special support for the following:"
                "\n\n•Numbers (int, double)"
                "\n•Strings (String)"
                "\n•Booleans (bool)"
                "\n•Records ((value1, value2))"
                "\n•Lists (List, also known as arrays)"
                "\n•Sets (Set)"
                "\n•Maps (Map)"
                "\n•Runes (Runes; often replaced by the characters API)"
                "\n•Symbols (Symbol)"
                "\n•The value null (Null)"
          },
          {
            'heading': "Numbers ",
            'attachment': "",
            'body': "int"
            "\n\nInteger values no larger than 64 bits, depending on the platform. On native platforms, values can be from -263 to 263 - 1."
            "On the web, integer values are represented as JavaScript numbers (64-bit floating-point values with no fractional part)"
            "and can be from -253 to 253 - 1."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_1.png",
            'body': "double"
            "\n\n64-bit (double-precision) floating-point numbers, as specified by the IEEE 754 standard."
            "Both int and double are subtypes of num. The num type includes basic operators such as +, -, /, and *, and is also where"
            "you'll find abs(),ceil(), and floor(), among other methods. (Bitwise operators, such as >>, are defined in the int class.) "
                "If num and its subtypes don't have what you're looking for, the dart:math library might."
            "Integers are numbers without a decimal point. Here are some examples of defining integer literals:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_2.png",
            'body': "If a number includes a decimal, it is a double. Here are some examples of defining double literals:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_3.png",
            'body': "You can also declare a variable as a num. If you do this, the variable can have both integer and double values."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_4.png",
            'body': "Integer literals are automatically converted to doubles when necessary:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_5.png",
            'body': "Here's how you turn a string into a number, or vice versa:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_6.png",
            'body': "The int type specifies the traditional bitwise shift (<<, >>, >>>), complement (~), AND (&), OR (|), and XOR (^) operators,"
            "which are useful for manipulating and masking flags in bit fields. For example:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_7.png",
            'body': "For more examples, see the bitwise and shift operator section."
            "\n\nLiteral numbers are compile-time constants. Many arithmetic expressions are also compile-time constants, as long as"
            "their operands are compile-time constants that evaluate to numbers."
          },
          {
            'heading': "Strings ",
            'attachment': "assets/dart_beginner/bit_8.png",
            'body': "A Dart string (String object) holds a sequence of UTF-16 code units. You can use either single or double quotes to"
            "create a string:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_9.png",
            'body': "You can put the value of an expression inside a string by using {expression}. If the expression is an identifier, you can"
            "skip the {}. To get the string corresponding to an object, Dart calls the object's toString() method."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_10.png",
            'body': "You can concatenate strings using adjacent string literals or the + operator:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_11.png",
            'body': "To create a multi-line string, use a triple quote with either single or double quotation marks:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_12.png",
            'body': "You can create a raw string by prefixing it with r:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_13.png",
            'body': "Literal strings are compile-time constants, as long as any interpolated expression "
                "is a compile-time constant that evaluates to null or a numeric, string, or boolean value."
          },
          {
            'heading': "Booleans ",
            'attachment': "assets/dart_beginner/bit_14.png",
            'body': "To represent boolean values, Dart has a type named bool. Only two objects have type bool: the boolean literals true and"
            "false, which are both compile-time constants."
            "Dart's type safety means that you can't use code like if (nonbooleanValue) or assert (nonbooleanValue). Instead,"
            "explicitly check for values, like this:"
          },
          {
            'heading': "Runes and grapheme clusters ",
            'attachment': "assets/dart_beginner/bit_15.png",
            'body': "In Dart, runes expose the Unicode code points of a string. You can use the characters package to view or manipulate"
            "user-perceived characters, also known as Unicode (extended) grapheme clusters."
            "Unicode defines a unique numeric value for each letter, digit, and symbol used in all of the world's writing systems."
            "Because a Dart string is a sequence of UTF-16 code units, expressing Unicode code points within a string requires"
            "special syntax. The usual way to express a Unicode code point is uXXXX, where XXXX is a 4-digit hexadecimal value. For"
            "example, the heart character (♥) is u2665. To specify more or less than 4 hex digits, place the value in curly brackets."
            "For example, the laughing emoji (😆) is u{1f606}."
            "If you need to read or write individual Unicode characters, use the characters getter defined on String by the"
            "characters package. The returned Characters object is the string as a sequence of grapheme clusters. Here's an"
            "example of using the characters API:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_16.png",
            'body': "The output, depending on your environment, looks something like this:"
          },
          {
            'heading': "Symbols ",
            'attachment': "assets/dart_beginner/bit_17.png",
            'body': "A Symbol object represents an operator or identifier declared in a Dart program. You might never need to use symbols,"
            "but they're invaluable for APIs that refer to identifiers by name, because minification changes identifier names but not"
            "identifier symbols."
            "\n\nTo get the symbol for an identifier, use a symbol literal, which is just # followed by the identifier:"
          },


        ]
      },
      8: {
        'topic': '9.     Records',
        'subTopic': [
          {
            'heading': "Record syntax ",
            'attachment': "assets/dart_beginner/rec_1.png",
            'body': "Records expressions are comma-delimited lists of named or positional fields, enclosed in parentheses:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/rec_2.png",
            'body': "Record type annotations are comma-delimited lists of types enclosed in parentheses. You can use record type"
            "annotations to define return types and parameter types. For example, the following (int, int) statements are record"
            "type annotations:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/rec_3.png",
            'body': "Fields in record expressions and type annotations mirror how parameters and arguments work in functions. Positional"
            "fields go directly inside the parentheses:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/rec_4.png",
            'body': "In a record type annotation, named fields go inside a curly brace-delimited section of type-and-name pairs, after all"
            "positional fields. In a record expression, the names go before each field value with a colon after:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/rec_5.png",
            'body': "The names of named fields in a record type are part of the record's type definition, or its shape. Two records with named"
            "fields with different names have different types:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/rec_6.png",
            'body': "In a record type annotation, you can also name the positional fields, but these names are purely for documentation and"
            "don't affect the record's type:"
          },


          {
            'heading': "Record fields ",
            'attachment': "assets/dart_beginner/rec_7.png",
            'body': "Record fields are accessible through built-in getters. Records are immutable, so fields do not have setters."
            "Named fields expose getters of the same name. Positional fields expose getters of the name <position>, skipping named fields:"
          },
          {
            'heading': "Record types",
            'attachment': "assets/dart_beginner/rec_8.png",
            'body': "There is no type declaration for individual record types. Records are structurally typed based on the types of their fields."
            "A record's shape (the set of its fields, the fields' types, and their names, if any) uniquely determines the type of a record"
            "Each field in a record has its own type. Field types can differ within the same record. The type system is aware of each"
            "field's type wherever it is accessed from the record:"
          },
          {
            'heading': "Record equality",
            'attachment': "assets/dart_beginner/rec_9.png",
            'body': "Two records are equal if they have the same shape (set of fields), and their corresponding fields have the same values."
            "Since named field order is not part of a record's shape, the order of named fields does not affect"
            "\n\nFor example:"

          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/rec_10.png",
            'body': ""
          },

          {
            'heading': "Multiple returns",
            'attachment': "assets/dart_beginner/rec_11.png",
            'body': "Records allow functions to return multiple values bundled together. To retrieve record values from a return, destructure"
            "the values into local variables using pattern matching."
          },

        ]
      },
      9: {
        'topic': '10.    Collections',
        'subTopic': [
          {
            'heading': "Collections ",
            'attachment': "",
            'body': "Dart has built-in support for list, set, and map collections. To learn more about configuring the types collections contain, check out Generics."
          },
          {
            'heading': "Lists ",
            'attachment': "assets/dart_beginner/col_1.png",
            'body': "Perhaps the most common collection in nearly every programming language is the array, or ordered group of objects. In"
            "Dart, arrays are List objects, so most people just call them lists."
            "Dart list literals are denoted by a comma separated list of expressions or values, enclosed in square brackets ([])."
            "Here's a simple Dart list:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_2.png",
            'body': "You can add a comma after the last item in a Dart collection literal. This trailing comma doesn't affect the collection, but"
            "it can help prevent copy-paste errors."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_3.png",
            'body': "Lists use zero-based indexing, where 0 is the index of the first value and list.length - 1 is the index of the last value."
            "You can get a list's length using the .length property and access a list's values using the subscript operator ([]):"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_4.png",
            'body': "To create a list that's a compile-time constant, add const before the list literal:"
          },
          {
            'heading': "Sets ",
            'attachment': "assets/dart_beginner/col_5.png",
            'body': "A set in Dart is an unordered collection of unique items. Dart support for sets is provided by set literals and the Set type."
            "Here is a simple Dart set, created using a set literal:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_6.png",
            'body': "To create an empty set, use {} preceded by a type argument, or assign {} to a variable of type Set:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_7.png",
            'body': "Add items to an existing set using the add() or addAll() methods:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_8.png",
            'body': "Use .length to get the number of items in the set:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_9.png",
            'body': "To create a set that's a compile-time constant, add const before the set literal:"
          },
          {
            'heading': "Maps ",
            'attachment': "assets/dart_beginner/col_10.png",
            'body': "In general, a map is an object that associates keys and values. Both keys and values can be any type of object. Each key"
            "occurs only once, but you can use the same value multiple times. Dart support for maps is provided by map literals and"
            "the Map type."
            "\n\nHere are a couple of simple Dart maps, created using map literals:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_11.png",
            'body': "You can create the same objects using a Map constructor:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_12.png",
            'body': "Add a new key-value pair to an existing map using the subscript assignment operator ([]=):"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_13.png",
            'body': "Retrieve a value from a map using the subscript operator ([]):"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_14.png",
            'body': "If you look for a key that isn't in a map, you get null in return:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_15.png",
            'body': "Use .length to get the number of key-value pairs in the map:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_16.png",
            'body': "To create a map that's a compile-time constant, add const before the map literal:"
          },
          {
            'heading': "Spread operators ",
            'attachment': "assets/dart_beginner/col_17.png",
            'body': "Dart supports the spread operator (...) and the null-aware spread operator (...?) in list, map, and set literals. Spread"
            "operators provide a concise way to insert multiple values into a collection."
            "\n\nFor example, you can use the spread operator (...) to insert all the values of a list into another list:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_18.png",
            'body': "If the expression to the right of the spread operator might be null, you can avoid exceptions by using a null-aware spread operator (...?):"
          },
          {
            'heading': "Control-flow operators ",
            'attachment': "assets/dart_beginner/col_19.png",
            'body': "Dart offers collection if and collection for for use in list, map, and set literals. You can use these operators to build"
            "collections using conditionals (if) and repetition (for)."
            "\n\nHere's an example of using collection if to create a list with three or four items in it:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_20.png",
            'body': "Dart also supports if-case inside collection literals:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_21.png",
            'body': "Here's an example of using collection for to manipulate the items of a list before adding them to another list:"
          },


        ]
      },
      10: {
        'topic': '11.     Generics',
        'subTopic': [
          {
            'heading': "Generics ",
            'attachment': "",
            'body': "If you look at the API documentation for the basic array type, List, you'll see that the type is actually List<E>. The <...>"
            "notation marks List as a generic (or parameterized) type—a type that has formal type parameters. By convention, most"
            "type variables have single-letter names, such as E, T, S, K, and V."
          },
          {
            'heading': "Why use generics? ",
            'attachment': "assets/dart_beginner/gen_1.png",
            'body': "Generics are often required for type safety, but they have more benefits than just allowing your code to run:"
            "\n\n•Properly specifying generic types results in better generated code."
            "\n\n•You can use generics to reduce code duplication."
            "\n\nIf you intend for a list to contain only strings, you can declare it as List<String> (read that as list of string). That way"
            "you, your fellow programmers, and your tools can detect that assigning a non-string to the list is probably a mistake."
            "\n\nHere's an example:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/gen_2.png",
            'body': "Another reason for using generics is to reduce code duplication. Generics let you share a single interface and"
            "implementation between many types, while still taking advantage of static analysis. For example, say you create an"
            "interface for caching an object:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/gen_3.png",
            'body': "You discover that you want a string-specific version of this interface, so you create another interface:"
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "Later, you decide you want a number-specific version of this interface... You get the idea."
            "Generic types can save you the trouble of creating all these interfaces. Instead, you can create a single interface that"
            "takes a type parameter:"
          },
          {
            'heading': "Using collection literals ",
            'attachment': "assets/dart_beginner/gen_4.png",
            'body': "List, set, and map literals can be parameterized. Parameterized literals are just like the literals you've already seen,"
            "except that you add <type> (for lists and sets) or <keyType, valueType> (for maps) before the opening bracket. Here"
            "is an example of using typed literals:"
          },
          {
            'heading': "Using parameterized types with constructors ",
            'attachment': "assets/dart_beginner/gen_5.png",
            'body': "To specify one or more types when using a constructor, put the types in angle brackets (<...>) just after the class name."
            "\n\nFor example:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/gen_6.png",
            'body': "The following code creates a map that has integer keys and values of type View:"
          },
          {
            'heading': "Generic collections and the types they contain ",
            'attachment': "assets/dart_beginner/gen_7.png",
            'body': "Dart generic types are reified, which means that they carry their type information around at runtime. For example, you"
            "can test the type of a collection:"
          },
          {
            'heading': "Restricting the parameterized type ",
            'attachment': "assets/dart_beginner/gen_8.png",
            'body': "When implementing a generic type, you might want to limit the types that can be provided as arguments, so that the"
            "argument must be a subtype of a particular type. You can do this using extends."
            "A common use case is ensuring that a type is non-nullable by making it a subtype of Object (instead of the default,"
            "Object?)."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/gen_9.png",
            'body': "You can use extends with other types besides Object. Here's an example of extending SomeBaseClass, so that"
            "members of SomeBaseClass can be called on objects of type T:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/gen_10.png",
            'body': "It's OK to use SomeBaseClass or any of its subtypes as the generic argument:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/gen_11.png",
            'body': "It's also OK to specify no generic argument:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/gen_12.png",
            'body': "Specifying any non-SomeBaseClass type results in an error:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/gen_13.png",
            'body': ""
          },


          {
            'heading': "Using generic methods ",
            'attachment': "assets/dart_beginner/gen_14.png",
            'body': "Methods and functions also allow type arguments:"
          },

        ]
      },
      11: {
        'topic': '12.     Typedefs',
        'subTopic': [
          {
            'heading': "Typedefs ",
            'attachment': "assets/dart_beginner/type_1.png",
            'body': "A type alias—often called a typedef because it's declared with the keyword typedef—is a concise way to refer to a type."
            "Here's an example of declaring and using a type alias named IntList:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/type_2.png",
            'body': "A type alias can have type parameters"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/type_3.png",
            'body': "We recommend using inline function types instead of typedefs for functions, in most situations. However, func"
            "typedefs can still be useful:"
          },



        ]
      },
      12: {
        'topic': '13.     The Dart type system',
        'subTopic': [
          {
            'heading': "The Dart type system ",
            'attachment': "assets/dart_beginner/sys_1.png",
            'body': "The Dart language is type safe: it uses a combination of static type checking and runtime checks to ensure that a"
            "variable's value always matches the variable's static type, sometimes referred to as sound typing. Although types are"
            "mandatory, type annotations are optional because of type inference."
            "One benefit of static type checking is the ability to find bugs at compile time using Dart's static analyzer."
            "You can fix most static analysis errors by adding type annotations to generic classes. The most common generic classes"
            "are the collection types List<T> and Map<K,V>."
            "\n\nFor example, in the following code the printInts() function prints an integer list, and main() creates a list and passes"
            "it to printInts()."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_2.png",
            'body': "The error highlights an unsound implicit cast from List<dynamic> to List<int>. The list variable has static type"
            "List<dynamic>. This is because the initializing declaration var list = [] doesn't provide the analyzer with enough"
            "information for it to infer a type argument more specific than dynamic. The printInts() function expects a parameter"
            "of type List<int>, causing a mismatch of types."
            "When adding a type annotation (<int>) on creation of the list (highlighted below) the analyzer complains that a string"
            "argument can't be assigned to an int parameter. Removing the quotes in list.add('2') results in code that passes"
            "static analysis and runs with no errors or warnings."
          },
          {
            'heading': "What is soundness? ",
            'attachment': "",
            'body': "Soundness is about ensuring your program can't get into certain invalid states. A sound type system means you can"
            "never get into a state where an expression evaluates to a value that doesn't match the expression's static type. For"
            "example, if an expression's static type is String, at runtime you are guaranteed to only get a string when you evaluate it."
            "Dart's type system, like the type systems in Java and C#, is sound. It enforces that soundness using a combination of"
            "static checking (compile-time errors) and runtime checks. For example, assigning a String to int is a compile-time"
            "error. Casting an object to a String using as String fails with a runtime error if the object isn't a String."
          },
          {
            'heading': "The benefits of soundness",
            'attachment': "",
            'body': "A sound type system has several benefits:"
            "\n\n•Revealing type-related bugs at compile time."
            "A sound type system forces code to be unambiguous about its types, so type-related bugs that might be tricky to"
            "find at runtime are revealed at compile time."
            "\n\n•More readable code."
            "Code is easier to read because you can rely on a value actually having the specified type. In sound Dart, types can't lie"
            "\n\n•More maintainable code."
            "With a sound type system, when you change one piece of code, the type system can warn you about the other pieces of code that just broke."
            "\n\n•Better ahead of time (AOT) compilation."
            "While AOT compilation is possible without types, the generated code is much less efficient."
          },
          {
            'heading': "Tips for passing static analysis",
            'attachment': "assets/dart_beginner/sys_3.png",
            'body': "Most of the rules for static types are easy to understand. Here are some of the less obvious rules:"
            "\n\n•Use sound return types when overriding methods."
            "\n\n•Use sound parameter types when overriding methods"
            "\n\n•Don't use a dynamic list as a typed list."
          },
          {
            'heading': "Use sound return types when overriding methods ",
            'attachment': "assets/dart_beginner/sys_4.png",
            'body': "The return type of a method in a subclass must be the same type or a subtype of the return type of the method in the superclass. Consider the getter method in the Animal class:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_5.png",
            'body': "The parent getter method returns an Animal. In the HoneyBadger subclass, you can replace the getter's return type with HoneyBadger (or any other subtype of Animal), but an unrelated type is not allowed."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_6.png",
            'body': ""
          },
          {
            'heading': "Use sound parameter types when overriding methods",
            'attachment': "assets/dart_beginner/sys_7.png",
            'body': "The parameter of an overridden method must have either the same type or a supertype of the corresponding parameter in the superclass. "
                "Don't tighten the parameter type by replacing the type with a subtype of the original parameter."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_8.png",
            'body': "Consider the chase(Animal) method for the Animal class:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_9.png",
            'body': "The chase() method takes an Animal. A HoneyBadger chases anything. It's OK to override the chase() method to take anything (Object)."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_10.png",
            'body': "The following code tightens the parameter on the chase() method from Animal to Mouse, a subclass of Animal."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_11.png",
            'body': "This code is not type safe because it would then be possible to define a cat and send it after an alligator:"
          },
          {
            'heading': "Don't use a dynamic list as a typed list ",
            'attachment': "",
            'body': "A dynamic list is good when you want to have a list with different kinds of things in it. "
                "However, you can't use a dynamic list as a typed list."
            "This rule also applies to instances of generic types."
            "\n\nThe following code creates a dynamic list of Dog, and assigns it to a list of type Cat, which generates an error during static analysis."
          },
          {
            'heading': "Runtime checks",
            'attachment': "assets/dart_beginner/sys_12.png",
            'body': "Runtime checks deal with type safety issues that can't be detected at compile time."

            "For example, the following code throws an exception at runtime because it's an error to cast a list of dogs to a list of cats:"
          },
          {
            'heading': "Type inference",
            'attachment': "assets/dart_beginner/sys_13.png",
            'body': "The analyzer can infer types for fields, methods, local variables, and most generic type arguments. When the analyzer"
            "doesn't have enough information to infer a specific type, it uses the dynamic type."
            "\nHere's an example of how type inference works with generics. In this example, a variable named arguments holds a map"
            "that pairs string keys with values of various types."
            "\n\nIf you explicitly type the variable, you might write this:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_14.png",
            'body': "Alternatively, you can use var or final and let Dart infer the type:"
          },
          {
            'heading': "Field and method inference ",
            'attachment': "",
            'body': "A field or method that has no specified type and that overrides a field or method from the superclass, inherits the type of"
            "the superclass method or field."
            "\nA field that does not have a declared or inherited type but that is declared with an initial value, gets an inferred type"
            "based on the initial value."
          },
          {
            'heading': "Static field inference ",
            'attachment': "",
            'body': "Static fields and variables get their types inferred from their initializer. "
                "Note that inference fails if it encounters a cycle (that is, inferring a type for "
                "the variable depends on knowing the type of that variable)."
          },
          {
            'heading': "Local variable inference",
            'attachment': "assets/dart_beginner/sys_15.png",
            'body': "Local variable types are inferred from their initializer, if any. Subsequent assignments are "
                "not taken into account. This may mean that too precise a type may be inferred. If so, you can add a type annotation."
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "assets/dart_beginner/sys_16.png"
          },
          {
            'heading': "Type argument inference",
            'attachment': "assets/dart_beginner/sys_17.png",
            'body': "Type arguments to constructor calls and generic method invocations are inferred based on a combination of downward"
            "information from the context of occurrence, and upward information from the arguments to the constructor or generic"
            "method. If inference is not doing what you want or expect, you can always explicitly specify the type arguments."
          },
          {
            'heading': "Substituting types ",
            'attachment': "assets/dart_beginner/sys_18.png",
            'body': "When you override a method, you are replacing something of one type (in the old method) with something "
                "that might have a new type (in the new method). Similarly, when you pass an argument to a function, you are replacing something"
            "that has one type (a parameter with a declared type) with something that has another type (the actual argument). "
                "When can you replace something that has one type with something that has a subtype or a supertype?"
            "When substituting types, it helps to think in terms of consumers and producers. A consumer absorbs a type and a producer generates a type."

          },
          {
            'heading': "Simple type assignment",
            'attachment': "assets/dart_beginner/sys_19.png",
            'body': "When assigning objects to objects, when can you replace a type with a different type? The answer depends on whether"
            "the object is a consumer or a producer."
            "\nConsider the following type hierarchy:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_20.png",
            'body': "Consider the following simple assignment where Cat c is a consumer and Cat() is a producer:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_21.png",
            'body': "In a consuming position, it's safe to replace something that consumes a specific type (Cat) with something that consumes anything"
                " (Animal), so replacing Cat c with Animal c is allowed, because Animal is a supertype of Cat."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_22.png",
            'body': "But replacing Cat c with MaineCoon c breaks type safety, because "
                "the superclass may provide a type of Cat with different behaviors, such as Lion:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_23.png",
            'body': "In a producing position, it's safe to replace something that produces a type (Cat) with "
                "a more specific type (MaineCoon). So, the following is allowed:"
          },
          {
            'heading': "Generic type assignment",
            'attachment': "assets/dart_beginner/sys_24.png",
            'body': "Are the rules the same for generic types? Yes. Consider the"
                " hierarchy of lists of animals—a List of Cat is a subtype of a List of Animal, and a supertype of a List of MaineCoon:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_25.png",
            'body': "In the following example, you can assign a MaineCoon list to myCats because List<MaineCoon> is a subtype of List<Cat>:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_26.png",
            'body': "What about going in the other direction? Can you assign an Animal list to a List<Cat>?"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_27.png",
            'body': "This assignment doesn't pass static analysis because it creates an implicit downcast, which is disallowed from non-dynamic types such as Animal."
            "\nTo make this type of code pass static analysis, you can use an explicit cast."
          },
          {
            'heading': "Methods ",
            'attachment': "assets/dart_beginner/sys_28.png",
            'body': "When overriding a method, the producer and consumer rules still apply. For example:"
          },


        ]
      },
      13: {
        'topic': '14.     Patterns',
        'subTopic': [
          {
            'heading': "What patterns do ",
            'attachment': "",
            'body': "In general, a pattern may match a value, destructure a value, or both, depending on the context and shape of the pattern."
            "\n\nFirst, pattern matching allows you to check whether a given value:"
            "\n\n•Has a certain shape."
            "\n\n•Is a certain constant."
            "\n\n•Is equal to something else"
            "\n\n•Has a certain type."
          },
          {
            'heading': "Matching ",
            'attachment': "assets/dart_beginner/sys_1.png",
            'body': "A pattern always tests against a value to determine if the value "
                "has the form you expect. In other words, you are checking if the value matches the pattern."
            "What constitutes a match depends on what kind of pattern you are using. "
                "\n\nFor example, a constant pattern matches if the value is equal to the pattern's constant:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_2.png",
            'body': "Many patterns make use of subpatterns, sometimes called outer and inner patterns, respectively. Patterns match recursively on their subpatterns. "
                "For example, the individual fields of any collection-type pattern could be variable patterns or constant patterns:"
          },
          {
            'heading': "Destructuring ",
            'attachment': "assets/dart_beginner/sys_3.png",
            'body': "When an object and pattern match, the pattern can then access the "
                "object's data and extract it in parts. In other words, the pattern destructures the object:"
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "You can nest any kind of pattern inside a destructuring pattern. For example, "
                "this case pattern matches and destructures a two-element list whose first element is 'a' or 'b':"
          },
          {
            'heading': "Places patterns can appear ",
            'attachment': "",
            'body': "You can use patterns in several places in the Dart language:"
            "\n\n•Local variable declarations and assignments"
            "\n\n•for and for-in loops"
            "\n\n•if-case and switch-case"
            "\n\n•Control flow in collection literals"
          },
          {
            'heading': "Variable declaration ",
            'attachment': "assets/dart_beginner/sys_4.png",
            'body': "You can use a pattern variable declaration anywhere Dart allows local variable declaration. "
                "The pattern matches against the value on the right of the declaration. Once matched, "
                "it destructures the value and binds it to new local variables:"
          },
          {
            'heading': "Variable assignment",
            'attachment': "assets/dart_beginner/sys_5.png",
            'body': "A variable assignment pattern falls on the left side of an assignment. First, it destructures the matched object. "
                "Then it assigns the values to existing variables, instead of binding new ones."
            "\n\nUse a variable assignment pattern to swap the values of two variables without declaring a third temporary one:"
          },
          {
            'heading': "Switch statements and expression",
            'attachment': "assets/dart_beginner/sys_6.png",
            'body': "Every case clause contains a pattern. This applies to switch statements and expressions, as well as if-case statements. "
                "You can use any kind of pattern in a case."
            "\n\nCase patterns are refutable. They allow control flow to either:"
            "\n\n•Match and destructure the object being switched on."
            "\n\n•Continue execution if the object doesn't match."
            "\n\nThe values that a pattern destructures in a case become local variables. Their scope is only within the body of that case."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_7.png",
            'body': "Logical-or patterns are useful for having multiple cases share a body in switch expressions or statements:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_8.png",
            'body': "Switch statements can have multiple cases share a body without using logical-or patterns, "
                "but they are still uniquely useful for allowing multiple cases to share a guard:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_9.png",
            'body': "Guard clauses evaluate an arbitrary conditon as part of a case, "
                "without exiting the switch if the condition is false (like using an if statement in the case body would cause)."
          },
          {
            'heading': "For and for-in loops ",
            'attachment': "assets/dart_beginner/sys_10.png",
            'body': "You can use patterns in for and for-in loops to iterate-over and destructure values in a collection."
            "\n\nThis example uses object destructuring in a for-in loop to destructure the MapEntry objects that a <Map>.entries call returns:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_11.png",
            'body': "The object pattern checks that hist.entries has the named type MapEntry, and then recurses into the named field subpatterns key and value. "
                "It calls the key getter and value getter on the MapEntry in each iteration, and binds the results to local variables key and count, respectively."
            "Binding the result of a getter call to a variable of the same name is a common use case, so object patterns can also infer the getter name "
                "from the variable subpattern. This allows you to simplify the variable pattern from something redundant like key: key to just :key:"
          },
          {
            'heading': "Use cases for patterns ",
            'attachment': "",
            'body': "The previous section describes how patterns fit into other Dart code constructs. You saw some interesting use cases as examples, "
                "like swapping the values of two variables, or destructuring key-value pairs in a map. This section describes even more use cases, answering:"
          },
          {
            'heading': "Destructuring multiple returns ",
            'attachment': "assets/dart_beginner/sys_12.png",
            'body': "Records allow aggregating and returning multiple values from a single function call. "
                "Patterns add the ability to destructure a record's fields directly into local variables, inline with the function call."
            "\n\nInstead of individually declaring new local variables for each record field, like this:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_13.png",
            'body': "You can destructure the fields of a record that a function returns into "
                "local variables using a variable declaration or assigment pattern, and a record pattern as its subpattern:"
          },
          {
            'heading': "Destructuring class instances",
            'attachment': "assets/dart_beginner/sys_14.png",
            'body': "Object patterns match against named object types, allowing you to destructure their "
                "data using the getters the object's class already exposes."
            "\n\nTo destructure an instance of a class, use the named type, followed by the properties to destructure enclosed in parentheses:"
          },
          {
            'heading': "Algebraic data types ",
            'attachment': "assets/dart_beginner/sys_15.png",
            'body': "Object destructuring and switch cases are conducive to writing code in an algebraic data type style. Use this method when:"
            "\n\n•You have a family of related types."
            "\n\n•You have an operation that needs specific behavior for each type."
            "\n\n•You want to group that behavior in one place instead of spreading it across all the different type definitions."
            "\n\nInstead of implementing the operation as an instance method for every type, keep the operation's variations in a "
                "single function that switches over the subtypes:"
          },
          {
            'heading': "Validating incoming JSON ",
            'attachment': "assets/dart_beginner/sys_16.png",
            'body': "Map and list patterns work well for destructuring key-value pairs in JSON data:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_17.png",
            'body': "If you know that the JSON data has the structure you expect, the previous example is realistic. "
                "But data typically comes from an external source, like over the network. You need to validate it first to confirm its structure."
            "\n\nWithout patterns, validation is verbose:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_18.png",
            'body': "A single case pattern can achieve the same validation. Single cases work best as "
                "if-case statements. Patterns provide a more declarative, and much less verbose method of validating JSON:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_19.png",
            'body': ""
          },


        ]
      },
      14: {
        'topic': '15.     Pattern types',
        'subTopic': [
          {
            'heading': "Logical-or",
            'attachment': "assets/dart_beginner/p_1.png",
            'body': "A logical-or pattern separates subpatterns by || and matches if any of the branches match. "
                "Branches are evaluated left-to-right. Once a branch matches, the rest are not evaluated."
          },
          {
            'heading': "Logical-and ",
            'attachment': "assets/dart_beginner/p_2.png",
            'body': "A pair of patterns separated by && matches only if both subpatterns match. "
                "If the left branch does not match, the right branch is not evaluated."
            "Subpatterns in a logical-and pattern can bind variables, but the variables in each subpattern must not overlap, "
                "because they will both be bound if the pattern matches:"
          },
          {
            'heading': "Relational",
            'attachment': "assets/dart_beginner/p_3.png",
            'body': "Relational patterns compare the matched value to a given constant using any of the equality or relational operators: ==, !=, <, >, <=, and >=."
            "\n\nThe pattern matches when calling the appropriate operator on the matched value with the constant as an argument returns true."
            "\n\nRelational patterns are useful for matching on numeric ranges, especially when combined with the logical-and pattern:"
          },
          {
            'heading': "Cast ",
            'attachment': "assets/dart_beginner/p_4.png",
            'body': "A cast pattern lets you insert a type cast in the middle of destructuring, before passing the value to another subpattern:"
          },
          {
            'heading': "Null-check ",
            'attachment': "assets/dart_beginner/p_5.png",
            'body': "Null-check patterns match first if the value is not null, and then match the inner pattern against that same value. "
                "They let you bind a variable whose type is the non-nullable base type of the nullable value being matched."
            "\n\nTo treat null values as match failures without throwing, use the null-check pattern."
          },
          {
            'heading': "Null-assert",
            'attachment': "assets/dart_beginner/p_6.png",
            'body': "Null-assert patterns match first if the object is not null, then on the value. "
                "They permit non-null values to flow through, but throw if the matched value is null."
            "\n\nTo ensure null values are not silently treated as match failures, use a null-assert pattern while matching:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/p_7.png",
            'body': "To eliminate null values from variable declaration patterns, use the null-assert pattern:"
          },
          {
            'heading': "Constant ",
            'attachment': "assets/dart_beginner/p_8.png",
            'body': "123, null, 'string', math.pi, SomeClass.constant, const Thing(1, 2), const (1 + 2)"

            "Constant patterns match when the value is equal to the constant:"
          },








        ]
      }
    },
    Categories.intermediate: {},
    Categories.advanced: {},
  },
  Languages.csharp: {
    Categories.beginner: {},
    Categories.intermediate: {},
    Categories.advanced: {},
  },
  Languages.php: {
    Categories.beginner: {},
    Categories.intermediate: {},
    Categories.advanced: {},
  },
//   Languages.pearl: {
//     Categories.beginner: {},
//     Categories.intermediate: {},
//     Categories.advanced: {},
//   },
};
