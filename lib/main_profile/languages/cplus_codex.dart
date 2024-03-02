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
            'body': "The cout object, together with the << operator, is used to output values/print text:",
            'attachment': 'assets/cPlus_beginner/4.png'
          },
          {
            'body': "You can add as many cout objects as you want. However, note that it does not insert a new line at the end of the output:",
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
          {
            'attachment': 'assets/cPlus_beginner/4.3.png'
          },
          {
            'body': "Tip: Two \\n characters after each other will create a blank line:",
            'attachment': 'assets/cPlus_beginner/4.4.png'
          },
          {
            'attachment': 'assets/cPlus_beginner/4.5.png'
          },
          {
            'body': "Another way to insert a new line, is with the endl manipulator:",
            'attachment': 'assets/cPlus_beginner/4.6.png'
          },
          {
            'attachment': 'assets/cPlus_beginner/4.5.png'
          },



        ]
      }

    },
    Categories.intermediate: {},
    Categories.advanced: {},
  },
};
