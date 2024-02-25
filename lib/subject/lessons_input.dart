import 'package:first_project/enums/enums.dart';

const courselesson = {
  SubjectSection.applicationdev: {
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
},
    SubjectSection.gamedev: {

  },

  SubjectSection.webdev: {

  },

  SubjectSection.machinedev: {

  },


};