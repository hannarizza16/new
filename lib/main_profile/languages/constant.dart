import 'package:first_project/enums/enums.dart';

const codex = {
  Languages.c: {
    Categories.beginner: {},
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
            'body':
                "If you do not have Java installed on your computer, you can download it for free at oracle.com"
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
            'body': "\n2. Click on the Environment variables button under the Advanced tab."
          },
          {
            'attachment': 'assets/java_lessons_image/step3_get_started.jpg',
            'body': "\n3. Then, select the Path variable in System variables and click on the Edit button."
          },
          {
            'attachment': 'assets/java_lessons_image/step4_get_started.jpg',
            'body': "\n4. Click on the New button and add the path where Java is installed, followed by -bin By default, Java is installed in C:-Program Files-Java-jdk-11.0.1 \n(If nothing else was specified when you installed it).\nIn that case, You will have to add a new path with: C:-Program Files-Java-jdk-11.0.1-bin"
                " then, click OK, and save the settings."
          },
          {
            'attachment': 'assets/java_lessons_image/step5_get_started.jpg',
            'body': "\n5. At last, open Command Prompt (cmd.exe) and type java -version to see if Java is running on your machine."
          },
          {
            'attachment': 'assets/java_lessons_image/step6_get_started.jpg',
            'body': "If Java was successfully installed, you will see something like this (depending on version):"
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
            'body': "This will compile your code. If there are no errors in the code, the command prompt will take you to the next line. Now, type `java Main` to run the file:"
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
            'body': "In the previous chapter, we created a Java file called Main.java, and we used the following code to print `Hello World` to the screen: "
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
            'body': "The main() method is required and you will see it in every Java program:"
          },
          {
            'body': "Any code inside the main() method will be executed. Don't worry about the keywords before and after main. You will get to know them bit by bit while reading this tutorial."
            "\n\nFor now, just remember that every Java program has a class name which must match the filename, and that every program must contain the main() method."
          },
          {
            'heading': 'System.out.println()',
            'attachment': 'assets/java_lessons_image/syntax_2.jpg',
            'body': "Inside the main() method, we can use the println() method to print a line of text to the screen:"
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



      4: {'topic': '     4.1     Print Text',
        'subTopic' : [
          {
            'heading': 'Print Text',
            'attachment': 'assets/java_lessons_image/output_text_1.jpg',
            'body': "You learned from the previous chapter that you can use the println() method to output values or print text in Java: "
          },
          {
            'attachment': 'assets/java_lessons_image/output_text_2.jpg',
            'body': " You can add as many println() methods as you want. Note that it will add a new line for each method"
          },
          {
            'heading': 'Double Quotes',
            'attachment' : 'assets/java_lessons_image/output_text_3.jpg',
            'body' : "When you are working with text, it must be wrapped inside double quotations marks ""."

            "If you forget the double quotes, an error occurs:"

          },
          {
            'heading': 'The Print() Method',
            'attachment': 'assets/java_lessons_image/output_text_4.jpg',
            'body' : "There is also a print() method, which is similar to println()."

            "The only difference is that it does not insert a new line at the end of the output:"


          },
          {
            'body' : "Note that we add an extra space (after `Hello World`! in the example above), for better readability."
          }

        ]
      },


      5: {'topic': '     4.2     Print Numbers',
        'subTopic' : [{
          'heading': 'Print Numbers',
          'attachment': 'assets/java_lessons_image/output_number_1.jpg',
          'body' : "You can also use the println() method to print numbers."

              "However, unlike text, we don't put numbers inside double quotes:"
        },


          {
            'attachment': 'assets/java_lessons_image/output_number_2.jpg',
            'body' : "You can also perform mathematical calculations inside the println() method:"

          },

          {
            'attachment': 'assets/java_lessons_image/output_number_3.jpg',
          }
        ]

      },
      6: {'topic': '5.     Comments',
      'subTopic': [{
        'heading': "Java Comments",
        'body': "Comments can be used to explain Java code, and to make it more readable. It can also be used to prevent execution when testing alternative code.",


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
          'body': "This example uses a single-line comment at the end of a line of code:"


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

      7: {'topic': '6.     Variables',
        'subTopic': [{
        'heading': 'Java Variables',
          'body': "Variables are containers for storing data values."
          "\n\nIn Java, there are different types of variables, for example:"
          "\n\nString - stores text, such as `Hello`. String values are surrounded by double quotes"
          "\n\nint - stores integers (whole numbers), without decimals, such as 123 or -123"
          "\n\nfloat - stores floating point numbers, with decimals, such as 19.99 or -19.99"
          "\n\nchar - stores single characters, such as 'a' or 'B'. Char values are surrounded by single quotes"
          "\n\nboolean - stores values with two states: true or false"
        },{
        'heading': 'Declaring (Creating) Variables',
          'attachment': 'assets/java_lessons_image/variables_1.jpg',
          'body': "To create a variable, you must specify the type and assign it a value:"


        },{
        'attachment': 'assets/java_lessons_image/variables_2.jpg',
          'body': "Where type is one of Java's types (such as int or String), and variableName is the name of the variable (such as x or name). The equal sign is used to assign values to the variable."
          "\n\nTo create a variable that should store text, look at the following example:"
          "\n\nCreate a variable called name of type String and assign it the value `John`:"


        },{
        'attachment': 'assets/java_lessons_image/variables_3.jpg',
          'body': "To create a variable that should store a number, look at the following example:"
          "\n\nCreate a variable called myNum of type int and assign it the value 15",


        },{
          'attachment': 'assets/java_lessons_image/variables_4.jpg',
          'body': "You can also declare a variable without assigning the value, and assign the value later:"



        },{
          'attachment': 'assets/java_lessons_image/variables_5.jpg',
          'body': "Note that if you assign a new value to an existing variable, it will overwrite the previous value:"
          "\n\nChange the value of myNum from 15 to 20:"



        },{
          'heading': 'Final Variables',
          'attachment': 'assets/java_lessons_image/variables_6.jpg',
          'body': "If you don't want others (or yourself) to overwrite existing values, use the final keyword (this will declare the variable as final or `constant`, which means unchangeable and read-only):"

        },{
          'heading': 'Other Types',
          'attachment': 'assets/java_lessons_image/variables_7.jpg',
          'body': "A demonstration of how to declare variables of other types:"

        },


        ]
      },

      8: {'topic': '     6.1     Print Variables',
      'subTopic': [{
        'heading': 'Display Variables',
        'attachment': 'assets/java_lessons_image/variables_8.jpg',
        'body': "The println() method is often used to display variables."
            "\n\nTo combine both text and a variable, use the + character:"



      },{
        'attachment': 'assets/java_lessons_image/variables_9.jpg',
        'body': "You can also use the + character to add a variable to another variable:"
      },{
        'attachment': 'assets/java_lessons_image/variables_10.jpg',
        'body': "For numeric values, the + character works as a mathematical operator (notice that we use int (integer) variables here):"
      },

      ]
      },

      9: {
        'topic': '     6.2     Declare Multiple Variables',
        'subTopic': [{
        'heading': 'Declare Many Variables',
          'attachment': 'assets/java_lessons_image/variables_11.jpg',
          'body': "To declare more than one variable of the same type, you can use a comma-separated list:"
          "\n\nInstead of writing:"
        },
          {
          'attachment': 'assets/java_lessons_image/variables_12.jpg',
          'body': "You can simply write:"

        },
          {
            'heading': 'One Value to Multiple Variables',
            'attachment': 'assets/java_lessons_image/variables_13.jpg',
            'body': "You can also assign the same value to multiple variables in one line:"

          },

        ]
      },
      10: {'topic': '     6.3     Identifiers',
      'subTopic': [{
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

      11: {'topic': '7.    Java Data Types',
      'subTopic': [{
        'heading': 'Java Data types',
        'attachment': 'assets/java_lessons_image/dtypes_1.jpg',
        'body': "As explained in the previous chapter, a variable in Java must be a specified data type:"


      },
        {
          'body': "Data types are divided into two groups"

          "\n\nPrimitive data types - includes byte, short, int, long, float, double, boolean and char"
          "\n\nNon-primitive data types - such as String, Arrays and Classes (you will learn more about these in a later chapter)"

        },
        {
          'heading': 'Primitive Data Types',
          'attachment': 'assets/java_lessons_image/dtypes_2.jpg',
          'body': "A primitive data type specifies the size and type of variable values, and it has no additional methods."
          "\n\nThere are eight primitive data types in Java:"

        },


      ]

      },

      12: {'topic': '     7.1     Java Numbers',
      'subTopic': [{
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
          'body': "The short data type can store whole numbers from -32768 to 32767:"


        },
        {
          'heading': 'Int',
          'attachment': 'assets/java_lessons_image/number_3.jpg',
          'body': "The int data type can store whole numbers from -2147483648 to 2147483647. In general, and in our tutorial, the int data type is the preferred data type when we create variables with a numeric value."


        },
        {
          'heading': 'Long',
          'attachment': 'assets/java_lessons_image/number_4.jpg',
          'body': "The long data type can store whole numbers from -9223372036854775808 to 9223372036854775807. This is used when int is not large enough to store the value. Note that you should end the value with an `L`:"


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
          'body': "A floating point number can also be a scientific number with an `e` to indicate the power of 10:"

        },
      ]

      },

      13: {'topic': '     7.2     Boolean',
        'subTopic': [{
        'heading': 'Booleans Types',
          'attachment': 'assets/java_lessons_image/boo_1.jpg',
          'body': "Very often in programming, you will need a data type that can only have one of two values, like:"
          "\n\nYES / NO"
          "\n\nON / OFF"
          "\n\nTRUE / FALSE"


        },]

      },

      14: {'topic': '     7.3     Character',
      'subTopic': [{
        'heading': 'Characters',
        'attachment': 'assets/java_lessons_image/char_1.jpg',
        'body': "The char data type is used to store a single character. The character must be surrounded by single quotes, like 'A' or 'c':"


      },
        {
          'attachment': 'assets/java_lessons_image/char_2.jpg',
          'body': "Alternatively, if you are familiar with ASCII values, you can use those to display certain characters:"

        },

        {
          'heading': 'Strings',
          'attachment': 'assets/java_lessons_image/char_3.jpg',
          'body': "The String data type is used to store a sequence of characters (text). String values must be surrounded by double quotes:"

        },
        {
          'body': "The String type is so much used and integrated in Java, that some call it the special ninth type"
          "\n\nA String in Java is actually a non-primitive data type, because it refers to an object. The String object has methods that"
              "\n\nare used to perform certain operations on strings. Don't worry if you don't understand the term `object` just yet."
              "\n\nWe will learn more about strings and objects in a later chapter."

        },

      ]
      },

      15: {'topic': '     7.4     Java Non-Primitive Data Types',
      'subTopic': [{
        'heading': 'Non-Primitive Data Types',
        'body' : "Non-primitive data types are called reference types because they refer to objects."
        "\n\nThe main difference between primitive and non-primitive data types are:"
            "\n\n*Primitive types are predefined (already defined) in Java. Non-primitive types are created by the programmer and is not defined by Java (except for String)."
            "\n\n*Non-primitive types can be used to call methods to perform certain operations, while primitive types cannot."
            "\n\n*A primitive type has always a value, while non-primitive types can be null."
            "\n\n*A primitive type starts with a lowercase letter, while non-primitive types starts with an uppercase letter."
            "\n\n*Examples of non-primitive types are Strings, Arrays, Classes, Interface, etc. You will learn more about these in a later chapter."


      },

      ]

      },

      16: {'topic': '     7.5     Java Type Casting',
        'subTopic': [{
          'heading': 'Java Type Casting',
          'attachment': 'assets/java_lessons_image/cast_1.jpg',
          'body': "Type casting is when you assign a value of one primitive data type to another type."
              "\n\nIn Java, there are two types of casting:"

        },



        ]

      },
      17: {'topic': '     7.6     Java Operators',
        'subTopic': [{
        'heading': 'Java Operators',
          'attachment': 'assets/java_lessons_image/op_1.jpg',
          'body': "Operators are used to perform operations on variables and values.In the example below, we use the + operator to add together two values:"

},
          {
            'attachment': 'assets/java_lessons_image/op_2.jpg',
            'body': "Although the + operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:"
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
            'body': "Arithmetic operators are used to perform common mathematical operations."

          },
          {
            'heading': 'Java Assignment Operators',
            'attachment': 'assets/java_lessons_image/op_4.jpg',
            'body': "Assignment operators are used to assign values to variables.In the example below, we use the assignment operator (=) to assign the value 10 to a variable called x:"

          },

          {
            'attachment': 'assets/java_lessons_image/op_5.jpg',
            'body': " The addition assignment operator (+=) adds a value to a variable:"

          },

          {
            'heading': 'Java Comparison Operators',
            'attachment': 'assets/java_lessons_image/op_6.jpg',
            'body': " Comparison operators are used to compare two values (or variables). This is important in programming, because it helps us to find answers and make decisions.The return value of a comparison is either true or false. These values are known as Boolean values, and you will learn more about them in the Booleans and If..Else chapter.In the following example, we use the greater than operator (>) to find out if 5 is greater than 3:"

          },

          {
            'attachment': 'assets/java_lessons_image/op_7.jpg',
            'body': " A list of all assignment operators:"

          },
          {
            'attachment': 'assets/java_lessons_image/op_8.jpg'
          },
          {
            'heading': 'Java Logical Operators',
            'attachment': 'assets/java_lessons_image/op_9.jpg',
            'body': " You can also test for true or false values with logical operators."
                "Logical operators are used to determine the logic between variables or values:"


          },

        ]

      },
      18: {'topic': '8.    Java Strings',
        'subTopic': [{
        'heading': 'String',
          'attachment' : 'assets/java_lessons_image/string_1.jpg',
          'body': "Strings are used for storing text. A String variable contains a collection of characters surrounded by double quotes:"

},
          {
            'heading': 'String Length',
            'attachment': 'assets/java_lessons_image/string_2.jpg',
            'body': "A String in Java is actually an object, which contain methods that can perform certain operations on strings. For example, the length of a string can be found with the length() method:"
          },
          {
            'heading': 'More String Methods',
            'attachment': 'assets/java_lessons_image/string_3.jpg',
            'body': "There are many string methods available, for example toUpperCase() and toLowerCase():",
          },
          {
            'heading': 'Finding a Character in a String',
            'attachment': 'assets/java_lessons_image/string_4.jpg',
            'body': "The indexOf() method returns the index (the position) of the first occurrence of a specified text in a string (including whitespace):",
          },

        ]
      },

      19: {'topic': '          8.1   Java String Concatenation',
      'subTopic': [{
        'heading':'String Concatenation',
        'attachment': 'assets/java_lessons_image/scon_1.jpg',
        'body': "The + operator can be used between strings to combine them. This is called concatenation:"
        "\n\nNote that we have added an empty text (" ") to create a space between firstName and lastName on print."

      },
        {
          'attachment': 'assets/java_lessons_image/scon_2.jpg',
          'body': "\n\nYou can also use the concat() method to concatenate two strings:"

        },

      ]

      },

      20: {'topic': '          8.2   Java Numbers and Strings',
        'subTopic': [{
        'heading':'Adding Numbers and Strings',
          'attachment': 'assets/java_lessons_image/numstring_1.jpg',
          'body': "WARNING!Java uses the + operator for both addition and concatenation. Numbers are added. Strings are concatenated."
          "\n\nIf you add two numbers, the result will be a number:"


        },
          {
            'attachment': 'assets/java_lessons_image/numstring_2.jpg',
            'body': "If you add two strings, the result will be a string concatenation:"

          },
          {
            'attachment': 'assets/java_lessons_image/numstring_3.jpg',
            'body': "If you add a number and a string, the result will be a string concatenation:"

          },

        ]


      },
      21:{'topic':'             9.    Java Math',
        'subTopic': [{
        'heading': 'Java Math',
          'body': "The Java Math class has many methods that allows you to perform mathematical tasks on numbers."
        },

          {
            'heading': 'Math.max(x,y)',
            'attachment': 'assets/java_lessons_image/javamath_1.jpg',
            'body': "The Math.max(x,y) method can be used to find the highest value of x and y:"
          },

          {
            'heading': 'Math.min(x,y)',
            'attachment': 'assets/java_lessons_image/javamath_2.jpg',
            'body': "The Math.min(x,y) method can be used to find the lowest value of x and y:"
          },

          {
            'heading': 'Math.sqrt(x)',
            'attachment': 'assets/java_lessons_image/javamath_3.jpg',
            'body': "The Math.sqrt(x) method returns the square root of x:"
          },

          {
            'heading': 'Math.abs(x)',
            'attachment': 'assets/java_lessons_image/javamath_4.jpg',
            'body': "The Math.abs(x) method returns the absolute (positive) value of x:"
          },

          {
            'heading': 'Random Numbers',
            'attachment': 'assets/java_lessons_image/javamath_5.jpg',
            'body': "Math.random() returns a random number between 0.0 (inclusive), and 1.0 (exclusive):"
          },

          {
            'attachment': 'assets/java_lessons_image/javamath_6.jpg',
            'body': "To get more control over the random number, for example, if you only want a random number between 0 and 100, you can use the following formula:"
          },

        ]

      },
      22: {'topic': '         10  Java Booleans',
        'subTopic': [{
          'heading':'Java Booleans',
          'body': "Very often, in programming, you will need a data type that can only have one of two values, like:"
          "\n\n*YES / NO"
              "\n\n*ON / OFF"
              "\n\n*TRUE / FALSE"
          "\n\nFor this, Java has a boolean data type, which can store true or false values."

        },

          {
            'heading': 'Boolean Values',
            'attachment': 'assets/java_lessons_image/bool_1.jpg',
            'body': "A boolean type is declared with the boolean keyword and can only take the values true or false:",

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
            'body': "In the examples below, we use the equal to (==) operator to evaluate an expression:",

          },

          {
            'attachment': 'assets/java_lessons_image/bool_5.jpg'

          },

          {
            'heading': 'Real Life Example',
            'attachment': 'assets/java_lessons_image/bool_6.jpg',
            'body': "Let's think of a real life example where we need to find out if a person is old enough to vote."
                "\n\nIn the example below, we use the > = comparison operator to find out if the age (25) is greater than OR equal to the voting age limit, which is set to 18:"

          },

          {

            'attachment': 'assets/java_lessons_image/bool_7.jpg',
            'body': "Output Old enough to vote! if myAge is greater than or equal to 18. Otherwise output Not old enough to vote.:"

          },

        ]

      },
      23:{'topic': '            11.     Java If ... Else',
        'subTopic': [{
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
            'body': "Use the if statement to specify a block of Java code to be executed if a condition is true."
          },

          {

            'attachment': 'assets/java_lessons_image/javaelse_2.jpg',
            'body': "Note that if is in lowercase letters. Uppercase letters (If or IF) will generate an error.In the example below, we test two values to find out if 20 is greater than 18. If the condition is true, print some text:"
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
            'body': "Use the else statement to specify a block of code to be executed if the condition is false."
          },

          {
            'attachment': 'assets/java_lessons_image/javaelse_5.jpg',
            'body': "Example"
          },

          {
            'heading': 'Example explained,',
            'body': "In the example above, time (20) is greater than 18, so the condition is false. Because of this, we move on to the else condition and print to the screen `Good evening`. If the time was less than 18, the program would print Good day."
          },

          {
            'heading': 'The else if Statement',
            'attachment': 'assets/java_lessons_image/javaelse_6.jpg',
            'body': "Use the else if statement to specify a new condition if the first condition is false."
          },

          {
            'attachment': 'assets/java_lessons_image/javaelse_7.jpg',
            'body': "Example"
            "\n\nExample explainedIn the example above, time (22) is greater than 10, so the first condition is false. The next condition, in the else if statement, is also false, so we move on to the else condition since condition1 and condition2 is both false - and print to the screen `Good evening`.However, if the time was 14, our program would print Good day`"
          },

        ]


      },
      24: {'topic': '          11.1   Java Short Hand If...Else',
        'subTopic': [{
        'heading' : 'Short Hand If...Else',
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
      25: {'topic': '          12      Java Switch',
        'subTopic': [{
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
            'body': "The default keyword specifies some code to run if there is no case match:"

          },
        ]



      },
      26:{'topic': '                 13    Java While Loop',
        'subTopic': [{
        'heading': 'Loops',
          'body': "Loops can execute a block of code as long as a specified condition is reached."
          "Loops are handy because they save time, reduce errors, and they make code more readable."
        },
          {
            'heading': 'Java While Loop',
            'attachment': 'assets/java_lessons_image/while_1.jpg',
            'body': "The while loop loops through a block of code as long as a specified condition is true:"
          },

          {
            'attachment': 'assets/java_lessons_image/while_2.jpg',
            'body': "In the example below, the code in the loop will run, over and over again, as long as a variable (i) is less than 5:"
          },

          {
            'heading': 'The Do/While Loop',
            'attachment': 'assets/java_lessons_image/while_3.jpg',
            'body' : 'The do/while loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true.'

          },
          {
            'attachment': 'assets/java_lessons_image/while_4.jpg',
            'body' : "The example below uses a do/while loop. The loop will always be executed at least once, even if the condition is false, because the code block is executed before the condition is tested:"
          }

        ]


      },
      27:{'topic': '          17.   Java For Loop',
      'subTopic': [{
        'heading': 'Java For Loop',
        'attachment': 'assets/java_lessons_image/for_1.jpg',
        'body': "When you know exactly how many times you want to loop through a block of code, use the for loop instead of a while loop:"

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
          'body': "It is also possible to place a loop inside another loop. This is called a nested loop.The `inner loop` will be executed one time for each iteration of the outer loop:"
        }

      ]

      },
      28:{'topic': '      17.1 Java For Each Loop',
        'subTopic': [{
        'heading': 'For-Each Loop',
          'attachment': 'assets/java_lessons_image/each_1.jpg',
          'body': "There is also a for-each loop, which is used exclusively to loop through elements in an array:"

        },

          {
            'heading': 'Example',
                'attachment': 'assets/java_lessons_image/each_2.jpg',
            'body': "The following example outputs all elements in the cars array, using a for-each loop:"
          },

        ]

      },

      29:{'topic': '            18. Java Break and Continue',
      'subTopic': [{
        'heading': 'Java Break',
        'attachment': 'assets/java_lessons_image/break_1.jpg',
        'body': 'You have already seen the break statement used in an earlier chapter of this tutorial. It was used to "jump out" of a switch statement.The break statement can also be used to jump out of a loop.This example stops the loop when i is equal to 4:'
      },
      {
        'heading': 'Java Continue',
        'attachment': 'assets/java_lessons_image/break_2.jpg',
        'body': "The continue statement breaks one iteration (in the loop), if a specified condition occurs, and continues with the next iteration in the loop This example skips the value of 4:"
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

      30:{'topic': '     19.  Java Arrays',
      'subtopic': [{
        'heading': "Java Arrays",
          'attachment': 'assets/java_lessons_image/array_1.jpg',
        'body': "Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value."
        "To declare an array, define the variable type with square brackets:"
      },
        {
          'attachment': 'assets/java_lessons_image/array_2.jpg',
          'body': 'We have now declared a variable that holds an array of strings. To insert values to it, you can place the values in a comma-separated list, inside curly braces:'
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
          'body': "To change the value of a specific element, refer to the index number:"
        },
        {
          'attachment': 'assets/java_lessons_image/array_6  .jpg',
          'body': "example"
        },
        {
          'heading': "Array Length",
          'attachment': 'assets/java_lessons_image/array_7.jpg',
          'body': "To find out how many elements an array has, use the length property:"
        },
      ]
      },

      31:{'topic': '     19.1Loop Through an Array',
        'subTopic': [{
        'heading': 'Loop Through an Array',
          'attachment': 'assets/java_lessons_image/allop_1.jpg',
          'body': "You can loop through the array elements with the for loop, and use the length property to specify how many times the loop should run."
          "\n\nThe following example outputs all elements in the cars array:"

        },

          {
            'heading': 'Loop Through an Array with For-Each',
            'attachment': 'assets/java_lessons_image/allop_2.jpg',
            'body': "There is also a for-each loop, which is used exclusively to loop through elements in arrays:"


          },
          {
            'attachment': 'assets/java_lessons_image/allop_3.jpg',
            'body': "The following example outputs all elements in the cars array, using a for-each loop:"
          },
          {
            'body': "The example above can be read like this: for each String element (called i - as in index) in cars, print out the value of i."
            "\n\nIf you compare the for loop and for-each loop, you will see that the for-each method is easier to write, "
            "\n\nit does not require a counter (using the length property), and it is more readable."
          },


        ]

      },
      32:{'topic': '    19.2  Java Multi-Dimensional Arrays',
        'subTopic': [{
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
            'body': "We can also use a for loop inside another for loop to get the elements of a two-dimensional array (we still have to point to the two indexes):"
                "Example"
          },


        ]


      },
    },
    Categories.intermediate: {},
    Categories.advanced: {},
  },
  Languages.dart: {
    Categories.beginner: {},
    Categories.intermediate: {},
    Categories.advanced: {},
  },
  Languages.ruby: {
    Categories.beginner: {},
    Categories.intermediate: {},
    Categories.advanced: {},
  },
  Languages.arduino: {
    Categories.beginner: {},
    Categories.intermediate: {},
    Categories.advanced: {},
  },
  Languages.pearl: {
    Categories.beginner: {},
    Categories.intermediate: {},
    Categories.advanced: {},
  },
};

