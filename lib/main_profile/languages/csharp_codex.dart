import 'dart:ffi';

import 'package:first_project/enums/enums.dart';

const cSharpCodex = {

  Languages.csharp: {
    Categories.beginner: {
      0: {
        'topic': '1.     Introduction To C#',
        'subTopic': [
          {
            'heading': 'What is C#?',
            'body': "C# is pronounced 'C-Sharp'.\n\nIt is an object-oriented programming language created by Microsoft that runs on the .NET Framework.C# has roots from the C family, and the language is close to other popular languages like C++ and Java.\n\nThe first version was released in year 2002. The latest version, C# 12, was released in November 2023.\n\nC# is used for:"
              "\n\n • Mobile applications"
                "\n\n • Desktop applications"
                "\n\n • Web applications"
                "\n\n • Web services"
                "\n\n • Web sites"
                "\n\n • Games"
                "\n\n • VR"
                "\n\n • Database applications"
                "\n\n • And much, much more!"
          },
          {
            'heading': 'Why Use C#?',
            'body': "• It is one of the most popular programming languages in the world"
                "\n\n• It is easy to learn and simple to use"
                "\n\n• It has huge community support"
                "\n\n• C# is an object-oriented language which gives a clear structure to programs and allows code to be reused, lowering development costs"
                "\n\n• As C# is close to C, C++ and Java, it makes it easy for programmers to switch to C# or vice versa"
          }
        ]
      },
      1: {
        'topic': '2.     Get Started',
        'subTopic': [
          {
            'heading': 'IDE',
            'body': "The easiest way to get started with C# is to use an IDE.\n\nAn IDE (Integrated Development Environment) is used to edit and compile code.\n\nApplications written in C# use the .NET Framework, so it makes sense to use Visual Studio, as the program, the framework, and the language, are all created by Microsoft."
          },
          {
            'heading': 'Install',
            'attachment': 'assets/C#/a1.png',
            'body': "Once the Visual Studio Installer is downloaded and installed, choose the .NET workload and click on the Modify/Install button:"
          },
          {
            'attachment': 'assets/C#/a2.png',
            'body': "After the installation is complete, click on the Launch button to get started with Visual Studio.\n\nOn the start window, choose Create a new project:"
          },
          {
            'attachment': 'assets/C#/a3.png',
            'body': "Then click on the 'Install more tools and features' link:"
          },
          {
            'attachment': 'assets/C#/a4.png',
            'body': "Choose 'Console App (.NET Core)' from the list and click on the Next button:"
          },
          {
            'attachment': 'assets/C#/a5.png',
            'body': "Enter a name for your project, and click on the Create button:"
          },
          {
            'attachment': 'assets/C#/a6.png',
            'body': "Visual Studio will automatically generate some code for your project:"
          },
          {
            'attachment': 'assets/C#/a7.png',
            'body': "The code should look something like this:"
          },
          {
            'attachment': 'assets/C#/a8.png',
            'body': "Don't worry if you don't understand the code above we will discuss it in detail in later chapters. For now, focus on how to run the code.\n\nRun the program by pressing the F5 button on your keyboard ''or click on 'Debug' -> 'Start Debugging' ''. This will compile and execute your code. The result will look something to this:"
          },
          {
            'body': "Congratulations! You have now written and executed your first C# program."
          },
          {
            'heading': 'Learning C# At W3Schools',
            'attachment': 'assets/C#/a9.png',
            'body': "When learning C# at W3Schools.com, you can use our 'Try it Yourself' tool, which shows both the code and the result. This will make it easier for you to understand every part as we move forward:"
          }
        ]
      },
      2: {
        'topic': '3.     Syntax',
        'subTopic': [
          {
            'heading': 'Syntax',
            'attachment': 'assets/C#/a10.png',
            'body': "In the previous chapter, we created a C# file called Program.cs, and we used the following code to print 'Hello World' to the screen:"
          },
          {
            'heading': '\n\nExample explained',
            'body': "LINE 1: using System means that we can use classes from the System namespace."
              "\n\nLINE 2: A blank line. C# ignores white space. However, multiple lines makes the code more readable."
              "\n\nLINE 3: namespace is used to organize your code, and it is a container for classes and other namespaces."
              "\n\nLINE 4: The curly braces {} marks the beginning and the end of a block of code."
              "\n\nLINE 5: class is a container for data and methods, which brings functionality to your program. Every line of code that runs in C# must be inside a class. In our example, we named the class Program."
            "\n\nLINE 7: Another thing that always appear in a C# program is the Main method. Any code inside its curly brackets {} will be executed. You don't have to understand the keywords before and after Main. You will get to know them bit by bit while reading this tutorial."
            "\n\nLINE 9: Console is a class of the System namespace, which has a WriteLine() method that is used to output/print text. In our example, it will output 'Hello World!'."
            "\n\n\nIf you omit the using System line, you would have to write System.Console.WriteLine() to print/output text."
            "\n\n\n\nNOTE: Every C# statement ends with a semicolon ;."
            "\n\nNOTE: C# is case-sensitive; 'MyClass' and 'myclass' have different meaning."
            "\n\nNOTE: Unlike Java, the name of the C# file does not have to match the class name, but they often do (for better organization). When saving the file, save it using a proper name and add '.cs' to the end of the filename. To run the example above on your computer, make sure that C# is properly installed: Go to the Get Started Chapter for how to install C#. The output should be:"
          },
        ]
      },
      3: {
        'topic': '4.     Output',
        'subTopic': [
          {
            'heading': 'Output',
            'attachment': 'assets/C#/a11.png',
            'body': "To output values or print text in C#, you can use the WriteLine() method:"
          },
          {
            'attachment': 'assets/C#/a12.png',
            'body': "You can add as many WriteLine() methods as you want. Note that it will add a new line for each method:"
          },
          {
            'attachment': 'assets/C#/a13.png',
            'body': "You can also output numbers, and perform mathematical calculations:"
          },
          {
            'heading': '\n\nThe Write Method',
            'attachment': 'assets/C#/a14.png',
            'body': "There is also a Write() method, which is similar to WriteLine().\n\nThe only difference is that it does not insert a new line at the end of the output:"
            "\n\nNote that we add an extra space when needed (after 'Hello World!' in the example above), for better readability."
          }
        ]
      },
      4: {
        'topic': '5.     Comments',
        'subTopic': [
          {
            'heading': 'Comments',
            'body': "Comments can be used to explain C# code, and to make it more readable. It can also be used to prevent execution when testing alternative code."
          },
          {
            'heading': 'Single-line Comments',
            'attachment': 'assets/C#/a15.png',
            'body': "Single-line comments start with two forward slashes (//)."
                "\n\nAny text between // and the end of the line is ignored by C# (will not be executed).\n\nThis example uses a single-line comment before a line of code:"
          },
          {
            'attachment': 'assets/C#/a16.png',
            'body': "This example uses a single-line comment at the end of a line of code:"
          },
          {
            'heading': '\n\nC# Multi-line Comments',
             'attachment': 'assets/C#/a17.png',
               'body': "Multiline comments start with /* and ends with */."
            "\n\nAny text between /* and */ will be ignored by C#."
            "\n\nThis example uses a multi-line comment (a comment block) to explain the code:"
          }
        ]
      },
      5: {
        'topic': '6.     Variables',
        'subTopic': [
          {
            'heading': 'Variables',
            'body': "Variables are containers for storing data values.\n\nIn C#, there are different types of variables (defined with different keywords), for example:"
            "\n\nint - stores integers (whole numbers), without decimals, such as 123 or -123"
            "\n\ndouble - stores floating point numbers, with decimals, such as 19.99 or -19.99"
            "\n\nchar - stores single characters, such as 'a' or 'B'. Char values are surrounded by single quotes"
            "\n\nstring - stores text, such as 'Hello World'. String values are surrounded by double quotes"
            "\n\nbool - stores values with two states: true or false"
          },
          {
            'heading': 'Declaring (Creating) Variables',
            'attachment': 'assets/C#/a18.png',
            'body': "To create a variable, you must specify the type and assign it a value:"
          },
          {
            'attachment': 'assets/C#/a19.png',
            'body': "Where type is a C# type (such as int or string), and variableName is the name of the variable (such as x or name). The equal sign is used to assign values to the variable."
            "\n\nTo create a variable that should store text, look at the following example:"
          },
          {
            'attachment': 'assets/C#/a20.png',
            'body': "To create a variable that should store a number, look at the following example:"
          },
          {
            'attachment': 'assets/C#/a21.png',
            'body': "You can also declare a variable without assigning the value, and assign the value later:"
          },
          {
            'attachment': 'assets/C#/s22.png',
            'body': "Note that if you assign a new value to an existing variable, it will overwrite the previous value:"
          },
          {
            'heading': '\n\nOther Types',
            'attachment': 'assets/C#/a23.png',
            'body': "A demonstration of how to declare variables of other types:"
          }
        ]
      },
      6: {
        'topic': '    6.1     Constants',
        'subTopic': [
          {
            'heading': 'Constants',
            'attachment': 'assets/C#/a24.png',
            'body': "If you don't want others (or yourself) to overwrite existing values, you can add the const keyword in front of the variable type."
            "\n\nThis will declare the variable as 'constant', which means unchangeable and read-only:"
          }
        ]
      },
      7: {
        'topic': '    6.2     Display Variables',
        'subTopic': [
          {
            'heading': 'Display Variables',
            'attachment': 'assets/C#/a25.png',
            'body': "The WriteLine() method is often used to display variable values to the console window.\n\nTo combine both text and a variable, use the + character:"
          },
          {
            'attachment': 'assets/C#/a26.png',
            'body': "You can also use the + character to add a variable to another variable:"
          },
          {
            'attachment': 'assets/C#/a27.png',
            'body': "For numeric values, the + character works as a mathematical operator (notice that we use int (integer) variables here):"
          },
          {
            'body': "From the example above, you can expect:"
            "\n\n • x stores the value 5"
            "\n\n • y stores the value 6"
            "\n\n • Then we use the WriteLine() method to display the value of x + y, which is 11"
          }
        ]
      },
      8: {
        'topic': '    6.3     Identifiers',
        'subTopic': [
          {
            'heading': 'Identifiers',
            'attachment': 'assets/C#/a28.png',
            'body': "All C# variables must be identified with unique names./n/nThese unique names are called identifiers./n/nIdentifiers can be short names (like x and y) or more descriptive names (age, sum, totalVolume).\n\nNote: It is recommended to use descriptive names in order to create understandable and maintainable code:"
          },
          {
            'body': "\nThe general rules for naming variables are:"
            "\n\n• Names can contain letters, digits and the underscore character (_)"
            "\n\n• Names must begin with a letter or underscore"
            "\n\n• Names should start with a lowercase letter, and cannot contain whitespace"
            "\n\n• Names are case-sensitive ('myVar' and 'myvar' are different variables)"
            "\n\n• Reserved words (like C# keywords, such as int or double) cannot be used as names"
          }
        ]
      },
      9: {
        'topic': '7.     Data Types',
        'subTopic': [
          {
            'heading': 'Data Types',
            'attachment': 'assets/C#/a29.png',
            'body': "As explained in the variables chapter, a variable in C# must be a specified data type:"
          },
          {
            'attachment': 'assets/C#/a30.png',
            'body': "A data type specifies the size and type of variable values."
            "\n\nIt is important to use the correct data type for the corresponding variable; to avoid errors, to save time and memory, but it will also make your code more maintainable and readable. The most common data types are:"
          },
          {
            'heading': '\n\nNumbers',
            'body': "Number types are divided into two groups:\n\nInteger types stores whole numbers, positive or negative (such as 123 or -456), without decimals. Valid types are int and long. Which type you should use, depends on the numeric value.\n\nFloating point types represents numbers with a fractional part, containing one or more decimals. Valid types are float and double."
          },
          {
            'heading': 'Integer Types\n\nint',
            'attachment': 'assets/C#/a31.png',
            'body': "The int data type can store whole numbers from -2147483648 to 2147483647. In general, and in our tutorial, the int data type is the preferred data type when we create variables with a numeric value."
          },
          {
            'heading': '\n\nLong',
            'attachment': 'assets/C#/a32.png',
            'body': "The long data type can store whole numbers from -9223372036854775808 to 9223372036854775807. This is used when int is not large enough to store the value. Note that you should end the value with an 'L':"
          },
          {
            'heading': '\n\nFloating Point Types',
            'attachment': 'assets/C#/a35.png',
            'body': "You should use a floating point type whenever you need a number with a decimal, such as 9.99 or 3.14515.\n\nThe float and double data types can store fractional numbers. Note that you should end the value with an 'F' for floats and 'D' for doubles:"
          },
          {
            'heading': '\n\nScientific Numbers',
            'attachment': 'assets/C#/a36.png',
            'body': "A floating point number can also be a scientific number with an 'e' to indicate the power of 10:"
          },
          {
            'heading': '\n\nBooleans',
            'attachment': 'assets/C#/a39.png',
            'body': "A boolean data type is declared with the bool keyword and can only take the values true or false:"
          },
          {
            'heading': '\n\nCharacters',
            'attachment': 'assets/C#/a37.png',
            'body': "The char data type is used to store a single character. The character must be surrounded by single quotes, like 'A' or 'c':"
          },
          {
            'heading': '\n\nStrings',
            'attachment': 'assets/C#/a40.png',
            'body': "The string data type is used to store a sequence of characters (text). String values must be surrounded by double quotes:"
          }
        ]
      },
      10: {
        'topic': '8.     Type Casting',
        'subTopic': [
          {
            'heading': 'Type Casting',
            'body': "Type casting is when you assign a value of one data type to another type.\n\nIn C#, there are two types of casting:"
            "\n\n\n\n• Implicit Casting (automatically) - converting a smaller type to a larger type size"
                "\n\nchar -> int -> long -> float -> double"
            "\n\n• Explicit Casting (manually) - converting a larger type to a smaller size type"
                "\n\ndouble -> float -> long -> int -> char"
          },
          {
            'heading': '\n\nImplicit Casting',
            'attachment': 'assets/C#/a41.png',
            'body': "Implicit casting is done automatically when passing a smaller size type to a larger size type:"
          },
          {
            'heading': '\n\nExplicit Casting',
            'attachment': 'assets/C#/a42.png',
            'body': "Explicit casting must be done manually by placing the type in parentheses in front of the value:"
          },
          {
            'heading': '\n\nType Conversion Methods',
            'attachment': 'assets/C#/a43.png',
            'body': "It is also possible to convert data types explicitly by using built-in methods, such as Convert.ToBoolean, Convert.ToDouble, Convert.ToString, Convert.ToInt32 (int) and Convert.ToInt64 (long):"
          }
        ]
      },
      11: {
        'topic': '9.     User Input',
        'subTopic': [
          {
            'heading': 'Get User Input',
            'attachment': 'assets/C#/a44.png',
            'body': "You have already learned that Console.WriteLine() is used to output (print) values. Now we will use Console.ReadLine() to get user input.\n\nIn the following example, the user can input his or hers username, which is stored in the variable userName. Then we print the value of userName:"

          },
          {
            'heading': '\n\nUser Input and Numbers',
            'attachment': 'assets/C#/a45.png',
            'body': "The Console.ReadLine() method returns a string. Therefore, you cannot get information from another data type, such as int. The following program will cause an error:"
          },
          {
            'attachment': 'assets/C#/a46.png',
            'body': "Like the error message says, you cannot implicitly convert type 'string' to 'int'.\n\nLuckily, for you, you just learned from the previous chapter (Type Casting), that you can convert any type explicitly, by using one of the Convert.To methods:"
          }
        ]
      },
      12: {
        'topic': '10.     Operators "Arithmetic"',
        'subTopic': [
          {
            'heading': 'Operators',
            'attachment': 'assets/C#/a47.png',
            'body': "Operators are used to perform operations on variables and values.\n\nIn the example below, we use the + operator to add together two values:"
          },
          {
            'attachment': 'assets/C#/a48.png',
            'body': "Although the + operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:"
          },
          {
            'heading': '\n\nArithmetic Operators',
            'attachment': 'assets/C#/a49.png',
            'body': "Arithmetic operators are used to perform common mathematical operations:"
          }
        ]
      },
      13: {
        'topic': '    10.1     Assignment Operators',
        'subTopic': [
          {
            'heading': 'Assignment Operators',
            'attachment': 'assets/C#/a50.png',
            'body': "Assignment operators are used to assign values to variables.\n\nIn the example below, we use the assignment operator (=) to assign the value 10 to a variable called x:"
          },
          {
            'attachment': 'assets/C#/a51.png',
            'body': "The addition assignment operator (+=) adds a value to a variable:"
          },
          {
            'attachment': 'assets/C#/s52.png',
            'body': "A list of all assignment operators:"
          }
        ]
      },
      14: {
        'topic': '    10.2     Comparison Operators',
        'subTopic': [
          {
            'heading': 'Comparison Operators',
            'attachment': 'assets/C#/a53.png',
            'body': "Comparison operators are used to compare two values (or variables). This is important in programming, because it helps us to find answers and make decisions.\n\nThe return value of a comparison is either True or False. These values are known as Boolean values, and you will learn more about them in the Booleans and If..Else chapter.\n\nIn the following example, we use the greater than operator (>) to find out if 5 is greater than 3:"
          },
          {
            'attachment': 'assets/C#/a54.png',
            'body': "A list of all comparison operators:"
          }
        ]
      },
      15: {
        'topic': '    10.3     Logical Operators',
        'subTopic': [
          {
            'heading': 'Logical Operators',
            'attachment': 'assets/C#/a55.png',
            'body': "As with comparison operators, you can also test for True or False values with logical operators.\n\nLogical operators are used to determine the logic between variables or values:"
          }
        ]
      },
      16: {
        'topic': '11.     Math',
        'subTopic': [
          {
            'heading': 'Math.Max(x,y)',
            'attachment': 'assets/C#/a56.png',
            'body': "The Math.Max(x,y) method can be used to find the highest value of x and y:"
          },
          {
            'heading': '\n\nMath.Min(x,y)',
            'attachment': 'assets/C#/a57.png',
            'body': "The Math.Min(x,y) method can be used to find the lowest value of of x and y:"
          },
          {
            'heading': '\n\nMath.Sqrt(x)',
            'attachment': 'assets/C#/a58.png',
            'body': "The Math.Sqrt(x) method returns the square root of x:"
          },
          {
            'heading': '\n\nMath.Abs(x)',
            'attachment': 'assets/C#/a59.png',
            'body': "The Math.Abs(x) method returns the absolute (positive) value of x:"
          },
          {
            'heading': '\n\nMath.Round()',
            'attachment': 'assets/C#/a60.png',
            'body': "Math.Round() rounds a number to the nearest whole number:"
          },
        ]
      },
      17: {
        'topic': '12.     Strings',
        'subTopic': [
          {
            'heading': 'Strings',
            'attachment': 'assets/C#/a61.png',
            'body': "Strings are used for storing text.\n\nA string variable contains a collection of characters surrounded by double quotes:"
          },
          {
            'attachment': 'assets/C#/a62.png',
            'body': "A string variable can contain many words, if you want:"
          },
          {
            'heading': '\n\nString Length',
            'attachment': 'assets/C#/a63.png',
            'body': "A string in C# is actually an object, which contain properties and methods that can perform certain operations on strings. For example, the length of a string can be found with the Length property:"
          },
          {
            'heading': '\n\nOther Methods',
            'attachment': 'assets/C#/a64.png',
            'body': "There are many string methods available, for example ToUpper() and ToLower(), which returns a copy of the string converted to uppercase or lowercase:"
          }
        ]
      },
      18: {
        'topic': '    12.1     String Concatenation',
        'subTopic': [
          {
            'heading': 'String Concatenation',
            'attachment': 'assets/C#/a65.png',
            'body': "The + operator can be used between strings to combine them. This is called concatenation:"
          },
          {
            'attachment': 'assets/C#/a66.png',
            'body': "You can also use the string.Concat() method to concatenate two strings:"
          },
          {
            'heading': '\n\nAdding Numbers and Strings',
            'attachment': 'assets/C#/a67.png',
            'body': "If you add two numbers, the result will be a number:"
          },
          {
            'attachment': 'assets/C#/a68.png',
            'body': "If you add two strings, the result will be a string concatenation:"
          }
        ]
      },
      19: {
        'topic': '    12.2     String Interpolation',
        'subTopic': [
          {
            'heading': 'String Interpolation',
            'attachment': 'assets/C#/a69.png',
            'body': "Another option of string concatenation, is string interpolation, which substitutes values of variables into placeholders in a string. Note that you do not have to worry about spaces, like with concatenation:"
          }
        ]
      },
      20: {
        'topic': '    12.3     Access Strings',
        'subTopic': [
          {
            'heading': 'Access Strings',
            'attachment': 'assets/C#/a70.png',
            'body': "You can access the characters in a string by referring to its index number inside square brackets [].\n\nYou can access the characters in a string by referring to its index number inside square brackets []."
          },
          {
            'attachment': 'assets/C#/a71.png',
            'body': "This example prints the second character (1) in myString:"
          },
          {
            'attachment': 'assets/C#/a72.png',
            'body': "You can also find the index position of a specific character in a string, by using the IndexOf() method:"
          },
          {
            'attachment': 'assets/C#/a73.png',
            'body': "Another useful method is Substring(), which extracts the characters from a string, starting from the specified character position/index, and returns a new string. This method is often used together with IndexOf() to get the specific character position:"
          }
        ]
      },
      21: {
        'topic': '    12.4     Special Characters',
        'subTopic': [
          {
            'heading': 'Strings - Special Characters',
            'attachment': 'assets/C#/a74.png',
            'body': "Because strings must be written within quotes, C# will misunderstand this string, and generate an error:"
          },
          {
            'attachment': 'assets/C#/a75.png',
            'body': "The solution to avoid this problem, is to use the backslash escape character\n\nThe backslash (\\) escape character turns special characters into string characters:"
          },
          {
            'attachment': 'assets/C#/a76.png',
            'body': "The sequence \\\"  inserts a double quote in a string:"
          },
          {
            'attachment': 'assets/C#/a77.png',
            'body': "The sequence \\'  inserts a single quote in a string:"
          },
          {
            'attachment': 'assets/C#/a78.png',
            'body': "The sequence \\\\  inserts a single backslash in a string:"
          },
          {
            'attachment': 'assets/C#/a79.png',
            'body': "Other useful escape characters in C# are:"
          }
        ]
      },
      22: {
        'topic': '13.     Booleans',
        'subTopic': [
          {
            'heading': 'Booleans',
            'body': "Very often, in programming, you will need a data type that can only have one of two values, like:"
            "\n\n :  YES / NO"
                "\n\n :  ON / OFF"
                "\n\n :  TRUE / FALSE"
            "\n\nFor this, C# has a bool data type, which can take the values true or false."
          },
          {
            'heading': 'Boolean Values',
            'attachment': 'assets/C#/a80.png',
            'body': "A boolean type is declared with the bool keyword and can only take the values true or false:"
          },
          {
            'heading': '\n\nBoolean Expression',
            'attachment': 'assets/C#/a81.png',
            'body': "A Boolean expression returns a boolean value: True or False, by comparing values/variables.\n\nThis is useful to build logic, and find answers.\n\nFor example, you can use a comparison operator, such as the greater than (>) operator to find out if an expression (or a variable) is true:"
          },
          {
            'attachment': 'assets/C#/a82.png',
            'body': "Or even easier:"
          },
          {
            'attachment': 'assets/C#/a83.png',
            'body': "In the examples below, we use the equal to (==) operator to evaluate an expression:"
          },
          {
            'heading': '\n\nReal Life Example',
            'attachment': 'assets/C#/a84.png',
            'body': "Let's think of a 'real life example' where we need to find out if a person is old enough to vote."
          "\n\nIn the example below, we use the >= comparison operator to find out if the age (25) is greater than OR equal to the voting age limit, which is set to 18:"
          },
          {
            'attachment': 'assets/C#/a85.png',
            'body': "Cool, right? An even better approach (since we are on a roll now), would be to wrap the code above in an if...else statement, so we can perform different actions depending on the result:"
          }
        ]
      },
      23: {
        'topic': '14.     If ... Else',
        'subTopic': [
          {
            'heading': 'Conditions and If Statements',
            'body': "C# supports the usual logical conditions from mathematics:"
            "\n\n  • Less than: a < b"
                "\n  • Less than or equal to: a <= b"
                "\n  • Greater than: a > b"
                "\n  • Greater than or equal to: a >= b"
                "\n  • Equal to a == b"
                "\n  • Not Equal to: a != b"
                "\n\n\nYou can use these conditions to perform different actions for different decisions."
                "\n\nC# has the following conditional statements:"
                "\n\n\n  • Use if to specify a block of code to be executed, if a specified condition is true"
                "\n\n   • Use else to specify a block of code to be executed, if the same condition is false"
                "\n\n   • Use else if to specify a new condition to test, if the first condition is false"
                "\n\n   • Use switch to specify many alternative blocks of code to be executed"
          },
          {
            'heading': 'The if Statement',
            'attachment': 'assets/C#/a86.png',
            'body': "Use the if statement to specify a block of C# code to be executed if a condition is True."
          },
          {
            'attachment': 'assets/C#/a87.png',
            'body': "In the example below, we test two values to find out if 20 is greater than 18. If the condition is True, print some text:"
          },
          {
            'attachment': 'assets/C#/a88.png',
            'body': "We can also test variables:"
          },
          {
            'body': "Example explained: \n\nIn the example above we use two variables, x and y, to test whether x is greater than y (using the > operator). As x is 20, and y is 18, and we know that 20 is greater than 18, we print to the screen that 'x is greater than y'."
          }
        ]
      },
      24: {
        'topic': "    14.1     The else Statement",
        'subTopic': [
          {
            'heading': "The else Statement",
            'attachment': 'assets/C#/a89.png',
            'body': 'Use the else statement to specify a block of code to be executed if the condition is False.'
          },
          {
            'body': 'Example explained.\n\nIn the example above, time (20) is greater than 18, so the condition is False. Because of this, we move on to the else condition and print to the screen "Good evening". If the time was less than 18, the program would print "Good day".'
          }
        ]
      },
      25: {
        'topic': '    14.2     The else if Statement',
        'subTopic': [
          {
            'heading': 'The else if Statement',
            'attachment': 'assets/C#/a90.png',
            'body': 'Use the else if statement to specify a new condition if the first condition is False.'
          },
          {
            'body': "Example Explained"
                "\n\nIn the example above, time 22 is greater than 10, so the first condition is False. The next condition, in the else if statement, is also False, so we move on to the else condition since condition1 and condition2 is both False - and print to the screen 'Good evening'."
                "\n\nHowever, if the time was 14, our program would print 'Good day.'"
          }
        ]
      },
      26: {
        'topic': '    14.3     Short Hand If...Else',
        'subTopic': [
          {
            'heading': 'Short Hand If...Else (Ternary Operator)',
            'attachment': 'assets/C#/a91.png',
            'body': 'There is also a short-hand if else, which is known as the ternary operator because it consists of three operands. It can be used to replace multiple lines of code with a single line. It is often used to replace simple if else statements:'
          }
        ]
      },
      27: {
        'topic': '15.     Switch',
        'subTopic': [
          {
            'heading': 'Switch Statements',
            'attachment': 'assets/C#/a92.png',
            'body': 'Use the switch statement to select one of many code blocks to be executed.'
          },
          {
            'attachment': 'assets/C#/a93.png',
            'body': 'This is how it works:'
            '\n\n : The switch expression is evaluated once'
                '\n\n : The value of the expression is compared with the values of each case'
            '\n\n : If there is a match, the associated block of code is executed'
            '\n\n : The break and default keywords will be described later in this chapter'
            '\n\n\nThe example below uses the weekday number to calculate the weekday name:'
          },
          {
            'heading': '\n\nThe break Keyword',
            'body': 'When C# reaches a break keyword, it breaks out of the switch block.'
                '\n\nThis will stop the execution of more code and case testing inside the block.'
                '\n\nWhen a match is found, and the job is done, its time for a break. There is no need for more testing.'
          },
          {
            'heading': 'The default Keyword',
            'attachment': 'assets/C#/a94.png',
            'body': 'The default keyword is optional and specifies some code to run if there is no case match:'
          }
        ]
      },
      28: {
        'topic': '15.     While Loop',
        'subTopic': [
          {
            'heading': 'Loops',
            'body': 'Loops can execute a block of code as long as a specified condition is reached.'
                '\n\nLoops are handy because they save time, reduce errors, and they make code more readable.'
          },
          {
            'heading': 'While Loop',
            'attachment': 'assets/C#/a95.png',
            'body': 'The while loop loops through a block of code as long as a specified condition is True:'

          },
          {
            'heading': '\n\nThe Do/While Loop',
            'attachment': 'assets/C#/a96.png',
            'body': 'The do/while loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true.'
          }
        ]
      },
      29: {
        'topic': '16.     For Loop',
        'subTopic': [
          {
            'heading': 'For Loop',
            'attachment': 'assets/C#/a97.png',
            'body': 'When you know exactly how many times you want to loop through a block of code, use the for loop instead of a while loop:'
          },
          {
            'attachment': 'assets/C#/a98.png',
            'body': 'Example explained'
            '\n\n Statement 1 sets a variable before the loop starts (int i = 0).'
                '\n\n Statement 2 defines the condition for the loop to run (i must be less than 5). If the condition is true, the loop will start over again, if it is false, the loop will end.'
                '\n\n Statement 3 increases a value (i++) each time the code block in the loop has been executed.4'
                '\n\nThe example below will print the numbers 0 to 4:'
          },
          {
            'heading': '\n\nNested Loops',
            'attachment': 'assets/C#/a99.png',
            'body': 'It is also possible to place a loop inside another loop. This is called a nested loop.'
                '\n\nThe "inner loop" will be executed one time for each iteration of the "outer loop":'
          }
        ]
      },
      30: {
        'topic': '    16.1     Foreach Loop',
        'subTopic': [
          {
            'heading': 'The Foreach Loop',
            'attachment': 'assets/C#/a100.png',
            'body': 'There is also a foreach loop, which is used exclusively to loop through elements in an array:'
          }
        ]
      },
      31: {
        'topic': '17.     Break and Continue',
        'subTopic': [
          {
            'heading': 'Break',
            'attachment': 'assets/C#/a101.png',
            'body': 'You have already seen the break statement used in an earlier chapter of this tutorial. It was used to "jump out" of a switch statement.'
                '\n\nThe break statement can also be used to jump out of a loop.'
                '\n\nThis example jumps out of the loop when i is equal to 4:'
          },
          {
            'heading': '\n\nContinue',
            'attachment': 'assets/C#/a102.png',
            'body': 'The continue statement breaks one iteration (in the loop), if a specified condition occurs, and continues with the next iteration in the loop.\n\nThis example skips the value of 4:'
          },
          {
            'heading': '\n\nBreak and Continue in While Loop',
            'attachment': 'assets/C#/a103.png',
            'body': 'You can also use break and continue in while loops:'
          }
        ]
      },
      32: {
        'topic': '18.     Arrays',
        'subTopic': [
          {
            'heading': 'Create an Array',
            'attachment': 'assets/C#/a104.png',
            'body': 'Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value.\n\nTo declare an array, define the variable type with square brackets:'
          },
          {
            'heading': '\n\nAccess the Elements of an Array',
            'attachment': 'assets/C#/a105.png',
            'body': 'You access an array element by referring to the index number.\n\nThis statement accesses the value of the first element in cars:'
          },
          {
            'heading': '\n\nChange an Array Element',
            'attachment': 'assets/C#/a106.png',
            'body': 'To change the value of a specific element, refer to the index number:'
          },
          {
            'heading': '\n\nArray Length',
            'attachment': 'assets/C#/a107.png',
            'body': 'To find out how many elements an array has, use the Length property:'
          },
          {
            'heading': '\n\nOther Ways to Create an Array',
            'attachment': 'assets/C#/a108.png',
            'body': 'If you are familiar with C#, you might have seen arrays created with the new keyword, and perhaps you have seen arrays with a specified size as well. In C#, there are different ways to create an array:'
          }
        ]
      },
      33: {
        'topic': '    18.1     Loop Through Arrays',
        'subTopic': [
          {
            'heading': 'Loop Through Arrays',
            'attachment': 'assets/C#/a109.png',
            'body': 'You can loop through the array elements with the for loop, and use the Length property to specify how many times the loop should run.\n\nThe following example outputs all elements in the cars array:'
          },
          {
            'heading': '\n\nThe foreach Loop',
            'attachment': 'assets/C#/a110.png',
            'body': 'There is also a foreach loop, which is used exclusively to loop through elements in an array:'
          },
          {
            'body': 'The example above can be read like this: for each string element (called i - as in index) in cars, print out the value of i.'
            '\n\nIf you compare the for loop and foreach loop, you will see that the foreach method is easier to write, it does not require a counter (using the Length property), and it is more readable.'
          }
        ]
      },
      34: {
        'topic': '    18.2     Sort Arrays',
        'subTopic': [
          {
            'heading': 'Sort an Arrays',
            'attachment': 'assets/C#/a111.png',
            'body': 'There are many array methods available, for example Sort(), which sorts an array alphabetically or in an ascending order:'
          },
          {
            'heading': '\n\nSystem.Linq Namespace',
            'attachment': 'assets/C#/a112.png',
            'body': 'Other useful array methods, such as Min, Max, and Sum, can be found in the System.Linq namespace:'
          }
        ]
      },
      35: {
        'topic': '    18.3     Multidimensional Arrays',
        'subTopic': [
          {
            'heading': 'Multidimensional Arrays',
            'body': 'In the previous chapter, you learned about arrays, which is also known as single dimension arrays. These are great, and something you will use a lot while programming in C#. However, if you want to store data as a tabular form, like a table with rows and columns, you need to get familiar with multidimensional arrays.'
                '\n\nA multidimensional array is basically an array of arrays.'
                '\n\nArrays can have any number of dimensions. The most common are two-dimensional arrays (2D).'
          },
          {
            'heading': 'Two-Dimensional Arrays',
            'attachment': 'assets/C#/a113.png',
            'body': 'To create a 2D array, add each array within its own set of curly braces, and insert a comma (,) inside the square brackets:'
          },
          {
            'attachment': 'assets/C#/a114.png',
            'body': 'numbers is now an array with two arrays as its elements. The first array element contains three elements: 1, 4 and 2, while the second array element contains 3, 6 and 8. To visualize it, think of the array as a table with rows and columns:'
          },
          {
            'heading': '\n\nAccess Elements of a 2D Array',
            'attachment': 'assets/C#/a115.png',
            'body': 'To access an element of a two-dimensional array, you must specify two indexes: one for the array, and one for the element inside that array. Or better yet, with the table visualization in mind; one for the row and one for the column (see example below).'
                '\n\nThis statement accesses the value of the element in the first row (0) and third column (2) of the numbers array:'
          },
          {
            'heading': '\n\nChange Elements of a 2D Array',
            'attachment': 'assets/C#/a116.png',
            'body': 'You can also change the value of an element.\n\nThe following example will change the value of the element in the first row (0) and first column (0):'
          },
          {
            'heading': '\n\nLoop Through a 2D Array',
            'attachment': 'assets/C#/a117.png',
            'body': 'You can easily loop through the elements of a two-dimensional array with a foreach loop:'
          },
          {
            'attachment': 'assets/C#/a118.png',
            'body': 'You can also use a for loop. For multidimensional arrays, you need one loop for each of the arrays dimensions.\n\nAlso note that we have to use GetLength() instead of Length to specify how many times the loop should run:'
          }
        ]
      }





    },
    Categories.intermediate: {
      0: {
        'topic': '1.     Methods',
        'subTopic': [
          {
            'heading': 'Methods',
            'body': 'A method is a block of code which only runs when it is called.\n\nYou can pass data, known as parameters, into a method.\n\nMethods are used to perform certain actions, and they are also known as functions.\n\nWhy use methods? To reuse code: define the code once, and use it many times.'
          },
          {
            'heading': '\n\nCreate a Method',
            'attachment': 'assets/C#/a119.png',
            'body': 'A method is defined with the name of the method, followed by parentheses (). C# provides some pre-defined methods, which you already are familiar with, such as Main(), but you can also create your own methods to perform certain actions:'
          },
          {
            'body': 'Example Explained'
                '\n\n• MyMethod() is the name of the method'
                '\n\n• Static means that the method belongs to the Program class and not an object of the Program class. You will learn more about objects and how to access methods through objects later in this tutorial.'
                '\n\n• Void means that this method does not have a return value. You will learn more about return values later in this chapter'
          },
          {
            'heading': '\n\nCall a Method',
            'attachment': 'assets/C#/a120.png',
            'body': 'To call (execute) a method, write the methods name followed by two parentheses () and a semicolon;'
                '\n\nIn the following example, MyMethod() is used to print a text (the action), when it is called:'
          },
          {
            'attachment': 'assets/C#/a121.png',
            'body': 'A method can be called multiple times:'
          }
        ]
      },
      1: {
        'topic': '2.     Method Parameters',
        'subTopic': [
          {
            'heading': 'Parameters and Arguments',
            'attachment': 'assets/C#/a122.png',
            'body': 'Information can be passed to methods as parameter. Parameters act as variables inside the method.'
                '\n\nThey are specified after the method name, inside the parentheses. You can add as many parameters as you want, just separate them with a comma.'
                '\n\nThe following example has a method that takes a string called fname as parameter. When the method is called, we pass along a first name, which is used inside the method to print the full name:'
          },
          {
            'heading': '\n\nMultiple Parameters',
            'attachment': 'assets/C#/a123.png',
            'body': 'You can have as many parameters as you like, just separate them with commas:'
          }
        ]
      },
      2: {
        'topic': '    2.1     Default Parameter Value',
        'subTopic': [
          {
            'heading': 'Default Parameter Value',
            'attachment': 'assets/C#/a124.png',
            'body': 'You can also use a default parameter value, by using the equals sign (=).'
                '\n\nIf we call the method without an argument, it uses the default value ("Norway"):'
          }
        ]
      },
      3: {
        'topic': '    2.2     Return Values',
        'subTopic': [
          {
            'heading': 'Return Values',
            'attachment': 'assets/C#/a125.png',
            'body': 'In the previous page, we used the void keyword in all examples, which indicates that the method should not return a value.'
                '\n\nIf you want the method to return a value, you can use a primitive data type (such as int or double) instead of void, and use the return keyword inside the method:'
          },
          {
            'attachment': 'assets/C#/a126.png',
            'body': 'this example returns the sum of a methods two parameters:'
          },
          {
            'attachment': 'assets/C#/a127.png',
            'body': 'You can also store the result in a variable (recommended, as it is easier to read and maintain):'
          }
        ]
      },
      4: {
        'topic': '    2.3     Named Arguments',
        'subTopic': [
          {
            'heading': 'Named Arguments',
            'attachment': 'assets/C#/a128.png',
            'body': 'It is also possible to send arguments with the key: value syntax.\n\nThat way, the order of the arguments does not matter:'
          }
        ]
      },
      5: {
        'topic': '3.     Method Overloading',
        'subTopic': [
          {
            'heading': 'Method Overloading',
            'attachment': 'assets/C#/a129.png',
            'body': 'With method overloading, multiple methods can have the same name with different parameters:'
          },
          {
            'attachment': 'assets/C#/a130.png',
            'body': 'Consider the following example, which have two methods that add numbers of different type:'
          },
          {
            'attachment': 'assets/C#/a131.png',
            'body': 'Instead of defining two methods that should do the same thing, it is better to overload one.\n\nIn the example below, we overload the PlusMethod method to work for both int and double:'
          }
        ]
      }





    },
    Categories.advanced: {
      0: {
        'topic': '1.     OOP',
        'subTopic': [
          {
            'heading': 'What is OOP?',
            'body': 'OOP stands for Object-Oriented Programming.'
                '\n\n• Procedural programming is about writing procedures or methods that perform operations on the data, while object-oriented programming is about creating objects that contain both data and methods.'
                '\n\n• Object-oriented programming has several advantages over procedural programming:'
                '\n\n• OOP is faster and easier to execute'
                '\n\n• OOP provides a clear structure for the programs'
                '\n\n• OOP helps to keep the C# code DRY "Dont Repeat Yourself", and makes the code easier to maintain, modify and debug'
                '\n\n• OOP makes it possible to create full reusable applications with less code and shorter development time'
                '\n\nTip: The "Dont Repeat Yourself" (DRY) principle is about reducing the repetition of code. You should extract out the codes that are common for the application, and place them at a single place and reuse them instead of repeating it.'
          },
          {
            'heading': 'What are Classes and Objects?',
            'attachment': 'assets/C#/a133.png',
            'body': 'Classes and objects are the two main aspects of object-oriented programming.\n\nLook at the following illustration to see the difference between class and objects:'
          },
          {
            'body': 'So, a class is a template for objects, and an object is an instance of a class.'
                '\n\nWhen the individual objects are created, they inherit all the variables and methods from the class.'
                '\n\nYou will learn much more about classes and objects in the next chapter.'
          }
        ]
      },
      1: {
        'topic': '2.     Classes and Objects',
        'subTopic': [
          {
            'heading': 'Classes and Objects',
            'body': '\n\nYou learned from the previous chapter that C# is an object-oriented programming language.'
                '\n\nEverything in C# is associated with classes and objects, along with its attributes and methods. For example: in real life, a car is an object. The car has attributes, such as weight and color, and methods, such as drive and brake.'
                '\n\nA Class is like an object constructor, or a "blueprint" for creating objects.'
          },
          {
            'heading': 'Create a Class',
            'attachment': 'assets/C#/a134.png',
            'body': 'To create a class, use the class keyword:'
          },
          {
            'heading': '\n\nCreate an Object',
            'attachment': 'assets/C#/a135.png',
            'body': 'An object is created from a class. We have already created the class named Car, so now we can use this to create objects.'
                '\n\nTo create an object of Car, specify the class name, followed by the object name, and use the keyword new:'
          }
        ]
      },
      2: {
        'topic': '    2.1     Multiple Classes and Objects',
        'subTopic': [
          {
            'heading': 'Multiple Objects',
            'attachment': 'assets/C#/a136.png',
            'body': 'You can create multiple objects of one class:'
          },
          {
            'heading': '\n\nUsing Multiple Classes',
            'attachment': 'assets/C#/a137.png',
            'body': 'You can also create an object of a class and access it in another class. This is often used for better organization of classes (one class has all the fields and methods, while the other class holds the Main() method (code to be executed)).'
                '\n\n • prog2.cs'
                '\n\n • prog.cs'
          }
        ]
      },
      3: {
        'topic': '3.     Class Members',
        'subTopic': [
          {
            'heading': 'Class Members',
            'attachment': 'assets/C#/a138.png',
            'body': 'Fields and methods inside classes are often referred to as "Class Members":'
          },
          {
            'heading': '\n\nFields',
            'attachment': 'assets/C#/a139.png',
            'body': 'In the previous chapter, you learned that variables inside a class are called fields, and that you can access them by creating an object of the class, and by using the dot syntax (.).'
                '\n\nThe following example will create an object of the Car class, with the name myObj. Then we print the value of the fields color and maxSpeed:'
          },
          {
            'attachment': 'assets/C#/a140.png',
            'body': 'You can also leave the fields blank, and modify them when creating the object:'
          },
          {
            'attachment': 'assets/C#/a141.png',
            'body': 'This is especially useful when creating multiple objects of one class:'
          },
          {
            'heading': '\n\nObject Methods',
            'attachment': 'assets/C#/a142.png',
            'body': 'You learned from the C# Methods chapter that methods are used to perform certain actions.'
                '\n\nMethods normally belong to a class, and they define how an object of a class behaves.'
                '\n\nJust like with fields, you can access methods with the dot syntax. However, note that the method must be public. And remember that we use the name of the method followed by two parentheses () and a semicolon ; to call (execute) the method:'
          },
          {
            'heading': '\n\nUse Multiple Classes',
            'attachment': 'assets/C#/a143.png',
            'body': 'Remember from the last chapter, that we can use multiple classes for better organization (one for fields and methods, and another one for execution). This is recommended:'
          },
        ]
      },
      4: {
        'topic': '4.     Constructors',
        'subTopic': [
          {
            'heading': 'Constructors',
            'attachment': 'assets/C#/a144.png',
            'body': 'A constructor is a special method that is used to initialize objects. The advantage of a constructor, is that it is called when an object of a class is created. It can be used to set initial values for fields:'
          },
          {
            'heading': '\n\nConstructor Parameters',
            'attachment': 'assets/C#/a145.png',
            'body': 'Constructors can also take parameters, which is used to initialize fields.'
                '\n\nThe following example adds a string modelName parameter to the constructor. Inside the constructor we set model to modelName (model=modelName). When we call the constructor, we pass a parameter to the constructor ("Mustang"), which will set the value of model to "Mustang":'
          },
          {
            'attachment': 'assets/C#/a146.png',
            'body': 'You can have as many parameters as you want:'
          },
          {
            'heading': '\n\nConstructors Save Time',
            'attachment': 'assets/C#/a147.png',
            'body': 'When you consider the example from the previous chapter, you will notice that constructors are very useful, as they help reducing the amount of code:'
          }
        ]
      },
      5: {
        'topic': '5.     Access Modifiers',
        'subTopic': [
          {
            'heading': 'Access Modifiers',
            'attachment': 'assets/C#/a148.png',
            'body': 'By now, you are quite familiar with the public keyword that appears in many of our examples:'
          },
          {
            'heading': '\n\nPrivate Modifier',
            'attachment': 'assets/C#/a149.png',
            'body': 'If you declare a field with a private access modifier, it can only be accessed within the same class:'
          },
          {
            'attachment': 'assets/C#/a150.png',
            'body': 'If you try to access it outside the class, an error will occur:'
          },
          {
            'heading': '\n\nPublic Modifier',
            'attachment': 'assets/C#/a151.png',
            'body': 'If you declare a field with a public access modifier, it is accessible for all classes:'
          },
          {
            'attachment': 'assets/C#/a152.png',
            'body': 'Note: By default, all members of a class are private if you dont specify an access modifier:'
          }
        ]
      },
      6: {
        'topic': '6.     Properties (Get and Set)',
        'subTopic': [
          {
            'heading': 'Properties and Encapsulation',
            'body': 'Before we start to explain properties, you should have a basic understanding of "Encapsulation".'
                '\n\nThe meaning of Encapsulation, is to make sure that "sensitive" data is hidden from users. To achieve this, you must:'
                '\n\n •  declare fields/variables as private'
                '\n\n •  provide public get and set methods, through properties, to access and update the value of a private field'
          },
          {
            'heading': '\n\nProperties',
            'attachment': 'assets/C#/a153.png',
            'body': 'You learned from the previous chapter that private variables can only be accessed within the same class (an outside class has no access to it). However, sometimes we need to access them - and it can be done with properties.'
                '\n\nA property is like a combination of a variable and a method, and it has two methods: a get and a set method:'
          },
          {
            'attachment': 'assets/C#/a154.png',
            'body': 'Example explained'
                '\n\nThe Name property is associated with the name field. It is a good practice to use the same name for both the property and the private field, but with an uppercase first letter.'
                '\n\nThe get method returns the value of the variable name.'
                '\n\nThe set method assigns a value to the name variable. The value keyword represents the value we assign to the property.'
                '\n\nNow we can use the Name property to access and update the private field of the Person class:'
          },
          {
            'heading': '\n\nAutomatic Properties (Short Hand)',
            'attachment': 'assets/C#/a155.png',
            'body': 'C# also provides a way to use short-hand / automatic properties, where you do not have to define the field for the property, and you only have to write get; and set; inside the property.'
                '\n\nThe following example will produce the same result as the example above. The only difference is that there is less code:'
          },
          {
            'heading': '\n\nWhy Encapsulation?',
            'body': '\n\n • Better control of class members (reduce the possibility of yourself (or others) to mess up the code)'
                '\n\n • Fields can be made read-only (if you only use the get method), or write-only (if you only use the set method)'
                '\n\n • Flexible: the programmer can change one part of the code without affecting other parts'
                '\n\n • Increased security of data'
          }
        ]
      },
      7: {
        'topic': '7.     Inheritance',
        'subTopic': [
          {
            'heading': 'Inheritance (Derived and Base Class)',
            'attachment': 'assets/C#/a156.png',
            'body': 'In C#, it is possible to inherit fields and methods from one class to another. We group the "inheritance concept" into two categories:'
                '\n\n • Derived Class (child) - the class that inherits from another class'
                '\n\n • Base Class (parent) - the class being inherited from'
                '\n\nTo inherit from a class, use the : symbol.'
                '\n\nIn the example below, the Car class (child) inherits the fields and methods from the Vehicle class (parent):'
          },
          {
            'heading': '\n\nThe sealed Keyword',
            'attachment': 'assets/C#/a157.png',
            'body': 'If you dont want other classes to inherit from a class, use the sealed keyword:'
          }
        ]
      },
      8: {
        'topic': '8.     Enum',
        'subTopic': [
          {
            'heading': 'Enums',
            'attachment': 'assets/C#/a158.png',
            'body': 'An enum is a special "class" that represents a group of constants (unchangeable/read-only variables).'
                '\n\nTo create an enum, use the enum keyword (instead of class or interface), and separate the enum items with a comma:'
          },
          {
            'heading': '\n\nEnum inside a Class',
            'attachment': 'assets/C#/a159.png',
            'body': 'You can also have an enum inside a class:'
          },
          {
            'heading': '\n\nEnum Values',
            'attachment': 'assets/C#/a160.png',
            'body': 'By default, the first item of an enum has the value 0. The second has the value 1, and so on.'
                '\n\nTo get the integer value from an item, you must explicitly convert the item to an int:'
          },
          {
            'attachment': 'assets/C#/a161.png',
            'body': '\n\nYou can also assign your own enum values, and the next items will update their numbers accordingly:'
          },
          {
            'heading': '\n\nEnum in a Switch Statement',
            'attachment': 'assets/C#/a162.png',
            'body': 'Enums are often used in switch statements to check for corresponding values:'
          }
        ]
      }








    },
  },

};