import 'package:first_project/enums/enums.dart';

const codex = {
  Languages.arduino: {
    Categories.beginner: {},
    Categories.intermediate: {},
    Categories.advanced: {},
  },
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
  Languages.dart: {
    Categories.beginner: {},
    Categories.intermediate: {},
    Categories.advanced: {},
  },
  Languages.java: {
    Categories.beginner: {
      0: {
        'topic': 'Introduction to Java',
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
          },
          {


          },
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
          'heading': "Java Multi-line Comments",
          'attachment': 'assets/java_lessons_image/comments_3.jpg',
          'body': "Multi-line comments start with /* and ends with */."
              "\n\nAny text between /* and */ will be ignored by Java."
              "\n\nThis example uses a multi-line comment (a comment block) to explain the code:"
        },
      ]
      },

      7: {'topic': '6.     Variables', 'heading': '', 'body': ""},
      8: {'topic': '     6.1     Print Variables', 'heading': '', 'body': ""},
      9: {
        'topic': '     6.2     Declare Multiple Variables',
        'heading': '',
        'body': ""
      },
      10: {'topic': '     6.3     Identifiers', 'heading': '', 'body': ""},
      11: {'topic': '7.    Java Data Types', 'heading': '', 'body': ""},
      12: {'topic': '     7.1     Data Types', 'heading': '', 'body': ""},
      13: {'topic': '     7.2     Numbers', 'heading': '', 'body': ""},
      14: {'topic': '     7.3     Booleans', 'heading': '', 'body': ""},
      15: {'topic': '     7.4     Characters', 'heading': '', 'body': ""},
      16: {
        'topic': '     7.5     Non-Primitive Types',
        'heading': '',
        'body': ""
      },
    },
    Categories.intermediate: {},
    Categories.advanced: {},
  },
  Languages.ruby: {
    Categories.beginner: {},
    Categories.intermediate: {},
    Categories.advanced: {},
  },
};
