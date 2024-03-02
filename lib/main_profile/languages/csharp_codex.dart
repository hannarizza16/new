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
        'topic': '    10.2     Access Strings',
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
        'topic': '    10.3     Special Characters',
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
        'topic': '11.     Booleans',
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
        'topic': '12.     If ... Else',
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
      }
















    },
    Categories.intermediate: {},
    Categories.advanced: {},
  },

};