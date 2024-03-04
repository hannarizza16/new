

class QuizQuestion {
  final String questionText;
  final List<AnswerChoice> answerChoices;

  QuizQuestion({required this.questionText, required this.answerChoices});
}

class AnswerChoice {
  final String text;
  final bool isCorrect;
  final String? imageUrl;
  bool isSelected;

  AnswerChoice({
    required this.text,
    required this.isCorrect,
    this.imageUrl,
    this.isSelected = false,
  });

  AnswerChoice copyWith({
    String? text,
    bool? isCorrect,
    String? imageUrl,
    bool? isSelected,
  }) =>
      AnswerChoice(
        text: text ?? this.text,
        isCorrect: isCorrect ?? this.isCorrect,
        imageUrl: imageUrl ?? this.imageUrl,
        isSelected: isSelected ?? this.isSelected,
      );
}

// Firebase
Map<String, List<QuizQuestion>> questionsMap = {
  'C_Beginner': [
    QuizQuestion(
      questionText: 'What is a variable in C?',
      answerChoices: [
        AnswerChoice(text: 'A. A data type', isCorrect: false),
        AnswerChoice(
            text: 'B. A storage location identified by a memory address',
            isCorrect: true),
        AnswerChoice(text: 'C. A constant value', isCorrect: false),
        AnswerChoice(text: 'D. A reserved keyword', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the "printf" function do in C?',
      answerChoices: [
        AnswerChoice(text: 'A. Reads input from the user', isCorrect: false),
        AnswerChoice(
            text: 'B. Prints formatted output to the console', isCorrect: true),
        AnswerChoice(
            text: 'C. Allocates memory for variables', isCorrect: false),
        AnswerChoice(text: 'D. Defines a new variable', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which symbol is used for comments in C?',
      answerChoices: [
        AnswerChoice(text: 'A. //', isCorrect: true),
        AnswerChoice(text: 'B. --', isCorrect: false),
        AnswerChoice(text: 'C. **', isCorrect: false),
        AnswerChoice(text: 'D. %%', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint x = 5;'
          '\nprintf("The value of x is: %d", x);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. The value of x is: 5', isCorrect: true),
        AnswerChoice(text: 'B. The value of x is: %d', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which symbol is used for single-line comments in C?',
      answerChoices: [
        AnswerChoice(text: 'A. //', isCorrect: true),
        AnswerChoice(text: 'B. /* */', isCorrect: false),
        AnswerChoice(text: 'C. --', isCorrect: false),
        AnswerChoice(text: 'D. ##', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the scanf() function in C?',
      answerChoices: [
        AnswerChoice(text: 'A. Print formatted text', isCorrect: false),
        AnswerChoice(text: 'B. Read input from the user', isCorrect: true),
        AnswerChoice(
            text: 'C. Perform arithmetic calculations', isCorrect: false),
        AnswerChoice(text: 'D. Exit the program', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText:
          'Which header file is used for input and output operations in C?',
      answerChoices: [
        AnswerChoice(text: 'A. stdio.h', isCorrect: true),
        AnswerChoice(text: 'B. conio.h', isCorrect: false),
        AnswerChoice(text: 'C. math.h', isCorrect: false),
        AnswerChoice(text: 'D. string.h', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the correct syntax for declaring a variable in C?',
      answerChoices: [
        AnswerChoice(text: 'A. int x;', isCorrect: true),
        AnswerChoice(text: 'B. variable x;', isCorrect: false),
        AnswerChoice(text: 'C. x = int;', isCorrect: false),
        AnswerChoice(text: 'D. declare x as int;', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What will be the output of the following C code?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint x = 10;'
          '\nint y = 3;'
          '\nfloat result = x / y;'
          '\nprintf("The result is: %f", result);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. The result is: 3.333333', isCorrect: false),
        AnswerChoice(text: 'B. The result is: 3.0', isCorrect: true),
        AnswerChoice(text: 'C. The result is: 3', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint x = 5;'
          '\nprintf("The value of x is: %d", x);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. The value of x is: 5', isCorrect: true),
        AnswerChoice(text: 'B. The value of x is: %d', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText:
          'Which operator is used to access the value stored at a memory address in C?',
      answerChoices: [
        AnswerChoice(text: 'A. *', isCorrect: true),
        AnswerChoice(text: 'B. &', isCorrect: false),
        AnswerChoice(text: 'C. ->', isCorrect: false),
        AnswerChoice(text: 'D. .', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of a loop in C?',
      answerChoices: [
        AnswerChoice(text: 'A. To declare variables', isCorrect: false),
        AnswerChoice(
            text: 'B. To repeat a block of code multiple times',
            isCorrect: true),
        AnswerChoice(text: 'C. To define data types', isCorrect: false),
        AnswerChoice(text: 'D. To store constants', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the printf() function do in C?',
      answerChoices: [
        AnswerChoice(text: 'A. Reads input from the user', isCorrect: false),
        AnswerChoice(
            text: 'B. Prints formatted output to the console', isCorrect: true),
        AnswerChoice(
            text: 'C. Performs arithmetic calculations', isCorrect: false),
        AnswerChoice(text: 'D. Exits the program', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText:
          'What is the purpose of the return statement in C functions?',
      answerChoices: [
        AnswerChoice(text: 'A. To declare a function', isCorrect: false),
        AnswerChoice(
            text: 'B. To return a value from a function', isCorrect: true),
        AnswerChoice(text: 'C. To print output', isCorrect: false),
        AnswerChoice(
            text: 'D. To perform conditional statements', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the syntax for declaring a variable in C?',
      answerChoices: [
        AnswerChoice(text: 'A. variable x;', isCorrect: false),
        AnswerChoice(text: 'B. int x;', isCorrect: true),
        AnswerChoice(text: 'C. x = int;', isCorrect: false),
        AnswerChoice(text: 'D. declare x as int;', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the scanf() function in C?',
      answerChoices: [
        AnswerChoice(text: 'A. Print formatted text', isCorrect: false),
        AnswerChoice(text: 'B. Read input from the user', isCorrect: true),
        AnswerChoice(
            text: 'C. Perform arithmetic calculations', isCorrect: false),
        AnswerChoice(text: 'D. Exit the program', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the if statement in C?',
      answerChoices: [
        AnswerChoice(text: 'A. To declare a variable', isCorrect: false),
        AnswerChoice(
            text: 'B. To perform conditional execution', isCorrect: true),
        AnswerChoice(text: 'C. To define data types', isCorrect: false),
        AnswerChoice(text: 'D. To store constants', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is an array in C?',
      answerChoices: [
        AnswerChoice(text: 'A. A data type', isCorrect: false),
        AnswerChoice(
            text: 'B. A collection of elements of the same data type',
            isCorrect: true),
        AnswerChoice(text: 'C. A constant value', isCorrect: false),
        AnswerChoice(text: 'D. A reserved keyword', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the while loop in C?',
      answerChoices: [
        AnswerChoice(
            text: 'A. To repeat a block of code until a condition is true',
            isCorrect: true),
        AnswerChoice(text: 'B. To declare variables', isCorrect: false),
        AnswerChoice(
            text: 'C. To perform arithmetic calculations', isCorrect: false),
        AnswerChoice(text: 'D. To store constants', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the break statement in C?',
      answerChoices: [
        AnswerChoice(
            text: 'A. To exit a loop or switch statement', isCorrect: true),
        AnswerChoice(
            text: 'B. To continue to the next iteration of a loop',
            isCorrect: false),
        AnswerChoice(text: 'C. To throw an exception', isCorrect: false),
        AnswerChoice(
            text: 'D. To return a value from a function', isCorrect: false),
      ],
    ),
    // Add more beginner questions for C
  ],

  'C_Intermediate': [
    QuizQuestion(
      questionText: 'What does the following C code snippet do?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint x = 10;'
          '\nint ptr = &x;'
          '\nptr = 20;'
          '\nprintf("The value of x is: %d", x);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Prints 10', isCorrect: false),
        AnswerChoice(text: 'B. Prints 20', isCorrect: true),
        AnswerChoice(
            text: 'C. Prints the memory address of x', isCorrect: false),
        AnswerChoice(
            text: 'D. Results in a compilation error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint arr[5] = {1, 2, 3, 4, 5};'
          '\nprintf("%d", *(arr + 2));'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 1', isCorrect: false),
        AnswerChoice(text: 'B. 2', isCorrect: false),
        AnswerChoice(text: 'C. 3', isCorrect: true),
        AnswerChoice(text: 'D. 4', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the malloc() function in C?',
      answerChoices: [
        AnswerChoice(text: 'A. To multiply two numbers', isCorrect: false),
        AnswerChoice(
            text: 'B. To allocate memory dynamically', isCorrect: true),
        AnswerChoice(
            text: 'C. To find the length of a string', isCorrect: false),
        AnswerChoice(text: 'D. To sort an array', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the typedef keyword do in C?',
      answerChoices: [
        AnswerChoice(text: 'A. Defines a new data type', isCorrect: true),
        AnswerChoice(text: 'B. Declares a function', isCorrect: false),
        AnswerChoice(text: 'C. Initializes a variable', isCorrect: false),
        AnswerChoice(text: 'D. Allocates memory', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint a = 5, b = 10;'
          '\nprintf("Sum is %d", a + b);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Sum is 15', isCorrect: true),
        AnswerChoice(text: 'B. Sum is 510', isCorrect: false),
        AnswerChoice(text: 'C. Error: undefined behavior', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the sizeof operator in C?',
      answerChoices: [
        AnswerChoice(
            text: 'A. To calculate the size of a variable', isCorrect: true),
        AnswerChoice(
            text: 'B. To perform arithmetic calculations', isCorrect: false),
        AnswerChoice(
            text: 'C. To determine the number of elements in an array',
            isCorrect: false),
        AnswerChoice(text: 'D. To print formatted output', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint arr[] = {1, 2, 3, 4, 5};'
          '\nprintf("%d", arr[3]);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 1', isCorrect: false),
        AnswerChoice(text: 'B. 2', isCorrect: false),
        AnswerChoice(text: 'C. 3', isCorrect: false),
        AnswerChoice(text: 'D. 4', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the fgets() function do in C?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Reads a character from standard input', isCorrect: false),
        AnswerChoice(
            text: 'B. Reads a line from a file stream', isCorrect: true),
        AnswerChoice(text: 'C. Reads a formatted string', isCorrect: false),
        AnswerChoice(text: 'D. Reads input from the user', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the static keyword in C?',
      answerChoices: [
        AnswerChoice(
            text: 'A. To specify constant variables', isCorrect: false),
        AnswerChoice(text: 'B. To define global variables', isCorrect: false),
        AnswerChoice(
            text:
                'C. To declare a function or variable that persists throughout program execution',
            isCorrect: true),
        AnswerChoice(
            text: 'D. To declare a function that does not return a value',
            isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nchar str[] = "Hello, World!";'
          '\nprintf("%s", str);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Hello, World!', isCorrect: true),
        AnswerChoice(text: 'B. H', isCorrect: false),
        AnswerChoice(text: 'C. Error: undefined behavior', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the break statement in C?',
      answerChoices: [
        AnswerChoice(
            text: 'A. To exit a loop or switch statement', isCorrect: true),
        AnswerChoice(
            text: 'B. To continue to the next iteration of a loop',
            isCorrect: false),
        AnswerChoice(text: 'C. To throw an exception', isCorrect: false),
        AnswerChoice(
            text: 'D. To return a value from a function', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint i;'
          '\nfor (i = 0; i < 5; i++) {'
          '\nprintf("%d ", i);'
          '\nif (i == 3)'
          '\nbreak;'
          '\n}'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 0 1 2 3', isCorrect: true),
        AnswerChoice(text: 'B. 0 1 2 3 4', isCorrect: false),
        AnswerChoice(text: 'C. Error: undefined behavior', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the continue statement do in C?',
      answerChoices: [
        AnswerChoice(text: 'A. Exits the loop', isCorrect: false),
        AnswerChoice(
            text:
                'B. Skips the remaining code in the loop and continues with the next iteration',
            isCorrect: true),
        AnswerChoice(text: 'C. Restarts the loop', isCorrect: false),
        AnswerChoice(text: 'D. Throws an exception', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint i;'
          '\nfor (i = 0; i < 5; i++) {'
          '\nif (i == 3)'
          '\ncontinue;'
          '\nprintf("%d ", i);'
          '\n}'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 0 1 2 3 4', isCorrect: false),
        AnswerChoice(text: 'B. 0 1 2 4', isCorrect: true),
        AnswerChoice(text: 'C. Error: undefined behavior', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the typedef keyword in C?',
      answerChoices: [
        AnswerChoice(text: 'A. To define a new data type', isCorrect: true),
        AnswerChoice(text: 'B. To declare a function', isCorrect: false),
        AnswerChoice(text: 'C. To initialize a variable', isCorrect: false),
        AnswerChoice(text: 'D. To allocate memory', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint i = 10;'
          '\nprintf("%d", ++i);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 10', isCorrect: false),
        AnswerChoice(text: 'B. 11', isCorrect: true),
        AnswerChoice(text: 'C. 12', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint x = 5;'
          '\nint *ptr = &x;'
          '\nprintf("%d", *ptr);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: true),
        AnswerChoice(text: 'B. 10', isCorrect: false),
        AnswerChoice(text: 'C. Error: segmentation fault', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nchar str[] = "Hello";'
          '\nprintf("%s", str + 2);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. He', isCorrect: true),
        AnswerChoice(text: 'B. Hello', isCorrect: false),
        AnswerChoice(text: 'C. Error: undefined behavior', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the union keyword in C?',
      answerChoices: [
        AnswerChoice(text: 'A. To define a new structure', isCorrect: false),
        AnswerChoice(
            text: 'B. To specify constant variables', isCorrect: false),
        AnswerChoice(
            text:
                'C. To create a data structure that can hold different data types in the same memory location',
            isCorrect: true),
        AnswerChoice(text: 'D. To define an enumeration', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint i = 1;'
          '\nprintf("%d ", i++);'
          '\nprintf("%d", i);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 1 1', isCorrect: true),
        AnswerChoice(text: 'B. 1 2', isCorrect: false),
        AnswerChoice(text: 'C. 2 2', isCorrect: false),
        AnswerChoice(text: 'D. 2 1', isCorrect: false),
      ],
    ),
    // Intermediate questions for C
  ],

  'C_Advanced': [
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint arr[5] = {1, 2, 3, 4, 5};'
          '\nint *ptr = arr;'
          '\nprintf("%d", *(ptr + 3));'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 1', isCorrect: false),
        AnswerChoice(text: 'B. 2', isCorrect: false),
        AnswerChoice(text: 'C. 4', isCorrect: true),
        AnswerChoice(text: 'D. 5', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the volatile keyword in C?',
      answerChoices: [
        AnswerChoice(
            text:
                'A. To declare a variable that can be modified by multiple threads',
            isCorrect: false),
        AnswerChoice(
            text:
                'B. To declare a variable that is immune to optimization by the compiler',
            isCorrect: true),
        AnswerChoice(
            text: 'C. To specify a constant variable', isCorrect: false),
        AnswerChoice(text: 'D. To define a macro', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the assert() function do in C?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Prints formatted output to the console',
            isCorrect: false),
        AnswerChoice(
            text:
                'B. Checks if an expression is true and terminates the program if it is false',
            isCorrect: true),
        AnswerChoice(text: 'C. Exits the program', isCorrect: false),
        AnswerChoice(text: 'D. Throws an exception', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\n#define square(x) x * x'
          '\n\nint main() {'
          '\nint result = square(3 + 1);'
          '\nprintf("%d", result);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 16', isCorrect: false),
        AnswerChoice(text: 'B. 12', isCorrect: false),
        AnswerChoice(text: 'C. 10', isCorrect: true),
        AnswerChoice(text: 'D. 4', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the memcpy() function in C?',
      answerChoices: [
        AnswerChoice(text: 'A. To compare two strings', isCorrect: false),
        AnswerChoice(
            text: 'B. To copy a block of memory from one location to another',
            isCorrect: true),
        AnswerChoice(text: 'C. To concatenate two strings', isCorrect: false),
        AnswerChoice(
            text: 'D. To find the length of a string', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint x = 5;'
          '\nint *ptr = &x;'
          '\nint **pptr = &ptr;'
          '\nprintf("%d", **pptr);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: true),
        AnswerChoice(text: 'B. 10', isCorrect: false),
        AnswerChoice(text: 'C. Error: segmentation fault', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the __FILE__ macro in C?',
      answerChoices: [
        AnswerChoice(text: 'A. To define a new file', isCorrect: false),
        AnswerChoice(
            text: 'B. To print the name of the current source file',
            isCorrect: true),
        AnswerChoice(text: 'C. To include a header file', isCorrect: false),
        AnswerChoice(
            text: 'D. To specify a constant variable', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the __LINE__ macro in C?',
      answerChoices: [
        AnswerChoice(
            text: 'A. To specify a constant variable', isCorrect: false),
        AnswerChoice(
            text: 'B. To print the line number of the current source file',
            isCorrect: true),
        AnswerChoice(text: 'C. To define a new line of code', isCorrect: false),
        AnswerChoice(text: 'D. To declare a function', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint x = 5;'
          '\nint y = 10;'
          '\nprintf("%d", x+++y);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 15', isCorrect: true),
        AnswerChoice(text: 'B. 16', isCorrect: false),
        AnswerChoice(text: 'C. 14', isCorrect: false),
        AnswerChoice(text: 'D. 20', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the offsetof() macro in C?',
      answerChoices: [
        AnswerChoice(
            text: 'A. To calculate the offset of a member within a structure',
            isCorrect: true),
        AnswerChoice(
            text: 'B. To perform bitwise operations', isCorrect: false),
        AnswerChoice(text: 'C. To check for overflow', isCorrect: false),
        AnswerChoice(
            text: 'D. To find the length of a string', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint x = 10;'
          '\nint y = 20;'
          '\nint *ptr = &x;'
          '\nptr++;'
          '\nprintf("%d", *ptr);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 10', isCorrect: false),
        AnswerChoice(text: 'B. 20', isCorrect: true),
        AnswerChoice(text: 'C. Error: segmentation fault', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the inline keyword in C?',
      answerChoices: [
        AnswerChoice(
            text:
                'A. Specifies that a function will be defined in a separate file',
            isCorrect: false),
        AnswerChoice(
            text: 'B. Forces the compiler to inline a function call',
            isCorrect: true),
        AnswerChoice(
            text: 'C. Declares a function as thread-safe', isCorrect: false),
        AnswerChoice(
            text: 'D. Indicates that a function is recursive',
            isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\n#define MAX(x, y) (x > y ? x : y)'
          '\n\nint main() {'
          '\nint result = MAX(5, 10);'
          '\nprintf("%d", result);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: false),
        AnswerChoice(text: 'B. 10', isCorrect: true),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nchar *ptr = "Hello";'
          '\nprintf("%c", *(ptr + 3));'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. H', isCorrect: false),
        AnswerChoice(text: 'B. e', isCorrect: false),
        AnswerChoice(text: 'C. l', isCorrect: true),
        AnswerChoice(text: 'D. o', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the volatile keyword in C?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Specifies that a variable will be initialized to zero',
            isCorrect: false),
        AnswerChoice(
            text: 'B. Indicates that a variable may be modified externally',
            isCorrect: true),
        AnswerChoice(
            text: 'C. Prevents a variable from being modified',
            isCorrect: false),
        AnswerChoice(
            text: 'D. Specifies that a variable will never change',
            isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint arr[] = {1, 2, 3};'
          '\nprintf("%d", *(arr + 1));'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 1', isCorrect: false),
        AnswerChoice(text: 'B. 2', isCorrect: true),
        AnswerChoice(text: 'C. 3', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\n#define SQUARE(x) (x * x)'
          '\n\nint main() {'
          '\nint result = SQUARE(3 + 2);'
          '\nprintf("%d", result);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 25', isCorrect: false),
        AnswerChoice(text: 'B. 11', isCorrect: false),
        AnswerChoice(text: 'C. 14', isCorrect: false),
        AnswerChoice(text: 'D. 13', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the __restrict keyword in C?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Restricts the use of certain functions',
            isCorrect: false),
        AnswerChoice(
            text: 'B. Specifies that a pointer does not alias other pointers',
            isCorrect: true),
        AnswerChoice(
            text: 'C. Declares a function or variable as external',
            isCorrect: false),
        AnswerChoice(
            text: 'D. Specifies restricted memory access', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nchar str[] = "Hello";'
          '\nchar *ptr = str;'
          '\nprintf("%c", *(ptr + 1));'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. e', isCorrect: true),
        AnswerChoice(text: 'B. H', isCorrect: false),
        AnswerChoice(text: 'C. l', isCorrect: false),
        AnswerChoice(text: 'D. o', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C code snippet?'
          '\n\n#include <stdio.h>'
          '\n\nint main() {'
          '\nint x = 5;'
          '\nint *ptr = &x;'
          '\nptr += 1;'
          '\nprintf("%d", *ptr);'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: false),
        AnswerChoice(text: 'B. Garbage value', isCorrect: true),
        AnswerChoice(text: 'C. Error: segmentation fault', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    // Advanced questions for C
  ],
  // Repeat for other categories and levels

  'Java_Beginner': [
    QuizQuestion(
      questionText: 'What is Java?',
      answerChoices: [
        AnswerChoice(text: 'A. A programming language', isCorrect: true),
        AnswerChoice(text: 'B. A type of coffee', isCorrect: false),
        AnswerChoice(text: 'C. A computer manufacturer', isCorrect: false),
        AnswerChoice(text: 'D. A software development tool', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the syntax for declaring a variable in Java?',
      answerChoices: [
        AnswerChoice(text: 'A. variable x;', isCorrect: false),
        AnswerChoice(text: 'B. int x;', isCorrect: true),
        AnswerChoice(text: 'C. x = int;', isCorrect: false),
        AnswerChoice(text: 'D. declare x as int;', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is an object in Java?',
      answerChoices: [
        AnswerChoice(text: 'A. A reserved keyword', isCorrect: false),
        AnswerChoice(text: 'B. A data type', isCorrect: false),
        AnswerChoice(text: 'C. An instance of a class', isCorrect: true),
        AnswerChoice(text: 'D. A method', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which keyword is used to define a class in Java?',
      answerChoices: [
        AnswerChoice(text: 'A. class', isCorrect: true),
        AnswerChoice(text: 'B. define', isCorrect: false),
        AnswerChoice(text: 'C. structure', isCorrect: false),
        AnswerChoice(text: 'D. object', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nint y = 2;'
          '\nSystem.out.println(x / y);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 2', isCorrect: false),
        AnswerChoice(text: 'B. 2.5', isCorrect: false),
        AnswerChoice(text: 'C. 2.0', isCorrect: false),
        AnswerChoice(text: 'D. 2', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText:
          'What is the purpose of the System.out.println() method in Java?',
      answerChoices: [
        AnswerChoice(text: 'A. To read input from the user', isCorrect: false),
        AnswerChoice(
            text: 'B. To print output to the console', isCorrect: true),
        AnswerChoice(
            text: 'C. To perform mathematical calculations', isCorrect: false),
        AnswerChoice(text: 'D. To declare variables', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText:
          'What is the default value of an integer variable in Java if it is not initialized?',
      answerChoices: [
        AnswerChoice(text: 'A. 0', isCorrect: false),
        AnswerChoice(text: 'B. 1', isCorrect: false),
        AnswerChoice(text: 'C. null', isCorrect: false),
        AnswerChoice(text: 'D. Depends on the compiler', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What is an array in Java?',
      answerChoices: [
        AnswerChoice(text: 'A. A reserved keyword', isCorrect: false),
        AnswerChoice(
            text:
                'B. A data structure that stores a fixed-size sequential collection of elements of the same type',
            isCorrect: true),
        AnswerChoice(text: 'C. A primitive data type', isCorrect: false),
        AnswerChoice(text: 'D. A method', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which loop in Java will always execute at least once?',
      answerChoices: [
        AnswerChoice(text: 'A. for loop', isCorrect: false),
        AnswerChoice(text: 'B. while loop', isCorrect: false),
        AnswerChoice(text: 'C. do-while loop', isCorrect: true),
        AnswerChoice(text: 'D. switch loop', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the break statement in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. To exit a loop or switch statement', isCorrect: true),
        AnswerChoice(
            text: 'B. To continue to the next iteration of a loop',
            isCorrect: false),
        AnswerChoice(text: 'C. To throw an exception', isCorrect: false),
        AnswerChoice(
            text: 'D. To return a value from a function', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the difference between == and equals() in Java?',
      answerChoices: [
        AnswerChoice(text: 'A. They are the same', isCorrect: false),
        AnswerChoice(
            text:
                'B. == compares object references, while equals() compares object contents',
            isCorrect: true),
        AnswerChoice(
            text:
                'C. == is used for primitive data types, while equals() is used for objects',
            isCorrect: false),
        AnswerChoice(
            text: 'D. == is a method, while equals() is an operator',
            isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nString str1 = "hello";'
          '\nString str2 = "hello";'
          '\nSystem.out.println(str1 == str2);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. true', isCorrect: true),
        AnswerChoice(text: 'B. false', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the public keyword in Java?',
      answerChoices: [
        AnswerChoice(
            text:
                'A. Specifies the accessibility of a class, method, or variable',
            isCorrect: true),
        AnswerChoice(text: 'B. Declares a method as static', isCorrect: false),
        AnswerChoice(text: 'C. Declares a method as private', isCorrect: false),
        AnswerChoice(
            text: 'D. Specifies the inheritance of a class', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nSystem.out.println(x++);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: true),
        AnswerChoice(text: 'B. 6', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the this keyword in Java?',
      answerChoices: [
        AnswerChoice(text: 'A. To create a new object', isCorrect: false),
        AnswerChoice(
            text: 'B. To call a superclass constructor', isCorrect: false),
        AnswerChoice(
            text: 'C. To refer to the current object', isCorrect: true),
        AnswerChoice(
            text: 'D. To initialize class variables', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nString str = "hello";'
          '\nstr.concat("world");'
          '\nSystem.out.println(str);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. hello', isCorrect: true),
        AnswerChoice(text: 'B. helloworld', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the super keyword in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. To call a superclass constructor', isCorrect: true),
        AnswerChoice(text: 'B. To call a static method', isCorrect: false),
        AnswerChoice(
            text: 'C. To refer to the current object', isCorrect: false),
        AnswerChoice(
            text: 'D. To initialize class variables', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nString str = "hello";'
          '\nSystem.out.println(str.substring(0, 2));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. hel', isCorrect: true),
        AnswerChoice(text: 'B. ello', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the final keyword in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. To declare a variable constant', isCorrect: true),
        AnswerChoice(
            text: 'B. To specify the accessibility of a class',
            isCorrect: false),
        AnswerChoice(text: 'C. To declare a method as final', isCorrect: false),
        AnswerChoice(text: 'D. To initialize a variable', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nint y = 2;'
          '\nSystem.out.println(x % y);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 2', isCorrect: false),
        AnswerChoice(text: 'B. 2.5', isCorrect: false),
        AnswerChoice(text: 'C. 1', isCorrect: true),
        AnswerChoice(text: 'D. 0', isCorrect: false),
      ],
    ),
  ],
  'Java_Intermediate': [
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nint y = 2;'
          '\nSystem.out.println(x % y);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 2', isCorrect: false),
        AnswerChoice(text: 'B. 2.5', isCorrect: false),
        AnswerChoice(text: 'C. 1', isCorrect: true),
        AnswerChoice(text: 'D. 0', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the interface keyword in Java?',
      answerChoices: [
        AnswerChoice(text: 'A. To define a class', isCorrect: false),
        AnswerChoice(
            text: 'B. To specify the accessibility of a class',
            isCorrect: false),
        AnswerChoice(
            text: 'C. To declare a set of method signatures', isCorrect: true),
        AnswerChoice(
            text: 'D. To declare a method as static', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the super keyword do in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Calls the superclass constructor', isCorrect: true),
        AnswerChoice(
            text: 'B. Specifies the inheritance of a class', isCorrect: false),
        AnswerChoice(
            text: 'C. Declares a method as abstract', isCorrect: false),
        AnswerChoice(
            text: 'D. Specifies the accessibility of a method',
            isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nSystem.out.println(x++);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: true),
        AnswerChoice(text: 'B. 6', isCorrect: false),
        AnswerChoice(text: 'C. 4', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the this keyword in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Refers to the current instance of the class',
            isCorrect: true),
        AnswerChoice(
            text: 'B. Refers to the superclass of the current class',
            isCorrect: false),
        AnswerChoice(
            text: 'C. Refers to the base class of the current class',
            isCorrect: false),
        AnswerChoice(
            text: 'D. Specifies the inheritance of a class', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 10;'
          '\nif (x > 5) {'
          '\nSystem.out.println("x is greater than 5");'
          '\n} else {'
          '\nSystem.out.println("x is less than or equal to 5");'
          '\n}'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. x is greater than 5', isCorrect: true),
        AnswerChoice(text: 'B. x is less than or equal to 5', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the static keyword in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Declares a method as abstract', isCorrect: false),
        AnswerChoice(
            text: 'B. Specifies the accessibility of a method',
            isCorrect: false),
        AnswerChoice(
            text:
                'C. Allocates memory for a variable or method at compile time',
            isCorrect: true),
        AnswerChoice(text: 'D. Declares a method as final', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nint y = 2;'
          '\nSystem.out.println(Math.pow(x, y));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 25', isCorrect: false),
        AnswerChoice(text: 'B. 10', isCorrect: false),
        AnswerChoice(text: 'C. 5^2', isCorrect: false),
        AnswerChoice(text: 'D. 25.0', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the abstract keyword in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Specifies the accessibility of a class',
            isCorrect: false),
        AnswerChoice(text: 'B. Declares a method as static', isCorrect: false),
        AnswerChoice(
            text:
                'C. Specifies that a class cannot be instantiated and must be subclassed',
            isCorrect: true),
        AnswerChoice(text: 'D. Declares a method as final', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nString str = "Hello, World!";'
          '\nSystem.out.println(str.substring(7));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Hello', isCorrect: false),
        AnswerChoice(text: 'B. World!', isCorrect: true),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the final keyword in Java?',
      answerChoices: [
        AnswerChoice(text: 'A. Declares a method as static', isCorrect: false),
        AnswerChoice(
            text: 'B. Specifies the accessibility of a method',
            isCorrect: false),
        AnswerChoice(
            text:
                'C. Prevents a class from being subclassed or a method from being overridden',
            isCorrect: true),
        AnswerChoice(
            text:
                'D. Allocates memory for a variable or method at compile time',
            isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint[] arr = new int[5];'
          '\nSystem.out.println(arr.length);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 0', isCorrect: false),
        AnswerChoice(text: 'B. 5', isCorrect: true),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the protected keyword in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Specifies the accessibility of a class',
            isCorrect: false),
        AnswerChoice(text: 'B. Declares a method as static', isCorrect: false),
        AnswerChoice(
            text:
                'C. Specifies that a class or method can only be accessed within its package or subclasses',
            isCorrect: true),
        AnswerChoice(text: 'D. Declares a method as final', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nSystem.out.println(x << 1);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: false),
        AnswerChoice(text: 'B. 10', isCorrect: true),
        AnswerChoice(text: 'C. 20', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the volatile keyword in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Specifies that a variable will be initialized to zero',
            isCorrect: false),
        AnswerChoice(
            text: 'B. Indicates that a variable may be modified externally',
            isCorrect: true),
        AnswerChoice(
            text: 'C. Prevents a variable from being modified',
            isCorrect: false),
        AnswerChoice(
            text: 'D. Specifies that a variable will never change',
            isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 10;'
          '\nSystem.out.println(++x);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 10', isCorrect: false),
        AnswerChoice(text: 'B. 11', isCorrect: true),
        AnswerChoice(text: 'C. 12', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nint *ptr = &x;'
          '\nSystem.out.println(*ptr);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: false),
        AnswerChoice(text: 'B. 10', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the transient keyword in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Specifies that a variable will be initialized to zero',
            isCorrect: false),
        AnswerChoice(
            text: 'B. Indicates that a variable may be modified externally',
            isCorrect: false),
        AnswerChoice(
            text: 'C. Prevents a variable from being serialized',
            isCorrect: true),
        AnswerChoice(
            text: 'D. Specifies that a variable will never change',
            isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint i = 1;'
          '\nSystem.out.print(i++);'
          '\nSystem.out.print(++i);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 11', isCorrect: true),
        AnswerChoice(text: 'B. 12', isCorrect: false),
        AnswerChoice(text: 'C. 21', isCorrect: false),
        AnswerChoice(text: 'D. 22', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the synchronized keyword in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Specifies that a method cannot be overridden',
            isCorrect: false),
        AnswerChoice(
            text:
                'B. Allocates memory for a variable or method at compile time',
            isCorrect: false),
        AnswerChoice(
            text:
                'C. Specifies that a method can only be accessed within its package or subclasses',
            isCorrect: false),
        AnswerChoice(
            text:
                'D. Provides thread safety by restricting access to the synchronized block or method to only one thread at a time',
            isCorrect: true),
      ],
    ),
  ],
  'Java_Advanced': [
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nint y = 10;'
          '\nSystem.out.println(x > y ? "x is greater" : "y is greater");'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. x is greater', isCorrect: false),
        AnswerChoice(text: 'B. y is greater', isCorrect: true),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nString str = "hello";'
          '\nstr.concat(" world");'
          '\nSystem.out.println(str);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. hello world', isCorrect: false),
        AnswerChoice(text: 'B. hello', isCorrect: true),
        AnswerChoice(text: 'C. world', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the assert keyword do in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Asserts that a variable is null', isCorrect: false),
        AnswerChoice(
            text: 'B. Asserts a condition to be true', isCorrect: true),
        AnswerChoice(
            text: 'C. Asserts a condition to be false', isCorrect: false),
        AnswerChoice(
            text: 'D. Asserts that an exception is thrown', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nSystem.out.println(~x);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. -5', isCorrect: true),
        AnswerChoice(text: 'B. 4', isCorrect: false),
        AnswerChoice(text: 'C. 5', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the enum keyword in Java?',
      answerChoices: [
        AnswerChoice(text: 'A. To declare an enumeration', isCorrect: true),
        AnswerChoice(
            text: 'B. To declare a constant variable', isCorrect: false),
        AnswerChoice(text: 'C. To declare a final class', isCorrect: false),
        AnswerChoice(
            text: 'D. To declare a synchronized method', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nString str1 = "hello";'
          '\nString str2 = "hello";'
          '\nSystem.out.println(str1 == str2);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. true', isCorrect: true),
        AnswerChoice(text: 'B. false', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the transient keyword in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Specifies that a variable will be initialized to zero',
            isCorrect: false),
        AnswerChoice(
            text: 'B. Indicates that a variable may be modified externally',
            isCorrect: false),
        AnswerChoice(
            text: 'C. Prevents a variable from being serialized',
            isCorrect: true),
        AnswerChoice(
            text: 'D. Specifies that a variable will never change',
            isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nString str = "hello";'
          '\nstr.toUpperCase();'
          '\nSystem.out.println(str);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. hello', isCorrect: true),
        AnswerChoice(text: 'B. HELLO', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the volatile keyword in Java?',
      answerChoices: [
        AnswerChoice(
            text: 'A. Specifies that a variable will be initialized to zero',
            isCorrect: false),
        AnswerChoice(
            text: 'B. Indicates that a variable may be modified externally',
            isCorrect: true),
        AnswerChoice(
            text: 'C. Prevents a variable from being modified',
            isCorrect: false),
        AnswerChoice(
            text: 'D. Specifies that a variable will never change',
            isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nint y = 10;'
          '\nint z = x > y ? x : y;'
          '\nSystem.out.println(z);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: false),
        AnswerChoice(text: 'B. 10', isCorrect: true),
        AnswerChoice(text: 'C. x', isCorrect: false),
        AnswerChoice(text: 'D. y', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 10;'
          '\nSystem.out.println(x >> 1);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: true),
        AnswerChoice(text: 'B. 20', isCorrect: false),
        AnswerChoice(text: 'C. 2', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nint y = 10;'
          '\nSystem.out.println(x ^ y);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 15', isCorrect: true),
        AnswerChoice(text: 'B. 5', isCorrect: false),
        AnswerChoice(text: 'C. 10', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nint y = 10;'
          '\nSystem.out.println(Math.max(x, y));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: false),
        AnswerChoice(text: 'B. 10', isCorrect: false),
        AnswerChoice(text: 'C. 15', isCorrect: false),
        AnswerChoice(text: 'D. 10', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nint y = 10;'
          '\nSystem.out.println(Math.min(x, y));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: true),
        AnswerChoice(text: 'B. 10', isCorrect: false),
        AnswerChoice(text: 'C. 15', isCorrect: false),
        AnswerChoice(text: 'D. 10', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nint x = 5;'
          '\nSystem.out.println(x << 1);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: false),
        AnswerChoice(text: 'B. 10', isCorrect: true),
        AnswerChoice(text: 'C. 20', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nString str = "hello";'
          '\nSystem.out.println(str.substring(0, 2));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. he', isCorrect: true),
        AnswerChoice(text: 'B. hello', isCorrect: false),
        AnswerChoice(text: 'C. h', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nString str = "hello";'
          '\nSystem.out.println(str.charAt(0));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. h', isCorrect: true),
        AnswerChoice(text: 'B. e', isCorrect: false),
        AnswerChoice(text: 'C. l', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nString str = "hello";'
          '\nSystem.out.println(str.indexOf("l"));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 2', isCorrect: false),
        AnswerChoice(text: 'B. 3', isCorrect: true),
        AnswerChoice(text: 'C. 4', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nString str = "hello";'
          '\nSystem.out.println(str.endsWith("lo"));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. true', isCorrect: true),
        AnswerChoice(text: 'B. false', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Java code snippet?'
          '\n\npublic class Main {'
          '\npublic static void main(String[] args) {'
          '\nString str = "hello";'
          '\nSystem.out.println(str.replace("l", "w"));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. hewwo', isCorrect: true),
        AnswerChoice(text: 'B. hello', isCorrect: false),
        AnswerChoice(text: 'C. heowo', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
  ],
  'C++_Beginner': [
    QuizQuestion(
      questionText: 'What is C++?',
      answerChoices: [
        AnswerChoice(text: 'A. A programming language', isCorrect: true),
        AnswerChoice(text: 'B. An operating system', isCorrect: false),
        AnswerChoice(text: 'C. A web browser', isCorrect: false),
        AnswerChoice(text: 'D. A database management system', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the syntax for printing "Hello, World!" to the console in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. print("Hello, World!");', isCorrect: false),
        AnswerChoice(text: 'B. echo "Hello, World!";', isCorrect: false),
        AnswerChoice(text: 'C. cout << "Hello, World!";', isCorrect: true),
        AnswerChoice(text: 'D. printf("Hello, World!");', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the syntax for declaring a variable in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. variable x;', isCorrect: false),
        AnswerChoice(text: 'B. int x;', isCorrect: true),
        AnswerChoice(text: 'C. x = int;', isCorrect: false),
        AnswerChoice(text: 'D. declare x as int;', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the cin object in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To output data to the console', isCorrect: false),
        AnswerChoice(text: 'B. To read input from the console', isCorrect: true),
        AnswerChoice(text: 'C. To perform mathematical calculations', isCorrect: false),
        AnswerChoice(text: 'D. To declare variables', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the syntax for a single-line comment in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. // This is a comment', isCorrect: true),
        AnswerChoice(text: 'B. /* This is a comment */', isCorrect: false),
        AnswerChoice(text: 'C. # This is a comment', isCorrect: false),
        AnswerChoice(text: 'D. -- This is a comment', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the ++ operator in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To subtract 1 from a variable', isCorrect: false),
        AnswerChoice(text: 'B. To add 1 to a variable', isCorrect: true),
        AnswerChoice(text: 'C. To multiply a variable by 2', isCorrect: false),
        AnswerChoice(text: 'D. To divide a variable by 2', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the syntax for declaring a function in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. function myFunction() { }', isCorrect: false),
        AnswerChoice(text: 'B. void myFunction() { }', isCorrect: true),
        AnswerChoice(text: 'C. def myFunction():', isCorrect: false),
        AnswerChoice(text: 'D. procedure myFunction() { }', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which header file is used for input/output operations in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. stdlib.h', isCorrect: false),
        AnswerChoice(text: 'B. iostream', isCorrect: true),
        AnswerChoice(text: 'C. math.h', isCorrect: false),
        AnswerChoice(text: 'D. string.h', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the break statement in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To exit a loop or switch statement', isCorrect: true),
        AnswerChoice(text: 'B. To continue to the next iteration of a loop', isCorrect: false),
        AnswerChoice(text: 'C. To throw an exception', isCorrect: false),
        AnswerChoice(text: 'D. To return a value from a function', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which data type is used to store integer values in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. float', isCorrect: false),
        AnswerChoice(text: 'B. double', isCorrect: false),
        AnswerChoice(text: 'C. int', isCorrect: true),
        AnswerChoice(text: 'D. char', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the const keyword in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To declare a variable as constant', isCorrect: true),
        AnswerChoice(text: 'B. To specify the accessibility of a variable', isCorrect: false),
        AnswerChoice(text: 'C. To declare a variable as static', isCorrect: false),
        AnswerChoice(text: 'D. To allocate memory for a variable', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the syntax for declaring a pointer in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. int *x;', isCorrect: true),
        AnswerChoice(text: 'B. *int x;', isCorrect: false),
        AnswerChoice(text: 'C. pointer x;', isCorrect: false),
        AnswerChoice(text: 'D. int &x;', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code snippet?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint x = 5;'
          '\ncout << "Value of x: " << x << endl;'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Value of x: 5', isCorrect: true),
        AnswerChoice(text: 'B. x: 5', isCorrect: false),
        AnswerChoice(text: 'C. 5', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the sizeof operator in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To return the memory size of a variable or data type', isCorrect: true),
        AnswerChoice(text: 'B. To perform arithmetic operations', isCorrect: false),
        AnswerChoice(text: 'C. To allocate memory for a variable', isCorrect: false),
        AnswerChoice(text: 'D. To declare a variable as static', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the syntax for declaring an array in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. array x[];', isCorrect: false),
        AnswerChoice(text: 'B. int array x[];', isCorrect: false),
        AnswerChoice(text: 'C. int x[];', isCorrect: true),
        AnswerChoice(text: 'D. declare x as array[];', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the continue statement in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To exit a loop or switch statement', isCorrect: false),
        AnswerChoice(text: 'B. To skip the rest of the code in the current iteration and continue to the next iteration of a loop', isCorrect: true),
        AnswerChoice(text: 'C. To jump to a specific label in the code', isCorrect: false),
        AnswerChoice(text: 'D. To return a value from a function', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the syntax for a multi-line comment in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. // This is a comment', isCorrect: false),
        AnswerChoice(text: 'B. /* This is a comment */', isCorrect: true),
        AnswerChoice(text: 'C. # This is a comment', isCorrect: false),
        AnswerChoice(text: 'D. -- This is a comment', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the endl manipulator in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To insert a new line character', isCorrect: true),
        AnswerChoice(text: 'B. To output a tab character', isCorrect: false),
        AnswerChoice(text: 'C. To output a space character', isCorrect: false),
        AnswerChoice(text: 'D. To clear the input buffer', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code snippet?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint x = 5;'
          '\nint y = 10;'
          '\nint z = x + y;'
          '\ncout << "Sum: " << z << endl;'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Sum: 5', isCorrect: false),
        AnswerChoice(text: 'B. Sum: 10', isCorrect: false),
        AnswerChoice(text: 'C. Sum: 15', isCorrect: true),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code snippet?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint x = 5;'
          '\nint y = 10;'
          '\nint z = x * y;'
          '\ncout << "Product: " << z << endl;'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Product: 5', isCorrect: false),
        AnswerChoice(text: 'B. Product: 10', isCorrect: false),
        AnswerChoice(text: 'C. Product: 50', isCorrect: true),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
  ],
  'C++_Intermediate': [
    QuizQuestion(
      questionText: 'What will be the output of the following C++ code?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint arr[] = {1, 2, 3, 4, 5};'
          '\ncout << "Array elements: ";'
          '\nfor (int i = 0; i < 5; ++i) {'
          '\ncout << arr[i] << " ";'
          '\n}'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Array elements: 1 2 3 4 5', isCorrect: true),
        AnswerChoice(text: 'B. 1 2 3 4 5', isCorrect: false),
        AnswerChoice(text: 'C. Array elements: 5 4 3 2 1', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the << operator do in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. Right shift operator', isCorrect: false),
        AnswerChoice(text: 'B. Bitwise AND operator', isCorrect: false),
        AnswerChoice(text: 'C. Bitwise OR operator', isCorrect: false),
        AnswerChoice(text: 'D. Output stream insertion operator', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint x = 5;'
          '\ncout << "Value of x: " << x++ << endl;'
          '\ncout << "Updated value of x: " << x << endl;'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Value of x: 5\nUpdated value of x: 6', isCorrect: true),
        AnswerChoice(text: 'B. Value of x: 5\nUpdated value of x: 5', isCorrect: false),
        AnswerChoice(text: 'C. Value of x: 6\nUpdated value of x: 5', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the new keyword in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To allocate memory for variables', isCorrect: true),
        AnswerChoice(text: 'B. To create a new function', isCorrect: false),
        AnswerChoice(text: 'C. To delete a variable', isCorrect: false),
        AnswerChoice(text: 'D. To access a member function', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint x = 5;'
          '\nint& ref = x;'
          '\nref = 10;'
          '\ncout << "Value of x: " << x << endl;'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Value of x: 10', isCorrect: true),
        AnswerChoice(text: 'B. Value of x: 5', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the const keyword in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To declare a constant variable', isCorrect: true),
        AnswerChoice(text: 'B. To specify the accessibility of a variable', isCorrect: false),
        AnswerChoice(text: 'C. To declare a variable as static', isCorrect: false),
        AnswerChoice(text: 'D. To allocate memory for a variable', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint arr[5] = {1, 2, 3, 4, 5};'
          '\nint* ptr = arr;'
          '\ncout << "First element: " << *ptr << endl;'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. First element: 1', isCorrect: true),
        AnswerChoice(text: 'B. First element: 0', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the endl manipulator in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To insert a new line character', isCorrect: true),
        AnswerChoice(text: 'B. To concatenate strings', isCorrect: false),
        AnswerChoice(text: 'C. To flush the output buffer', isCorrect: true),
        AnswerChoice(text: 'D. To insert a tab character', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint x = 5;'
          '\nint* ptr = &x;'
          '\ncout << "Address of x: " << ptr << endl;'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Address of x: (some memory address)', isCorrect: true),
        AnswerChoice(text: 'B. Address of x: 5', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint arr[] = {1, 2, 3, 4, 5};'
          '\nint* ptr = arr;'
          '\nfor (int i = 0; i < 5; ++i) {'
          '\n*(ptr + i) *= 2;'
          '\n}'
          '\nfor (int i = 0; i < 5; ++i) {'
          '\ncout << arr[i] << " ";'
          '\n}'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 2 4 6 8 10', isCorrect: true),
        AnswerChoice(text: 'B. 1 2 3 4 5', isCorrect: false),
        AnswerChoice(text: 'C. 1 4 9 16 25', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint x = 10;'
          '\nif (x > 5) {'
          '\ncout << "x is greater than 5";'
          '\n}'
          '\nelse {'
          '\ncout << "x is less than or equal to 5";'
          '\n}'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. x is greater than 5', isCorrect: true),
        AnswerChoice(text: 'B. x is less than or equal to 5', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the continue statement in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To exit a loop', isCorrect: false),
        AnswerChoice(text: 'B. To skip the rest of the loop body and jump to the next iteration', isCorrect: true),
        AnswerChoice(text: 'C. To return a value from a function', isCorrect: false),
        AnswerChoice(text: 'D. To terminate the program', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint arr[3][3] = { {1, 2, 3}, {4, 5, 6}, {7, 8, 9} };'
          '\ncout << "Element at (1, 1): " << arr[1][1] << endl;'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Element at (1, 1): 5', isCorrect: true),
        AnswerChoice(text: 'B. Element at (1, 1): 2', isCorrect: false),
        AnswerChoice(text: 'C. Element at (1, 1): 4', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint x = 5;'
          '\nint* ptr = &x;'
          '\n*ptr = 10;'
          '\ncout << "Value of x: " << x << endl;'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Value of x: 10', isCorrect: true),
        AnswerChoice(text: 'B. Value of x: 5', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the do-while loop in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To execute a block of code repeatedly as long as a condition is true', isCorrect: false),
        AnswerChoice(text: 'B. To execute a block of code repeatedly until a condition is true', isCorrect: true),
        AnswerChoice(text: 'C. To execute a block of code exactly once', isCorrect: false),
        AnswerChoice(text: 'D. To execute a block of code based on a condition', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nvoid printMessage() {'
          '\nstatic int count = 0;'
          '\ncout << "Message printed " << ++count << " times" << endl;'
          '\n}'
          '\n'
          '\nint main() {'
          '\nprintMessage();'
          '\nprintMessage();'
          '\nprintMessage();'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Message printed 1 times\nMessage printed 2 times\nMessage printed 3 times', isCorrect: true),
        AnswerChoice(text: 'B. Message printed 1 times\nMessage printed 1 times\nMessage printed 1 times', isCorrect: false),
        AnswerChoice(text: 'C. Message printed 3 times\nMessage printed 2 times\nMessage printed 1 times', isCorrect: false),
        AnswerChoice(text: 'D. Error: syntax error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the static keyword in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To specify the accessibility of a variable or function', isCorrect: false),
        AnswerChoice(text: 'B. To declare a variable or function as constant', isCorrect: false),
        AnswerChoice(text: 'C. To allocate memory for a variable', isCorrect: false),
        AnswerChoice(text: 'D. To persist the value of a variable across function calls', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nvoid swap(int& a, int& b) {'
          '\nint temp = a;'
          '\na = b;'
          '\nb = temp;'
          '\n}'
          '\n'
          '\nint main() {'
          '\nint x = 5, y = 10;'
          '\nswap(x, y);'
          '\ncout << "x: " << x << ", y: " << y << endl;'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. x: 10, y: 5', isCorrect: true),
        AnswerChoice(text: 'B. x: 5, y: 10', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the nullptr keyword in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To initialize a pointer variable to zero', isCorrect: true),
        AnswerChoice(text: 'B. To declare a null pointer', isCorrect: false),
        AnswerChoice(text: 'C. To allocate memory for a pointer', isCorrect: false),
        AnswerChoice(text: 'D. To access the memory address of a variable', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C++ code?'
          '\n\n#include <iostream>'
          '\nusing namespace std;'
          '\n'
          '\nint main() {'
          '\nint x = 5;'
          '\nint* ptr = nullptr;'
          '\ncout << "Address of x: " << &x << endl;'
          '\ncout << "Value of ptr: " << ptr << endl;'
          '\nreturn 0;'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Address of x: (some memory address)\nValue of ptr: 0', isCorrect: true),
        AnswerChoice(text: 'B. Address of x: (some memory address)\nValue of ptr: (some memory address)', isCorrect: false),
        AnswerChoice(text: 'C. Error: syntax error', isCorrect: false),
        AnswerChoice(text: 'D. Error: undefined behavior', isCorrect: false),
      ],
    ),
  ],
  'C++_Advanced': [
    QuizQuestion(
      questionText: 'What is a lambda function in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. A function that cannot capture variables from its enclosing scope', isCorrect: false),
        AnswerChoice(text: 'B. A function that can be defined inline without a separate declaration', isCorrect: true),
        AnswerChoice(text: 'C. A function that returns a lambda expression', isCorrect: false),
        AnswerChoice(text: 'D. A function that accepts lambda expressions as arguments', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the std::move function in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To copy the contents of one object to another', isCorrect: false),
        AnswerChoice(text: 'B. To move the contents of one object to another, leaving the source object in a valid but unspecified state', isCorrect: true),
        AnswerChoice(text: 'C. To delete an object', isCorrect: false),
        AnswerChoice(text: 'D. To initialize an object with a specific value', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is a smart pointer in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. A pointer that can only point to dynamically allocated memory', isCorrect: false),
        AnswerChoice(text: 'B. A pointer that automatically manages memory deallocation', isCorrect: true),
        AnswerChoice(text: 'C. A pointer that points to a function', isCorrect: false),
        AnswerChoice(text: 'D. A pointer that cannot be dereferenced', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is RAII (Resource Acquisition Is Initialization) in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. A programming paradigm that emphasizes manual memory management', isCorrect: false),
        AnswerChoice(text: 'B. A design pattern where resource allocation and deallocation are tied to object lifetime', isCorrect: true),
        AnswerChoice(text: 'C. A way to implement recursion in C++', isCorrect: false),
        AnswerChoice(text: 'D. A method for optimizing compile-time performance', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the virtual keyword in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To specify that a function cannot be overridden in derived classes', isCorrect: false),
        AnswerChoice(text: 'B. To declare a function as a pure virtual function', isCorrect: false),
        AnswerChoice(text: 'C. To indicate that a function can be overridden in derived classes', isCorrect: true),
        AnswerChoice(text: 'D. To specify that a function is implemented in the base class', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is multiple inheritance in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. Inheriting from multiple classes that share a common base class', isCorrect: false),
        AnswerChoice(text: 'B. Inheriting from multiple base classes directly', isCorrect: true),
        AnswerChoice(text: 'C. Inheriting from a class and an interface', isCorrect: false),
        AnswerChoice(text: 'D. Inheriting from a class and a struct', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is function overloading in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. Defining multiple functions with the same name but different return types', isCorrect: false),
        AnswerChoice(text: 'B. Defining multiple functions with the same name but different parameter lists', isCorrect: true),
        AnswerChoice(text: 'C. Defining multiple functions with the same name and parameter list but different return types', isCorrect: false),
        AnswerChoice(text: 'D. Defining a function inside another function', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the difference between std::vector and std::array in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. std::vector is a dynamic array with automatic resizing, while std::array is a fixed-size array', isCorrect: true),
        AnswerChoice(text: 'B. std::vector is a fixed-size array, while std::array is a dynamic array with automatic resizing', isCorrect: false),
        AnswerChoice(text: 'C. std::vector and std::array are interchangeable and can be used interchangeably', isCorrect: false),
        AnswerChoice(text: 'D. std::vector and std::array are the same thing', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the constexpr keyword in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To declare a function as a constant expression', isCorrect: false),
        AnswerChoice(text: 'B. To specify that a variable or function can be evaluated at compile time', isCorrect: true),
        AnswerChoice(text: 'C. To declare a constant variable', isCorrect: false),
        AnswerChoice(text: 'D. To indicate that a function does not return a value', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the std::thread class in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To create and manage threads of execution', isCorrect: true),
        AnswerChoice(text: 'B. To manage file input and output operations', isCorrect: false),
        AnswerChoice(text: 'C. To perform mathematical calculations', isCorrect: false),
        AnswerChoice(text: 'D. To manipulate strings', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is a functor in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. A function that returns a lambda expression', isCorrect: false),
        AnswerChoice(text: 'B. A class or struct that overloads the function call operator operator()', isCorrect: true),
        AnswerChoice(text: 'C. A function that accepts a lambda expression as an argument', isCorrect: false),
        AnswerChoice(text: 'D. A function that cannot capture variables from its enclosing scope', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the std::unordered_map class in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To store key-value pairs in a sorted order', isCorrect: false),
        AnswerChoice(text: 'B. To store key-value pairs in an unordered manner for fast retrieval', isCorrect: true),
        AnswerChoice(text: 'C. To store only unique values in a collection', isCorrect: false),
        AnswerChoice(text: 'D. To store only keys in a collection', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is a move constructor in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. A constructor that takes an argument and creates a new object', isCorrect: false),
        AnswerChoice(text: 'B. A constructor that moves the resources owned by an rvalue reference into the newly created object', isCorrect: true),
        AnswerChoice(text: 'C. A constructor that initializes an object with a specific value', isCorrect: false),
        AnswerChoice(text: 'D. A constructor that is called when an object is copied', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the std::mutex class in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To manage dynamic memory allocation', isCorrect: false),
        AnswerChoice(text: 'B. To provide a synchronization mechanism for protecting shared resources from concurrent access', isCorrect: true),
        AnswerChoice(text: 'C. To perform file input and output operations', isCorrect: false),
        AnswerChoice(text: 'D. To manage string manipulation operations', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is a variadic template in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. A template that accepts a variable number of arguments', isCorrect: true),
        AnswerChoice(text: 'B. A template that accepts only one argument', isCorrect: false),
        AnswerChoice(text: 'C. A template that cannot be specialized', isCorrect: false),
        AnswerChoice(text: 'D. A template that does not accept any arguments', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the std::function class in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To store lambda expressions', isCorrect: false),
        AnswerChoice(text: 'B. To store any callable object, including function pointers, function objects, and lambda expressions', isCorrect: true),
        AnswerChoice(text: 'C. To store function names', isCorrect: false),
        AnswerChoice(text: 'D. To create new functions', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the difference between a std::shared_ptr and a std::unique_ptr in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. std::shared_ptr allows multiple pointers to own the same resource, while std::unique_ptr allows only one pointer to own the resource', isCorrect: true),
        AnswerChoice(text: 'B. std::shared_ptr does not allow dynamic memory allocation, while std::unique_ptr does', isCorrect: false),
        AnswerChoice(text: 'C. std::shared_ptr is more efficient than std::unique_ptr', isCorrect: false),
        AnswerChoice(text: 'D. std::unique_ptr automatically deallocates memory when it goes out of scope, while std::shared_ptr does not', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the std::enable_shared_from_this class in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To enable multiple inheritance', isCorrect: false),
        AnswerChoice(text: 'B. To enable a class to return a std::shared_ptr from a member function', isCorrect: true),
        AnswerChoice(text: 'C. To enable function overloading', isCorrect: false),
        AnswerChoice(text: 'D. To enable function template specialization', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the std::initializer_list class in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To initialize an object with a specific value', isCorrect: false),
        AnswerChoice(text: 'B. To provide a convenient way to initialize containers and aggregates with a list of elements', isCorrect: true),
        AnswerChoice(text: 'C. To store a list of function arguments', isCorrect: false),
        AnswerChoice(text: 'D. To store a list of function names', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the constexpr keyword in C++?',
      answerChoices: [
        AnswerChoice(text: 'A. To declare a constant expression', isCorrect: true),
        AnswerChoice(text: 'B. To specify that a function can be evaluated at compile time', isCorrect: false),
        AnswerChoice(text: 'C. To declare a constant variable', isCorrect: false),
        AnswerChoice(text: 'D. To indicate that a function does not return a value', isCorrect: false),
      ],
    ),
  ],
  'C#_Beginner':[
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint x = 5;'
          '\nint y = 10;'
          '\nint sum = x + y;'
          '\nConsole.WriteLine("Sum of x and y: " + sum);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Sum of x and y: 5', isCorrect: false),
        AnswerChoice(text: 'B. Sum of x and y: 10', isCorrect: false),
        AnswerChoice(text: 'C. Sum of x and y: 15', isCorrect: true),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the correct syntax to declare a variable in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. int x;', isCorrect: true),
        AnswerChoice(text: 'B. variable x;', isCorrect: false),
        AnswerChoice(text: 'C. x = int;', isCorrect: false),
        AnswerChoice(text: 'D. declare x;', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the Console.WriteLine() method do in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. Reads input from the user', isCorrect: false),
        AnswerChoice(text: 'B. Prints output to the console', isCorrect: true),
        AnswerChoice(text: 'C. Performs mathematical calculations', isCorrect: false),
        AnswerChoice(text: 'D. Terminates the program', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which data type is used to store whole numbers in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. float', isCorrect: false),
        AnswerChoice(text: 'B. double', isCorrect: false),
        AnswerChoice(text: 'C. int', isCorrect: true),
        AnswerChoice(text: 'D. char', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the correct way to define a string variable in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. string x = "Hello";', isCorrect: true),
        AnswerChoice(text: 'B. String x = "Hello";', isCorrect: false),
        AnswerChoice(text: 'C. x = "Hello";', isCorrect: false),
        AnswerChoice(text: 'D. char x = "Hello";', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nfor (int i = 0; i < 5; i++) {'
          '\nConsole.WriteLine(i);'
          '\n}'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 0\n1\n2\n3\n4\n', isCorrect: true),
        AnswerChoice(text: 'B. 1\n2\n3\n4\n5\n', isCorrect: false),
        AnswerChoice(text: 'C. 1\n2\n3\n4\n', isCorrect: false),
        AnswerChoice(text: 'D. 0\n1\n2\n3\n', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which keyword is used to define a method in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. function', isCorrect: false),
        AnswerChoice(text: 'B. method', isCorrect: false),
        AnswerChoice(text: 'C. def', isCorrect: false),
        AnswerChoice(text: 'D. void', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the return statement in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To exit a loop', isCorrect: false),
        AnswerChoice(text: 'B. To exit a method and optionally return a value', isCorrect: true),
        AnswerChoice(text: 'C. To print output to the console', isCorrect: false),
        AnswerChoice(text: 'D. To declare a variable', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which operator is used for equality comparison in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. ==', isCorrect: true),
        AnswerChoice(text: 'B. =', isCorrect: false),
        AnswerChoice(text: 'C. ===', isCorrect: false),
        AnswerChoice(text: 'D. !=', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the correct syntax to define a for loop in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. for (int i = 0; i < 5; i++)', isCorrect: true),
        AnswerChoice(text: 'B. for (i = 0; i < 5; i++)', isCorrect: false),
        AnswerChoice(text: 'C. loop (int i = 0; i < 5; i++)', isCorrect: false),
        AnswerChoice(text: 'D. for (i = 0; i < 5)', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the using directive in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To include a namespace in the current scope', isCorrect: true),
        AnswerChoice(text: 'B. To declare a variable', isCorrect: false),
        AnswerChoice(text: 'C. To define a method', isCorrect: false),
        AnswerChoice(text: 'D. To perform file input and output operations', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint i = 0;'
          '\nwhile (i < 5) {'
          '\nConsole.WriteLine(i);'
          '\ni++;'
          '\n}'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 0\n1\n2\n3\n4\n', isCorrect: true),
        AnswerChoice(text: 'B. 1\n2\n3\n4\n5\n', isCorrect: false),
        AnswerChoice(text: 'C. 1\n2\n3\n4\n', isCorrect: false),
        AnswerChoice(text: 'D. 0\n1\n2\n3\n', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which of the following is a valid C# identifier?',
      answerChoices: [
        AnswerChoice(text: 'A. 2var', isCorrect: false),
        AnswerChoice(text: 'B. _variable', isCorrect: true),
        AnswerChoice(text: 'C. variable-name', isCorrect: false),
        AnswerChoice(text: 'D. var', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the correct way to declare an array in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. array<int> arr = new array<int>[5];', isCorrect: false),
        AnswerChoice(text: 'B. int[] arr = new int[5];', isCorrect: true),
        AnswerChoice(text: 'C. arr[] = new int[5];', isCorrect: false),
        AnswerChoice(text: 'D. int arr[5];', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the params keyword in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To specify the accessibility of a member', isCorrect: false),
        AnswerChoice(text: 'B. To define a variable number of arguments in a method', isCorrect: true),
        AnswerChoice(text: 'C. To specify that a method does not return a value', isCorrect: false),
        AnswerChoice(text: 'D. To declare a constant value', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the static keyword in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To specify that a variable cannot be modified', isCorrect: false),
        AnswerChoice(text: 'B. To declare a constant value', isCorrect: false),
        AnswerChoice(text: 'C. To allocate memory for a variable', isCorrect: false),
        AnswerChoice(text: 'D. To specify that a member belongs to the class rather than an instance of the class', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the correct syntax to define a class in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. class MyClass { }', isCorrect: true),
        AnswerChoice(text: 'B. Class MyClass { }', isCorrect: false),
        AnswerChoice(text: 'C. Class = MyClass { }', isCorrect: false),
        AnswerChoice(text: 'D. define MyClass { }', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the new keyword in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To declare a new variable', isCorrect: false),
        AnswerChoice(text: 'B. To allocate memory for an object', isCorrect: true),
        AnswerChoice(text: 'C. To perform mathematical calculations', isCorrect: false),
        AnswerChoice(text: 'D. To specify a method as a constructor', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the foreach loop in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To execute a block of code repeatedly as long as a condition is true', isCorrect: false),
        AnswerChoice(text: 'B. To iterate over elements in an array or collection', isCorrect: true),
        AnswerChoice(text: 'C. To execute a block of code based on a condition', isCorrect: false),
        AnswerChoice(text: 'D. To exit a loop', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint x = 5;'
          '\nint y = 10;'
          '\nConsole.WriteLine("x: {x}, y: {y}");'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. x: 5, y: 10', isCorrect: true),
        AnswerChoice(text: 'B. x: {x}, y: {y}', isCorrect: false),
        AnswerChoice(text: 'C. x: 5, y: 10', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
  ],
  'C#_Intermediate': [
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint[] numbers = { 1, 2, 3, 4, 5 };'
          '\nforeach (int num in numbers) {'
          '\nConsole.Write(num + " ");'
          '\n}'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 1 2 3 4 5', isCorrect: true),
        AnswerChoice(text: 'B. 5 4 3 2 1', isCorrect: false),
        AnswerChoice(text: 'C. 1\n2\n3\n4\n5\n', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the using statement do in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. Declares a namespace', isCorrect: false),
        AnswerChoice(text: 'B. Imports a namespace', isCorrect: true),
        AnswerChoice(text: 'C. Allocates memory for an object', isCorrect: false),
        AnswerChoice(text: 'D. Executes a block of code repeatedly', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the StringBuilder class in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To perform mathematical calculations', isCorrect: false),
        AnswerChoice(text: 'B. To manipulate strings efficiently', isCorrect: true),
        AnswerChoice(text: 'C. To iterate over elements in a collection', isCorrect: false),
        AnswerChoice(text: 'D. To manage file input and output operations', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nstring str = "Hello, World!";'
          '\nConsole.WriteLine(str.Substring(7));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. World!', isCorrect: true),
        AnswerChoice(text: 'B. Hello,', isCorrect: false),
        AnswerChoice(text: 'C. Hello, World!', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which of the following access modifiers restricts access to members within the same assembly?',
      answerChoices: [
        AnswerChoice(text: 'A. public', isCorrect: false),
        AnswerChoice(text: 'B. private', isCorrect: false),
        AnswerChoice(text: 'C. protected', isCorrect: false),
        AnswerChoice(text: 'D. internal', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the try-catch block in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To define a method', isCorrect: false),
        AnswerChoice(text: 'B. To execute a block of code repeatedly', isCorrect: false),
        AnswerChoice(text: 'C. To handle exceptions', isCorrect: true),
        AnswerChoice(text: 'D. To perform file input and output operations', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which operator is used for null-coalescing in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. ??', isCorrect: true),
        AnswerChoice(text: 'B. ?', isCorrect: false),
        AnswerChoice(text: 'C. :', isCorrect: false),
        AnswerChoice(text: 'D. !!', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the IEnumerable interface in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To define a collection of key-value pairs', isCorrect: false),
        AnswerChoice(text: 'B. To represent a collection that can be enumerated', isCorrect: true),
        AnswerChoice(text: 'C. To manage concurrency', isCorrect: false),
        AnswerChoice(text: 'D. To define a sequence of characters', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint x = 5;'
          '\nConsole.WriteLine(x++);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: true),
        AnswerChoice(text: 'B. 6', isCorrect: false),
        AnswerChoice(text: 'C. 4', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the async and await keywords in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To define asynchronous methods and wait for their completion', isCorrect: true),
        AnswerChoice(text: 'B. To perform mathematical calculations', isCorrect: false),
        AnswerChoice(text: 'C. To define generic methods', isCorrect: false),
        AnswerChoice(text: 'D. To manage file input and output operations', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which collection type in C# does not allow duplicate elements?',
      answerChoices: [
        AnswerChoice(text: 'A. ArrayList', isCorrect: false),
        AnswerChoice(text: 'B. HashSet', isCorrect: true),
        AnswerChoice(text: 'C. Dictionary', isCorrect: false),
        AnswerChoice(text: 'D. List', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the lock statement in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To define a synchronization context for concurrent access to shared resources', isCorrect: true),
        AnswerChoice(text: 'B. To iterate over elements in a collection', isCorrect: false),
        AnswerChoice(text: 'C. To handle exceptions', isCorrect: false),
        AnswerChoice(text: 'D. To perform file input and output operations', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nstring str = "Hello, World!";'
          '\nConsole.WriteLine(str.ToUpper());'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. HELLO, WORLD!', isCorrect: true),
        AnswerChoice(text: 'B. Hello, World!', isCorrect: false),
        AnswerChoice(text: 'C. hello, world!', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the yield return statement in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To return a value from a method', isCorrect: false),
        AnswerChoice(text: 'B. To halt the execution of a method', isCorrect: false),
        AnswerChoice(text: 'C. To return each element of an enumerable one at a time', isCorrect: true),
        AnswerChoice(text: 'D. To execute a block of code repeatedly', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which LINQ operator is used to filter elements based on a condition?',
      answerChoices: [
        AnswerChoice(text: 'A. Select', isCorrect: false),
        AnswerChoice(text: 'B. Aggregate', isCorrect: false),
        AnswerChoice(text: 'C. Where', isCorrect: true),
        AnswerChoice(text: 'D. OrderBy', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the Action delegate in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To represent a method that takes no arguments and returns a value', isCorrect: false),
        AnswerChoice(text: 'B. To represent a method that takes one argument and returns a value', isCorrect: false),
        AnswerChoice(text: 'C. To represent a method that takes no arguments and does not return a value', isCorrect: true),
        AnswerChoice(text: 'D. To represent a method that takes multiple arguments and returns a value', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint[] numbers = { 1, 2, 3, 4, 5 };'
          '\nArray.Reverse(numbers);'
          '\nforeach (int num in numbers) {'
          '\nConsole.Write(num + " ");'
          '\n}'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5 4 3 2 1', isCorrect: true),
        AnswerChoice(text: 'B. 1 2 3 4 5', isCorrect: false),
        AnswerChoice(text: 'C. 5\n4\n3\n2\n1\n', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which of the following statements is true about delegates in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. Delegates are value types', isCorrect: false),
        AnswerChoice(text: 'B. Delegates cannot be used to call static methods', isCorrect: false),
        AnswerChoice(text: 'C. Delegates can hold references to one or more methods', isCorrect: true),
        AnswerChoice(text: 'D. Delegates are defined using the delegate keyword', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the ref keyword in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To specify that a parameter is passed by reference', isCorrect: true),
        AnswerChoice(text: 'B. To specify that a parameter is optional', isCorrect: false),
        AnswerChoice(text: 'C. To declare a variable', isCorrect: false),
        AnswerChoice(text: 'D. To define a method', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint[] numbers = { 1, 2, 3, 4, 5 };'
          '\nint sum = 0;'
          '\nforeach (int num in numbers) {'
          '\nsum += num;'
          '\n}'
          '\nConsole.WriteLine("Sum of numbers: " + sum);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Sum of numbers: 15', isCorrect: true),
        AnswerChoice(text: 'B. 15', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Sum of numbers: 1 2 3 4 5', isCorrect: false),
      ],
    ),
  ],
  'C#_Advanced': [
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint x = 5;'
          '\nint y = 10;'
          '\nConsole.WriteLine(x > y ? "x is greater" : "y is greater");'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. x is greater', isCorrect: false),
        AnswerChoice(text: 'B. y is greater', isCorrect: true),
        AnswerChoice(text: 'C. 10', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the async modifier in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To define an asynchronous method', isCorrect: true),
        AnswerChoice(text: 'B. To specify that a method does not return a value', isCorrect: false),
        AnswerChoice(text: 'C. To define an extension method', isCorrect: false),
        AnswerChoice(text: 'D. To specify that a class cannot be instantiated', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint[] numbers = { 1, 2, 3, 4, 5 };'
          '\nint sum = 0;'
          '\nforeach (int num in numbers) {'
          '\nif (num % 2 == 0) {'
          '\nsum += num;'
          '\n}'
          '\n}'
          '\nConsole.WriteLine("Sum of even numbers: " + sum);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Sum of even numbers: 6', isCorrect: false),
        AnswerChoice(text: 'B. Sum of even numbers: 9', isCorrect: false),
        AnswerChoice(text: 'C. Sum of even numbers: 6', isCorrect: true),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the dynamic keyword in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To specify that a variable cannot be modified', isCorrect: false),
        AnswerChoice(text: 'B. To allocate memory for an object', isCorrect: false),
        AnswerChoice(text: 'C. To declare a variable of an unknown type at compile time', isCorrect: true),
        AnswerChoice(text: 'D. To define a method that can be accessed without an instance of the class', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the yield return statement do in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. Exits the current method and returns a value', isCorrect: false),
        AnswerChoice(text: 'B. Halts the execution of the current iteration and continues with the next iteration', isCorrect: false),
        AnswerChoice(text: 'C. Returns each element of an enumerable one at a time', isCorrect: true),
        AnswerChoice(text: 'D. Raises an exception', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nstring[] names = { "Alice", "Bob", "Charlie", "David" };'
          '\nConsole.WriteLine(Array.Find(names, x => x.StartsWith("B")));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Bob', isCorrect: true),
        AnswerChoice(text: 'B. Alice', isCorrect: false),
        AnswerChoice(text: 'C. Charlie', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the using directive in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To import a namespace', isCorrect: true),
        AnswerChoice(text: 'B. To define a namespace', isCorrect: false),
        AnswerChoice(text: 'C. To manage memory allocation', isCorrect: false),
        AnswerChoice(text: 'D. To declare a variable', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nConsole.WriteLine(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Current date and time in "yyyy-MM-dd HH:mm:ss" format', isCorrect: true),
        AnswerChoice(text: 'B. Current date and time in "dd-MM-yyyy HH:mm:ss" format', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Current date and time in "MM-dd-yyyy HH:mm:ss" format', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the checked keyword in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To specify that a block of code should be executed atomically', isCorrect: false),
        AnswerChoice(text: 'B. To explicitly enable arithmetic overflow checking', isCorrect: true),
        AnswerChoice(text: 'C. To handle exceptions', isCorrect: false),
        AnswerChoice(text: 'D. To define a constant value', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint x = 10;'
          '\nConsole.WriteLine(x << 1);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: false),
        AnswerChoice(text: 'B. 20', isCorrect: true),
        AnswerChoice(text: 'C. 10', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the readonly keyword in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To specify that a variable cannot be modified', isCorrect: true),
        AnswerChoice(text: 'B. To define a constant value', isCorrect: false),
        AnswerChoice(text: 'C. To allocate memory for an object', isCorrect: false),
        AnswerChoice(text: 'D. To execute a block of code repeatedly', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nConsole.WriteLine(Math.Pow(2, 3));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 8', isCorrect: true),
        AnswerChoice(text: 'B. 6', isCorrect: false),
        AnswerChoice(text: 'C. 5', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the is keyword in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To declare a variable', isCorrect: false),
        AnswerChoice(text: 'B. To explicitly convert a value from one type to another', isCorrect: false),
        AnswerChoice(text: 'C. To check if an object is compatible with a given type', isCorrect: true),
        AnswerChoice(text: 'D. To define a constant value', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint[] numbers = { 1, 2, 3, 4, 5 };'
          '\nint sum = numbers.Aggregate((x, y) => x + y);'
          '\nConsole.WriteLine("Sum of numbers: " + sum);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Sum of numbers: 15', isCorrect: true),
        AnswerChoice(text: 'B. 15', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Sum of numbers: 1 2 3 4 5', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the Expression class in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To represent lambda expressions', isCorrect: true),
        AnswerChoice(text: 'B. To define a mathematical expression', isCorrect: false),
        AnswerChoice(text: 'C. To manage file input and output operations', isCorrect: false),
        AnswerChoice(text: 'D. To declare a variable', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nstring str = "Hello, World!";'
          '\nConsole.WriteLine(str.Contains("Hello"));'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. True', isCorrect: true),
        AnswerChoice(text: 'B. False', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the Thread.Sleep() method in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To suspend the execution of the current thread for a specified amount of time', isCorrect: true),
        AnswerChoice(text: 'B. To terminate the current thread', isCorrect: false),
        AnswerChoice(text: 'C. To resume the execution of a suspended thread', isCorrect: false),
        AnswerChoice(text: 'D. To prevent deadlock in multithreaded applications', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint x = 5;'
          '\nint y = 2;'
          '\nConsole.WriteLine(x / y);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 2.5', isCorrect: false),
        AnswerChoice(text: 'B. 3', isCorrect: false),
        AnswerChoice(text: 'C. 2', isCorrect: true),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the lock statement in C#?',
      answerChoices: [
        AnswerChoice(text: 'A. To prevent a block of code from being executed by multiple threads simultaneously', isCorrect: true),
        AnswerChoice(text: 'B. To define a synchronization context for concurrent access to shared resources', isCorrect: false),
        AnswerChoice(text: 'C. To define a method', isCorrect: false),
        AnswerChoice(text: 'D. To handle exceptions', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following C# code?'
          '\n\nusing System;'
          '\nclass Program {'
          '\nstatic void Main() {'
          '\nint x = 10;'
          '\nConsole.WriteLine(--x);'
          '\n}'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 9', isCorrect: true),
        AnswerChoice(text: 'B. 10', isCorrect: false),
        AnswerChoice(text: 'C. 11', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
  ],
  'Dart_Beginner': [
    QuizQuestion(
      questionText: 'What is Dart?',
      answerChoices: [
        AnswerChoice(text: 'A. A programming language', isCorrect: true),
        AnswerChoice(text: 'B. A data structure', isCorrect: false),
        AnswerChoice(text: 'C. A web browser', isCorrect: false),
        AnswerChoice(text: 'D. An operating system', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which company developed Dart?',
      answerChoices: [
        AnswerChoice(text: 'A. Google', isCorrect: true),
        AnswerChoice(text: 'B. Microsoft', isCorrect: false),
        AnswerChoice(text: 'C. Apple', isCorrect: false),
        AnswerChoice(text: 'D. Facebook', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What type of programming language is Dart?',
      answerChoices: [
        AnswerChoice(text: 'A. Compiled', isCorrect: true),
        AnswerChoice(text: 'B. Interpreted', isCorrect: false),
        AnswerChoice(text: 'C. Both compiled and interpreted', isCorrect: false),
        AnswerChoice(text: 'D. None of the above', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which of the following is NOT a feature of Dart?',
      answerChoices: [
        AnswerChoice(text: 'A. Strong typing', isCorrect: false),
        AnswerChoice(text: 'B. Garbage collection', isCorrect: false),
        AnswerChoice(text: 'C. Multiple inheritance', isCorrect: true),
        AnswerChoice(text: 'D. Asynchronous programming support', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the file extension for Dart files?',
      answerChoices: [
        AnswerChoice(text: 'A. .dart', isCorrect: true),
        AnswerChoice(text: 'B. .drt', isCorrect: false),
        AnswerChoice(text: 'C. .dt', isCorrect: false),
        AnswerChoice(text: 'D. .ds', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which tool is used to run Dart programs?',
      answerChoices: [
        AnswerChoice(text: 'A. Dart Compiler', isCorrect: false),
        AnswerChoice(text: 'B. Dart Runner', isCorrect: false),
        AnswerChoice(text: 'C. Dart Virtual Machine (VM)', isCorrect: true),
        AnswerChoice(text: 'D. Dart Interpreter', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the main purpose of Dart?',
      answerChoices: [
        AnswerChoice(text: 'A. Web development', isCorrect: true),
        AnswerChoice(text: 'B. Game development', isCorrect: false),
        AnswerChoice(text: 'C. Artificial intelligence', isCorrect: false),
        AnswerChoice(text: 'D. Database management', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which of the following is NOT a Dart data type?',
      answerChoices: [
        AnswerChoice(text: 'A. int', isCorrect: false),
        AnswerChoice(text: 'B. double', isCorrect: false),
        AnswerChoice(text: 'C. char', isCorrect: true),
        AnswerChoice(text: 'D. String', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What keyword is used to declare a variable in Dart?',
      answerChoices: [
        AnswerChoice(text: 'A. var', isCorrect: true),
        AnswerChoice(text: 'B. int', isCorrect: false),
        AnswerChoice(text: 'C. variable', isCorrect: false),
        AnswerChoice(text: 'D. let', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the syntax for single-line comments in Dart?',
      answerChoices: [
        AnswerChoice(text: 'A. // This is a comment', isCorrect: true),
        AnswerChoice(text: 'B. /* This is a comment */', isCorrect: false),
        AnswerChoice(text: 'C. # This is a comment', isCorrect: false),
        AnswerChoice(text: 'D. <!-- This is a comment -->', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nString name = "Dart";'
          '\nprint("Hello, \$name!");'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Hello, Dart!', isCorrect: true),
        AnswerChoice(text: 'B. Hello, name!', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the syntax for a Dart function?',
      answerChoices: [
        AnswerChoice(text: 'A. function myFunction() { }', isCorrect: false),
        AnswerChoice(text: 'B. void myFunction() { }', isCorrect: true),
        AnswerChoice(text: 'C. def myFunction() { }', isCorrect: false),
        AnswerChoice(text: 'D. procedure myFunction() { }', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the keyword void indicate in Dart?',
      answerChoices: [
        AnswerChoice(text: 'A. The function returns nothing', isCorrect: true),
        AnswerChoice(text: 'B. The function returns an integer', isCorrect: false),
        AnswerChoice(text: 'C. The function returns a string', isCorrect: false),
        AnswerChoice(text: 'D. The function returns a boolean value', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nint x = 5;'
          '\nprint(++x);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: false),
        AnswerChoice(text: 'B. 6', isCorrect: true),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which keyword is used to define a class in Dart?',
      answerChoices: [
        AnswerChoice(text: 'A. class', isCorrect: true),
        AnswerChoice(text: 'B. struct', isCorrect: false),
        AnswerChoice(text: 'C. type', isCorrect: false),
        AnswerChoice(text: 'D. interface', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nList<int> numbers = [1, 2, 3, 4, 5];'
          '\nprint(numbers.length);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: true),
        AnswerChoice(text: 'B. 6', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the main() function in Dart?',
      answerChoices: [
        AnswerChoice(text: 'A. It is the entry point of a Dart program', isCorrect: true),
        AnswerChoice(text: 'B. It is used to define global variables', isCorrect: false),
        AnswerChoice(text: 'C. It is used to declare classes', isCorrect: false),
        AnswerChoice(text: 'D. It is used to import external libraries', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the syntax for creating a list in Dart?',
      answerChoices: [
        AnswerChoice(text: 'A. var myList = [1, 2, 3];', isCorrect: true),
        AnswerChoice(text: 'B. List myList = [1, 2, 3];', isCorrect: false),
        AnswerChoice(text: 'C. List<int> myList = [1, 2, 3];', isCorrect: false),
        AnswerChoice(text: 'D. All of the above', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which operator is used for string interpolation in Dart?',
      answerChoices: [
        AnswerChoice(text: 'A. +', isCorrect: false),
        AnswerChoice(text: 'B. -', isCorrect: false),
        AnswerChoice(text: 'C. /', isCorrect: false),
        AnswerChoice(text: 'D. \$', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nbool isTrue = true;'
          '\nprint(!isTrue);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. true', isCorrect: false),
        AnswerChoice(text: 'B. false', isCorrect: true),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
  ],
  'Dart_Intermediate': [
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nList<int> numbers = [1, 2, 3, 4, 5];'
          '\nnumbers.forEach((num) => print(num * 2));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 2\n4\n6\n8\n10', isCorrect: true),
        AnswerChoice(text: 'B. 1\n2\n3\n4\n5', isCorrect: false),
        AnswerChoice(text: 'C. 3\n6\n9\n12\n15', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nint factorial(int n) {'
          '\nif (n == 0) return 1;'
          '\nreturn n * factorial(n - 1);'
          '\n}'
          '\nprint(factorial(5));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Computes the factorial of 5', isCorrect: true),
        AnswerChoice(text: 'B. Computes the square of 5', isCorrect: false),
        AnswerChoice(text: 'C. Prints the numbers from 1 to 5', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nint x = 5;'
          '\nint y = x++ * 2;'
          '\nprint(y);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 10', isCorrect: true),
        AnswerChoice(text: 'B. 12', isCorrect: false),
        AnswerChoice(text: 'C. 5', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nList<String> fruits = ["apple", "banana", "orange", "kiwi"];'
          '\nfruits.sort();'
          '\nprint(fruits);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Sorts the list of fruits in alphabetical order', isCorrect: true),
        AnswerChoice(text: 'B. Reverses the list of fruits', isCorrect: false),
        AnswerChoice(text: 'C. Prints the length of the list', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nint x = 10;'
          '\nint y = x ~/ 3;'
          '\nprint(y);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 3', isCorrect: true),
        AnswerChoice(text: 'B. 3.33', isCorrect: false),
        AnswerChoice(text: 'C. 4', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nList<int> numbers = [1, 2, 3, 4, 5];'
          '\nList<int> squares = numbers.map((num) => num * num).toList();'
          '\nprint(squares);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Computes the square of each number in the list', isCorrect: true),
        AnswerChoice(text: 'B. Reverses the list of numbers', isCorrect: false),
        AnswerChoice(text: 'C. Finds the maximum value in the list', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nint x = 10;'
          '\nint y = x.isEven ? x ~/ 2 : x * 3;'
          '\nprint(y);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: true),
        AnswerChoice(text: 'B. 15', isCorrect: false),
        AnswerChoice(text: 'C. 3', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nString text = "Hello, World!";'
          '\nString reversed = text.split("").reversed.join("");'
          '\nprint(reversed);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. "!dlroW ,olleH"', isCorrect: true),
        AnswerChoice(text: 'B. "Hello, World!"', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nList<int> numbers = [1, 2, 3, 4, 5];'
          '\nint sum = numbers.reduce((value, element) => value + element);'
          '\nprint(sum);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Computes the sum of all numbers in the list', isCorrect: true),
        AnswerChoice(text: 'B. Computes the average of all numbers in the list', isCorrect: false),
        AnswerChoice(text: 'C. Finds the maximum value in the list', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nbool isTrue = false;'
          '\nprint(!isTrue);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. true', isCorrect: true),
        AnswerChoice(text: 'B. false', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nint binaryToDecimal(String binary) {'
          '\nreturn int.parse(binary, radix: 2);'
          '\n}'
          '\nprint(binaryToDecimal("1010"));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Converts binary string to decimal integer', isCorrect: true),
        AnswerChoice(text: 'B. Converts decimal integer to binary string', isCorrect: false),
        AnswerChoice(text: 'C. Computes the factorial of a number', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nList<int> numbers = [1, 2, 3, 4, 5];'
          '\nList<int> reversedNumbers = numbers.reversed.toList();'
          '\nprint(reversedNumbers);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. [5, 4, 3, 2, 1]', isCorrect: true),
        AnswerChoice(text: 'B. [1, 2, 3, 4, 5]', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nint fib(int n) => n <= 1 ? n : fib(n - 1) + fib(n - 2);'
          '\nprint(fib(5));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Computes the nth Fibonacci number', isCorrect: true),
        AnswerChoice(text: 'B. Computes the factorial of a number', isCorrect: false),
        AnswerChoice(text: 'C. Reverses a list', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nList<int> numbers = [1, 2, 3, 4, 5];'
          '\nList<int> evenNumbers = numbers.where((num) => num % 2 == 0).toList();'
          '\nprint(evenNumbers);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. [2, 4]', isCorrect: true),
        AnswerChoice(text: 'B. [1, 3, 5]', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nint gcd(int a, int b) => b == 0 ? a : gcd(b, a % b);'
          '\nprint(gcd(12, 18));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Computes the greatest common divisor of two numbers', isCorrect: true),
        AnswerChoice(text: 'B. Computes the least common multiple of two numbers', isCorrect: false),
        AnswerChoice(text: 'C. Reverses a list', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nString text = "Hello, World!";'
          '\nString reversed = text.split("").reversed.join("");'
          '\nprint(reversed);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. "!dlroW ,olleH"', isCorrect: true),
        AnswerChoice(text: 'B. "Hello, World!"', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nint sumOfSquares(int n) => n * (n + 1) * (2 * n + 1) ~/ 6;'
          '\nprint(sumOfSquares(3));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Computes the sum of squares of first n natural numbers', isCorrect: true),
        AnswerChoice(text: 'B. Computes the factorial of a number', isCorrect: false),
        AnswerChoice(text: 'C. Computes the nth Fibonacci number', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nint x = 10;'
          '\nprint(x.isEven ? "Even" : "Odd");'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Even', isCorrect: true),
        AnswerChoice(text: 'B. Odd', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nString reverse(String str) => str.split("").reversed.join("");'
          '\nprint(reverse("hello"));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Reverses a string', isCorrect: true),
        AnswerChoice(text: 'B. Converts a string to uppercase', isCorrect: false),
        AnswerChoice(text: 'C. Converts a string to lowercase', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nList<int> numbers = [1, 2, 3, 4, 5];'
          '\nint product = numbers.fold(1, (prev, element) => prev * element);'
          '\nprint(product);'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 120', isCorrect: true),
        AnswerChoice(text: 'B. 15', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
  ],
  'Dart_Advanced': [
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nString reverseString(String str) {'
          '\nreturn str.split("").reversed.join("");'
          '\n}'
          '\nprint(reverseString("hello"));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. "olleh"', isCorrect: true),
        AnswerChoice(text: 'B. "hello"', isCorrect: false),
        AnswerChoice(text: 'C. "h e l l o"', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nList<int> fibonacci(int n) {'
          '\nList<int> sequence = [0, 1];'
          '\nfor (int i = 2; i < n; i++) {'
          '\nsequence.add(sequence[i - 1] + sequence[i - 2]);'
          '\n}'
          '\nreturn sequence;'
          '\n}'
          '\nprint(fibonacci(5));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Generates the first n Fibonacci numbers', isCorrect: true),
        AnswerChoice(text: 'B. Computes the factorial of n', isCorrect: false),
        AnswerChoice(text: 'C. Sorts a list of numbers', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nint binarySearch(List<int> arr, int target) {'
          '\nint low = 0;'
          '\nint high = arr.length - 1;'
          '\nwhile (low <= high) {'
          '\nint mid = (low + high) ~/ 2;'
          '\nif (arr[mid] == target) return mid;'
          '\nelse if (arr[mid] < target) low = mid + 1;'
          '\nelse high = mid - 1;'
          '\n}'
          '\nreturn -1;'
          '\n}'
          '\nList<int> numbers = [1, 3, 5, 7, 9];'
          '\nprint(binarySearch(numbers, 5));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 2', isCorrect: true),
        AnswerChoice(text: 'B. 3', isCorrect: false),
        AnswerChoice(text: 'C. 4', isCorrect: false),
        AnswerChoice(text: 'D. -1', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nint factorial(int n) => n == 0 ? 1 : n * factorial(n - 1);'
          '\nprint(factorial(5));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Computes the factorial of a number recursively', isCorrect: true),
        AnswerChoice(text: 'B. Computes the Fibonacci sequence', isCorrect: false),
        AnswerChoice(text: 'C. Performs a binary search', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nString longestCommonPrefix(List<String> strings) {'
          '\nif (strings.isEmpty) return "";'
          '\nString prefix = strings[0];'
          '\nfor (int i = 1; i < strings.length; i++) {'
          '\nwhile (strings[i].indexOf(prefix) != 0) {'
          '\nprefix = prefix.substring(0, prefix.length - 1);'
          '\nif (prefix.isEmpty) return "";'
          '\n}'
          '\n}'
          '\nreturn prefix;'
          '\n}'
          '\nList<String> words = ["flower", "flow", "flight"];'
          '\nprint(longestCommonPrefix(words));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. "fl"', isCorrect: true),
        AnswerChoice(text: 'B. "flow"', isCorrect: false),
        AnswerChoice(text: 'C. "flowe"', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nint power(int base, int exponent) {'
          '\nint result = 1;'
          '\nfor (int i = 0; i < exponent; i++) {'
          '\nresult *= base;'
          '\n}'
          '\nreturn result;'
          '\n}'
          '\nprint(power(2, 3));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Computes the power of a number', isCorrect: true),
        AnswerChoice(text: 'B. Computes the square root of a number', isCorrect: false),
        AnswerChoice(text: 'C. Computes the factorial of a number', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nList<int> mergeSort(List<int> arr) {'
          '\nif (arr.length <= 1) return arr;'
          '\nList<int> merge(List<int> left, List<int> right) {'
          '\nList<int> result = [];'
          '\nint i = 0, j = 0;'
          '\nwhile (i < left.length && j < right.length) {'
          '\nif (left[i] < right[j]) result.add(left[i++]);'
          '\nelse result.add(right[j++]);'
          '\n}'
          '\nwhile (i < left.length) result.add(left[i++]);'
          '\nwhile (j < right.length) result.add(right[j++]);'
          '\nreturn result;'
          '\n}'
          '\nint mid = arr.length ~/ 2;'
          '\nList<int> left = mergeSort(arr.sublist(0, mid));'
          '\nList<int> right = mergeSort(arr.sublist(mid));'
          '\nreturn merge(left, right);'
          '\n}'
          '\nList<int> numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];'
          '\nprint(mergeSort(numbers));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]', isCorrect: true),
        AnswerChoice(text: 'B. [9, 6, 5, 5, 5, 4, 3, 3, 2, 1, 1]', isCorrect: false),
        AnswerChoice(text: 'C. [1, 2, 3, 4, 5, 6, 9]', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nint binaryToDecimal(String binary) {'
          '\nint result = 0;'
          '\nfor (int i = 0; i < binary.length; i++) {'
          '\nresult = result * 2 + int.parse(binary[i]);'
          '\n}'
          '\nreturn result;'
          '\n}'
          '\nprint(binaryToDecimal("1010"));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Converts binary string to decimal integer', isCorrect: true),
        AnswerChoice(text: 'B. Converts decimal integer to binary string', isCorrect: false),
        AnswerChoice(text: 'C. Computes the factorial of a number', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nList<String> sortWords(List<String> words) {'
          '\nreturn words..sort();'
          '\n}'
          '\nList<String> wordList = ["banana", "apple", "cherry"];'
          '\nprint(sortWords(wordList));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. ["apple", "banana", "cherry"]', isCorrect: true),
        AnswerChoice(text: 'B. ["banana", "apple", "cherry"]', isCorrect: false),
        AnswerChoice(text: 'C. Compilation Error', isCorrect: false),
        AnswerChoice(text: 'D. Runtime Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nList<int> bubbleSort(List<int> arr) {'
          '\nfor (int i = 0; i < arr.length - 1; i++) {'
          '\nfor (int j = 0; j < arr.length - i - 1; j++) {'
          '\nif (arr[j] > arr[j + 1]) {'
          '\nint temp = arr[j];'
          '\narr[j] = arr[j + 1];'
          '\narr[j + 1] = temp;'
          '\n}'
          '\n}'
          '\n}'
          '\nreturn arr;'
          '\n}'
          '\nList<int> numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];'
          '\nprint(bubbleSort(numbers));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Sorts the list using bubble sort algorithm', isCorrect: true),
        AnswerChoice(text: 'B. Sorts the list using merge sort algorithm', isCorrect: false),
        AnswerChoice(text: 'C. Sorts the list using quick sort algorithm', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nString removeDuplicates(String str) {'
          '\nSet<String> charSet = str.split("").toSet();'
          '\nreturn charSet.join("");'
          '\n}'
          '\nprint(removeDuplicates("hello"));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. "helo"', isCorrect: true),
        AnswerChoice(text: 'B. "hello"', isCorrect: false),
        AnswerChoice(text: 'C. "h e l o"', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nint fibonacci(int n) {'
          '\nif (n <= 1) return n;'
          '\nreturn fibonacci(n - 1) + fibonacci(n - 2);'
          '\n}'
          '\nprint(fibonacci(5));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Computes the nth Fibonacci number recursively', isCorrect: true),
        AnswerChoice(text: 'B. Computes the factorial of a number', isCorrect: false),
        AnswerChoice(text: 'C. Sorts a list of numbers', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nString capitalize(String str) {'
          '\nreturn str[0].toUpperCase() + str.substring(1);'
          '\n}'
          '\nprint(capitalize("hello"));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. "Hello"', isCorrect: true),
        AnswerChoice(text: 'B. "hello"', isCorrect: false),
        AnswerChoice(text: 'C. "H e l l o"', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nList<int> selectionSort(List<int> arr) {'
          '\nint n = arr.length;'
          '\nfor (int i = 0; i < n - 1; i++) {'
          '\nint minIndex = i;'
          '\nfor (int j = i + 1; j < n; j++) {'
          '\nif (arr[j] < arr[minIndex]) {'
          '\nminIndex = j;'
          '\n}'
          '\n}'
          '\nint temp = arr[minIndex];'
          '\narr[minIndex] = arr[i];'
          '\narr[i] = temp;'
          '\n}'
          '\nreturn arr;'
          '\n}'
          '\nList<int> numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];'
          '\nprint(selectionSort(numbers));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Sorts the list using selection sort algorithm', isCorrect: true),
        AnswerChoice(text: 'B. Sorts the list using insertion sort algorithm', isCorrect: false),
        AnswerChoice(text: 'C. Sorts the list using bubble sort algorithm', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nString reverseWords(String str) {'
          '\nList<String> words = str.split(" ");'
          '\nList<String> reversedWords = words.map((word) => word.split("").reversed.join("")).toList();'
          '\nreturn reversedWords.join(" ");'
          '\n}'
          '\nprint(reverseWords("hello world"));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. "olleh dlrow"', isCorrect: true),
        AnswerChoice(text: 'B. "hello world"', isCorrect: false),
        AnswerChoice(text: 'C. "h e l l o w o r l d"', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nint linearSearch(List<int> arr, int target) {'
          '\nfor (int i = 0; i < arr.length; i++) {'
          '\nif (arr[i] == target) return i;'
          '\n}'
          '\nreturn -1;'
          '\n}'
          '\nList<int> numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];'
          '\nprint(linearSearch(numbers, 4));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. 2', isCorrect: true),
        AnswerChoice(text: 'B. 3', isCorrect: false),
        AnswerChoice(text: 'C. 4', isCorrect: false),
        AnswerChoice(text: 'D. -1', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nList<int> quickSort(List<int> arr) {'
          '\nif (arr.length <= 1) return arr;'
          '\nint pivot = arr[arr.length ~/ 2];'
          '\nList<int> left = [];'
          '\nList<int> right = [];'
          '\nfor (int i = 0; i < arr.length; i++) {'
          '\nif (arr[i] < pivot) left.add(arr[i]);'
          '\nelse if (arr[i] > pivot) right.add(arr[i]);'
          '\n}'
          '\nreturn [...quickSort(left), pivot, ...quickSort(right)];'
          '\n}'
          '\nList<int> numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];'
          '\nprint(quickSort(numbers));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]', isCorrect: true),
        AnswerChoice(text: 'B. [9, 6, 5, 5, 5, 4, 3, 3, 2, 1, 1]', isCorrect: false),
        AnswerChoice(text: 'C. [1, 2, 3, 4, 5, 6, 9]', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nString toBinary(int n) {'
          '\nreturn n.toRadixString(2);'
          '\n}'
          '\nprint(toBinary(10));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Converts decimal integer to binary string', isCorrect: true),
        AnswerChoice(text: 'B. Converts binary string to decimal integer', isCorrect: false),
        AnswerChoice(text: 'C. Computes the factorial of a number', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following Dart code?'
          '\n\nvoid main() {'
          '\nString reverseWordsInSentence(String sentence) {'
          '\nreturn sentence.split(" ").map((word) => word.split("").reversed.join("")).join(" ");'
          '\n}'
          '\nprint(reverseWordsInSentence("hello world"));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. "olleh dlrow"', isCorrect: true),
        AnswerChoice(text: 'B. "hello world"', isCorrect: false),
        AnswerChoice(text: 'C. "h e l l o w o r l d"', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following Dart code do?'
          '\n\nvoid main() {'
          '\nint binarySearch(List<int> arr, int target) {'
          '\nint low = 0;'
          '\nint high = arr.length - 1;'
          '\nwhile (low <= high) {'
          '\nint mid = low + (high - low) ~/ 2;'
          '\nif (arr[mid] == target) return mid;'
          '\nif (arr[mid] < target) low = mid + 1;'
          '\nelse high = mid - 1;'
          '\n}'
          '\nreturn -1;'
          '\n}'
          '\nList<int> numbers = [1, 3, 5, 7, 9];'
          '\nprint(binarySearch(numbers, 5));'
          '\n}',
      answerChoices: [
        AnswerChoice(text: 'A. Returns the index of target in the list if found, otherwise -1', isCorrect: true),
        AnswerChoice(text: 'B. Returns the maximum value in the list', isCorrect: false),
        AnswerChoice(text: 'C. Returns the minimum value in the list', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
  ],
  'PHP_Beginner': [
    QuizQuestion(
      questionText: 'What does PHP stand for?',
      answerChoices: [
        AnswerChoice(text: 'A. Personal Home Page', isCorrect: false),
        AnswerChoice(text: 'B. PHP: Hypertext Preprocessor', isCorrect: true),
        AnswerChoice(text: 'C. Preprocessed Hypertext Pages', isCorrect: false),
        AnswerChoice(text: 'D. Professional Hypertext Programming', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which symbol is used to denote the start of PHP code?',
      answerChoices: [
        AnswerChoice(text: 'A. <?php', isCorrect: true),
        AnswerChoice(text: 'B. <php>', isCorrect: false),
        AnswerChoice(text: 'C. <?>', isCorrect: false),
        AnswerChoice(text: 'D. <script>', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which function is used to output text in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. echo', isCorrect: true),
        AnswerChoice(text: 'B. print', isCorrect: false),
        AnswerChoice(text: 'C. out', isCorrect: false),
        AnswerChoice(text: 'D. display', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the correct way to comment a single line of PHP code?',
      answerChoices: [
        AnswerChoice(text: 'A. /* comment */', isCorrect: false),
        AnswerChoice(text: 'B. <!-- comment -->', isCorrect: false),
        AnswerChoice(text: 'C. # comment', isCorrect: false),
        AnswerChoice(text: 'D. // comment', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'Which variable scope in PHP is accessible from any function, class, or file?',
      answerChoices: [
        AnswerChoice(text: 'A. Local', isCorrect: false),
        AnswerChoice(text: 'B. Global', isCorrect: true),
        AnswerChoice(text: 'C. Static', isCorrect: false),
        AnswerChoice(text: 'D. Constant', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the correct way to end a PHP statement?',
      answerChoices: [
        AnswerChoice(text: 'A. ;', isCorrect: true),
        AnswerChoice(text: 'B. :', isCorrect: false),
        AnswerChoice(text: 'C. .', isCorrect: false),
        AnswerChoice(text: 'D. ,', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which PHP superglobal variable stores form data after submitting an HTML form with method="post"?',
      answerChoices: [
        AnswerChoice(text: 'A. _POST', isCorrect: true),
        AnswerChoice(text: 'B. _GET', isCorrect: false),
        AnswerChoice(text: 'C. _REQUEST', isCorrect: false),
        AnswerChoice(text: 'D. _SERVER', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which PHP function is used to create a new directory?',
      answerChoices: [
        AnswerChoice(text: 'A. mkdir()', isCorrect: true),
        AnswerChoice(text: 'B. newdir()', isCorrect: false),
        AnswerChoice(text: 'C. createDir()', isCorrect: false),
        AnswerChoice(text: 'D. makeDirectory()', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the correct way to start a session in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. startSession()', isCorrect: false),
        AnswerChoice(text: 'B. sessionStart()', isCorrect: false),
        AnswerChoice(text: 'C. session_start()', isCorrect: true),
        AnswerChoice(text: 'D. beginSession()', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which of the following PHP data types is used to store multiple values in a single variable?',
      answerChoices: [
        AnswerChoice(text: 'A. string', isCorrect: false),
        AnswerChoice(text: 'B. int', isCorrect: false),
        AnswerChoice(text: 'C. array', isCorrect: true),
        AnswerChoice(text: 'D. boolean', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the PHP function strlen() do?',
      answerChoices: [
        AnswerChoice(text: 'A. Returns the number of lines in a string', isCorrect: false),
        AnswerChoice(text: 'B. Returns the length of a string', isCorrect: true),
        AnswerChoice(text: 'C. Returns the position of the first occurrence of a substring', isCorrect: false),
        AnswerChoice(text: 'D. Converts a string to uppercase', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which PHP loop is used to execute a block of code a specified number of times?',
      answerChoices: [
        AnswerChoice(text: 'A. for', isCorrect: true),
        AnswerChoice(text: 'B. while', isCorrect: false),
        AnswerChoice(text: 'C. do-while', isCorrect: false),
        AnswerChoice(text: 'D. foreach', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\n \$ var = 5;'
          '\necho ++ \$ var;'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. 5', isCorrect: false),
        AnswerChoice(text: 'B. 6', isCorrect: true),
        AnswerChoice(text: 'C. 4', isCorrect: false),
        AnswerChoice(text: 'D. 7', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the PHP function explode() do?',
      answerChoices: [
        AnswerChoice(text: 'A. Splits a string into an array based on a delimiter', isCorrect: true),
        AnswerChoice(text: 'B. Combines array elements into a string', isCorrect: false),
        AnswerChoice(text: 'C. Reverses the characters in a string', isCorrect: false),
        AnswerChoice(text: 'D. Searches for a substring within a string', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which PHP function is used to redirect the user to a different URL?',
      answerChoices: [
        AnswerChoice(text: 'A. redirect()', isCorrect: false),
        AnswerChoice(text: 'B. header()', isCorrect: true),
        AnswerChoice(text: 'C. location()', isCorrect: false),
        AnswerChoice(text: 'D. forward()', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the PHP function isset()?',
      answerChoices: [
        AnswerChoice(text: 'A. Checks if a variable has been initialized', isCorrect: true),
        AnswerChoice(text: 'B. Checks if a variable is empty', isCorrect: false),
        AnswerChoice(text: 'C. Checks if a variable is null', isCorrect: false),
        AnswerChoice(text: 'D. Checks if a variable is defined', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the correct way to declare a PHP variable?',
      answerChoices: [
        AnswerChoice(text: 'A. \$var = 5;', isCorrect: true),
        AnswerChoice(text: 'B. var \$var = 5;', isCorrect: false),
        AnswerChoice(text: 'C. variable \$var = 5;', isCorrect: false),
        AnswerChoice(text: 'D. int var = 5;', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Which operator is used for concatenating strings in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. +', isCorrect: false),
        AnswerChoice(text: 'B. .', isCorrect: true),
        AnswerChoice(text: 'C. :', isCorrect: false),
        AnswerChoice(text: 'D. &', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the PHP function count() do?',
      answerChoices: [
        AnswerChoice(text: 'A. Returns the number of characters in a string', isCorrect: false),
        AnswerChoice(text: 'B. Returns the number of elements in an array or object', isCorrect: true),
        AnswerChoice(text: 'C. Returns the number of words in a string', isCorrect: false),
        AnswerChoice(text: 'D. Returns the number of lines in a file', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following PHP code output?'
          '\n\n<?php'
          '\n$num = 10;'
          '\necho "The number is: $num";'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. The number is: $num', isCorrect: false),
        AnswerChoice(text: 'B. The number is: 10', isCorrect: true),
        AnswerChoice(text: 'C. The number is: ', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    ),
  ],
  'PHP_Intermediate': [
    QuizQuestion(
      questionText: 'Given an array \$numbers = [3, 7, 2, 8, 4], what is the output of the following PHP code?'
          '\n\n<?php'
          '\nfunction sumOfSquares(\$arr) {'
          '\n\$total = 0;'
          '\nforeach (\$arr as $num) {'
          '\n\$total += $num * $num;'
          '\n}'
          '\nreturn \$total;'
          '\n}'
          '\necho sumOfSquares(\$numbers);'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. 174', isCorrect: true),
        AnswerChoice(text: 'B. 144', isCorrect: false),
        AnswerChoice(text: 'C. 182', isCorrect: false),
        AnswerChoice(text: 'D. 156', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\nfunction fibonacci(\$n) {'
          '\nif (\$n <= 1) return \$n;'
          '\nreturn fibonacci(\$n - 1) + fibonacci(\$n - 2);'
          '\n}'
          '\necho fibonacci(5);'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. 3', isCorrect: false),
        AnswerChoice(text: 'B. 5', isCorrect: false),
        AnswerChoice(text: 'C. 8', isCorrect: true),
        AnswerChoice(text: 'D. 13', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following PHP code output?'
          '\n\n<?php'
          '\n$num = 5;'
          '\necho ++$num * 2;'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. 12', isCorrect: true),
        AnswerChoice(text: 'B. 10', isCorrect: false),
        AnswerChoice(text: 'C. 11', isCorrect: false),
        AnswerChoice(text: 'D. 15', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Given the array \$colors = ["red", "green", "blue", "yellow"], what is the output of the following PHP code?'
          '\n\n<?php'
          '\nshuffle(\$colors);'
          '\necho \$colors[0];'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. The first element of the shuffled array', isCorrect: true),
        AnswerChoice(text: 'B. "red"', isCorrect: false),
        AnswerChoice(text: 'C. "green"', isCorrect: false),
        AnswerChoice(text: 'D. "blue"', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\nfunction isPrime($num) {'
          '\nif ($num <= 1) return false;'
          '\nfor (\$i = 2; \$i <= sqrt(\$num); \$i++) {'
          '\nif ($num % \$i == 0) return false;'
          '\n}'
          '\nreturn true;'
          '\n}'
          '\necho isPrime(11) ? "Prime" : "Not Prime";'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. Prime', isCorrect: true),
        AnswerChoice(text: 'B. Not Prime', isCorrect: false),
        AnswerChoice(text: 'C. 11', isCorrect: false),
        AnswerChoice(text: 'D. Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the result of the following PHP code?'
          '\n\n<?php'
          '\n\$var1 = "5";'
          '\n\$var2 = "10";'
          '\n\$result = \$var1 + \$var2;'
          '\necho \$result;'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. 15', isCorrect: true),
        AnswerChoice(text: 'B. "510"', isCorrect: false),
        AnswerChoice(text: 'C. "5+10"', isCorrect: false),
        AnswerChoice(text: 'D. Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following PHP code output?'
          '\n\n<?php'
          '\n\$numbers = [3, 7, 2, 8, 4];'
          '\n\$sum = array_sum(\$numbers);'
          '\n\$count = count(\$numbers);'
          '\necho \$sum / \$count;'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. 4.8', isCorrect: true),
        AnswerChoice(text: 'B. 4', isCorrect: false),
        AnswerChoice(text: 'C. 5', isCorrect: false),
        AnswerChoice(text: 'D. 4.2', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\nfunction factorial(\$n) {'
          '\nif (\$n <= 1) return 1;'
          '\nreturn \$n * factorial(\$n - 1);'
          '\n}'
          '\necho factorial(4);'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. 6', isCorrect: false),
        AnswerChoice(text: 'B. 24', isCorrect: true),
        AnswerChoice(text: 'C. 120', isCorrect: false),
        AnswerChoice(text: 'D. 720', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\nfunction isPalindrome(\$str) {'
          '\nreturn \$str === strrev(\$str);'
          '\n}'
          '\necho isPalindrome("madam") ? "Yes" : "No";'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. Yes', isCorrect: true),
        AnswerChoice(text: 'B. No', isCorrect: false),
        AnswerChoice(text: 'C. True', isCorrect: false),
        AnswerChoice(text: 'D. False', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Given the array \$numbers = [2, 4, 6, 8, 10], what is the output of the following PHP code?'
          '\n\n<?php'
          '\nfunction double(\$num) {'
          '\nreturn \$num * 2;'
          '\n}'
          '\n\$result = array_map("double", \$numbers);'
          '\necho implode(", ", \$result);'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. 4, 8, 12, 16, 20', isCorrect: true),
        AnswerChoice(text: 'B. 2, 4, 6, 8, 10', isCorrect: false),
        AnswerChoice(text: 'C. 8, 16, 24, 32, 40', isCorrect: false),
        AnswerChoice(text: 'D. Error', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\n$num = 5;'
          '\nwhile ($num > 0) {'
          '\necho $num-- . " ";'
          '\n}'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. 5 4 3 2 1', isCorrect: true),
        AnswerChoice(text: 'B. 1 2 3 4 5', isCorrect: false),
        AnswerChoice(text: 'C. 6 5 4 3 2', isCorrect: false),
        AnswerChoice(text: 'D. Infinite loop', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following PHP code output?'
          '\n\n<?php'
          '\nfunction findMax(\$arr) {'
          '\n\$max = \$arr[0];'
          '\nforeach (\$arr as \$num) {'
          '\nif (\$num > \$max) {'
          '\n\$max = \$num;'
          '\n}'
          '\n}'
          '\nreturn \$max;'
          '\n}'
          '\necho findMax([3, 7, 2, 8, 4]);'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. 3', isCorrect: false),
        AnswerChoice(text: 'B. 7', isCorrect: false),
        AnswerChoice(text: 'C. 8', isCorrect: true),
        AnswerChoice(text: 'D. 4', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\nfunction isEven(\$num) {'
          '\nreturn \$num % 2 === 0;'
          '\n}'
          '\n\$num = 5;'
          '\necho isEven(\$num) ? "Even" : "Odd";'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. Even', isCorrect: false),
        AnswerChoice(text: 'B. Odd', isCorrect: true),
        AnswerChoice(text: 'C. True', isCorrect: false),
        AnswerChoice(text: 'D. False', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\n\$colors = ["red", "green", "blue"];'
          '\nforeach (\$colors as &\$color) {'
          '\n\$color = strtoupper(\$color);'
          '\n}'
          '\necho implode(", ", \$colors);'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. RED, GREEN, BLUE', isCorrect: true),
        AnswerChoice(text: 'B. Red, Green, Blue', isCorrect: false),
        AnswerChoice(text: 'C. red, green, blue', isCorrect: false),
        AnswerChoice(text: 'D. RED GREEN BLUE', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\nfunction getFactorial(\$n) {'
          '\nif (\$n === 0) return 1;'
          '\nreturn \$n * getFactorial(\$n - 1);'
          '\n}'
          '\necho getFactorial(3);'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. 6', isCorrect: true),
        AnswerChoice(text: 'B. 3', isCorrect: false),
        AnswerChoice(text: 'C. 9', isCorrect: false),
        AnswerChoice(text: 'D. 0', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\n\$num = 5;'
          '\nswitch (\$num) {'
          '\ncase 1:'
          '\necho "One";'
          '\nbreak;'
          '\ncase 2:'
          '\necho "Two";'
          '\nbreak;'
          '\ncase 3:'
          '\necho "Three";'
          '\nbreak;'
          '\ndefault:'
          '\necho "Other";'
          '\n}'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. One', isCorrect: false),
        AnswerChoice(text: 'B. Other', isCorrect: true),
        AnswerChoice(text: 'C. Two', isCorrect: false),
        AnswerChoice(text: 'D. Three', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What does the following PHP code output?'
          '\n\n<?php'
          '\n\$numbers = [3, 7, 2, 8, 4];'
          '\nrsort(\$numbers);'
          '\necho \$numbers[0];'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. 8', isCorrect: true),
        AnswerChoice(text: 'B. 3', isCorrect: false),
        AnswerChoice(text: 'C. 7', isCorrect: false),
        AnswerChoice(text: 'D. 4', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\nfunction isPerfectSquare(\$num) {'
          '\nreturn floor(sqrt(\$num)) == ceil(sqrt(\$num));'
          '\n}'
          '\necho isPerfectSquare(16) ? "Yes" : "No";'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. Yes', isCorrect: true),
        AnswerChoice(text: 'B. No', isCorrect: false),
        AnswerChoice(text: 'C. True', isCorrect: false),
        AnswerChoice(text: 'D. False', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\nfunction reverseString(\$str) {'
          '\nreturn strrev(\$str);'
          '\n}'
          '\necho reverseString("hello");'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. hello', isCorrect: false),
        AnswerChoice(text: 'B. olleh', isCorrect: true),
        AnswerChoice(text: 'C. h', isCorrect: false),
        AnswerChoice(text: 'D. o', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the output of the following PHP code?'
          '\n\n<?php'
          '\nfunction reverseWords(\$str) {'
          '\nreturn implode(" ", array_reverse(explode(" ", \$str)));'
          '\n}'
          '\necho reverseWords("hello world");'
          '\n?>',
      answerChoices: [
        AnswerChoice(text: 'A. world hello', isCorrect: true),
        AnswerChoice(text: 'B. hello world', isCorrect: false),
        AnswerChoice(text: 'C. dlorw olleh', isCorrect: false),
        AnswerChoice(text: 'D. Compilation Error', isCorrect: false),
      ],
    )


  ],
  'PHP_Advanced': [QuizQuestion(
    questionText: 'What is the purpose of using PHP namespaces?',
    answerChoices: [
      AnswerChoice(text: 'A. To avoid naming conflicts between classes, functions, and constants', isCorrect: true),
      AnswerChoice(text: 'B. To optimize memory usage in PHP applications', isCorrect: false),
      AnswerChoice(text: 'C. To enable cross-origin resource sharing (CORS)', isCorrect: false),
      AnswerChoice(text: 'D. To encrypt sensitive data transmitted over the network', isCorrect: false),
    ],
  ),
    QuizQuestion(
      questionText: 'What are traits in PHP and how are they used?',
      answerChoices: [
        AnswerChoice(text: 'A. Traits are a mechanism for code reuse in single inheritance languages like PHP, allowing the composition of methods from multiple sources into a single class', isCorrect: true),
        AnswerChoice(text: 'B. Traits are used for type hinting in PHP, ensuring that only specific types of values are accepted as function arguments', isCorrect: false),
        AnswerChoice(text: 'C. Traits are used to define abstract classes in PHP, providing a blueprint for creating objects', isCorrect: false),
        AnswerChoice(text: 'D. Traits are used for error handling in PHP, allowing developers to catch and handle exceptions gracefully', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Explain the difference between abstract classes and interfaces in PHP.',
      answerChoices: [
        AnswerChoice(text: 'A. Abstract classes can contain both abstract and concrete methods, while interfaces can only contain method signatures', isCorrect: false),
        AnswerChoice(text: 'B. Abstract classes can be instantiated directly, while interfaces cannot be instantiated and must be implemented by concrete classes', isCorrect: false),
        AnswerChoice(text: 'C. Abstract classes can have visibility modifiers on their methods, while interfaces cannot have any method visibility modifiers', isCorrect: false),
        AnswerChoice(text: 'D. Abstract classes can provide partial implementation of methods, while interfaces provide a contract that concrete classes must adhere to without specifying any implementation', isCorrect: true),
      ],
    ),
    QuizQuestion(
      questionText: 'What is late static binding in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. Late static binding allows static methods to be overridden by child classes at runtime', isCorrect: true),
        AnswerChoice(text: 'B. Late static binding refers to the process of dynamically binding static variables to values during program execution', isCorrect: false),
        AnswerChoice(text: 'C. Late static binding allows access to the current class name within a static method using the self keyword', isCorrect: false),
        AnswerChoice(text: 'D. Late static binding enables the creation of anonymous classes in PHP', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the __invoke() magic method in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. To define a method that will be called when an object is treated as a function', isCorrect: true),
        AnswerChoice(text: 'B. To define a method that will be called when an object is cloned using the clone keyword', isCorrect: false),
        AnswerChoice(text: 'C. To define a method that will be called when an object is serialized using the serialize() function', isCorrect: false),
        AnswerChoice(text: 'D. To define a method that will be called when an object is converted to a string using the strval() function', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the __toString() magic method in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. To define how an object should be represented as a string when directly output or converted to a string using echo or print', isCorrect: true),
        AnswerChoice(text: 'B. To define how an object should be compared with other objects using the equality operator (==)', isCorrect: false),
        AnswerChoice(text: 'C. To define how an object should be serialized into a string representation using the serialize() function', isCorrect: false),
        AnswerChoice(text: 'D. To define how an object should be cloned using the clone keyword', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What are anonymous classes in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. Anonymous classes are classes without a named identifier, often used for one-off object instantiation and implementation of interfaces', isCorrect: true),
        AnswerChoice(text: 'B. Anonymous classes are classes that cannot have any properties, only methods', isCorrect: false),
        AnswerChoice(text: 'C. Anonymous classes are classes that cannot be extended or implemented by other classes', isCorrect: false),
        AnswerChoice(text: 'D. Anonymous classes are classes that do not support method overloading or overriding', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the finally block in a PHP try-catch-finally statement?',
      answerChoices: [
        AnswerChoice(text: 'A. The finally block is executed regardless of whether an exception is thrown or caught, allowing for cleanup operations such as closing database connections or releasing resources', isCorrect: true),
        AnswerChoice(text: 'B. The finally block is executed only if an exception is thrown, allowing for custom error handling logic', isCorrect: false),
        AnswerChoice(text: 'C. The finally block is executed only if an exception is caught, allowing for graceful error recovery', isCorrect: false),
        AnswerChoice(text: 'D. The finally block is executed before the try block, allowing for pre-execution setup operations', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the yield keyword in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. The yield keyword is used to create a generator function, allowing for lazy evaluation of large data sets', isCorrect: true),
        AnswerChoice(text: 'B. The yield keyword is used to interrupt the execution of a loop and return control to the calling function', isCorrect: false),
        AnswerChoice(text: 'C. The yield keyword is used to concatenate strings within a loop without creating intermediate variables', isCorrect: false),
        AnswerChoice(text: 'D. The yield keyword is used to throw an exception and halt the execution of a function', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the Generator class in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. The Generator class provides an interface for defining custom generators in PHP', isCorrect: false),
        AnswerChoice(text: 'B. The Generator class is a built-in class used to create iterator objects with the yield keyword', isCorrect: true),
        AnswerChoice(text: 'C. The Generator class provides utility methods for performing operations on arrays in PHP', isCorrect: false),
        AnswerChoice(text: 'D. The Generator class is used to manage session data and maintain user state in PHP web applications', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the use keyword in PHP closures?',
      answerChoices: [
        AnswerChoice(text: 'A. The use keyword is used to import namespaces within a closure, allowing access to external variables and functions', isCorrect: false),
        AnswerChoice(text: 'B. The use keyword is used to bind variables from the parent scope to the closure, allowing them to be accessed within the closure', isCorrect: true),
        AnswerChoice(text: 'C. The use keyword is used to specify the visibility of methods and properties within a closure', isCorrect: false),
        AnswerChoice(text: 'D. The use keyword is used to define custom error handling logic for exceptions thrown within a closure', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'Explain the purpose of the ArrayAccess interface in PHP.',
      answerChoices: [
        AnswerChoice(text: 'A. The ArrayAccess interface allows objects to be accessed like arrays using array notation (\$obj[\$key]), providing methods for reading, writing, and checking for the existence of array keys', isCorrect: true),
        AnswerChoice(text: 'B. The ArrayAccess interface provides a way to define custom comparison logic for objects using the equality operator (==)', isCorrect: false),
        AnswerChoice(text: 'C. The ArrayAccess interface allows objects to be serialized into a string representation using the serialize() function', isCorrect: false),
        AnswerChoice(text: 'D. The ArrayAccess interface provides a way to define custom error handling logic for array operations performed on objects', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the SplObserver and SplSubject interfaces in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. The SplObserver and SplSubject interfaces are used to implement the observer design pattern, allowing objects to subscribe to and be notified of changes in the state of other objects', isCorrect: true),
        AnswerChoice(text: 'B. The SplObserver and SplSubject interfaces are used to define custom iterators for traversing data structures in PHP', isCorrect: false),
        AnswerChoice(text: 'C. The SplObserver and SplSubject interfaces are used to implement the singleton design pattern, ensuring that only one instance of a class is created', isCorrect: false),
        AnswerChoice(text: 'D. The SplObserver and SplSubject interfaces are used to handle exceptions thrown during file input/output operations in PHP', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the ReflectionClass class in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. The ReflectionClass class is used to retrieve information about classes, such as properties, methods, and interfaces implemented by a class, at runtime', isCorrect: true),
        AnswerChoice(text: 'B. The ReflectionClass class is used to validate and sanitize user input in PHP web applications', isCorrect: false),
        AnswerChoice(text: 'C. The ReflectionClass class is used to serialize and deserialize objects into string representations in PHP', isCorrect: false),
        AnswerChoice(text: 'D. The ReflectionClass class is used to define custom comparison logic for objects using the equality operator (==)', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the SessionHandlerInterface in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. The SessionHandlerInterface is used to define custom session management logic, such as storing session data in a database or external storage system', isCorrect: true),
        AnswerChoice(text: 'B. The SessionHandlerInterface is used to define custom error handling logic for PHP sessions', isCorrect: false),
        AnswerChoice(text: 'C. The SessionHandlerInterface is used to define custom authentication and authorization logic for PHP web applications', isCorrect: false),
        AnswerChoice(text: 'D. The SessionHandlerInterface is used to define custom comparison logic for session data stored in PHP session files', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the DOMDocument class in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. The DOMDocument class is used to create and manipulate XML documents in PHP, providing methods for creating, editing, and querying XML elements', isCorrect: true),
        AnswerChoice(text: 'B. The DOMDocument class is used to define custom document object models (DOMs) for HTML documents in PHP web applications', isCorrect: false),
        AnswerChoice(text: 'C. The DOMDocument class is used to parse and validate XML documents against a Document Type Definition (DTD) in PHP', isCorrect: false),
        AnswerChoice(text: 'D. The DOMDocument class is used to generate HTML documents from PHP data structures using predefined templates', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the ZipArchive class in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. The ZipArchive class is used to create, open, and manipulate ZIP archives in PHP, providing methods for adding, extracting, and deleting files from ZIP archives', isCorrect: true),
        AnswerChoice(text: 'B. The ZipArchive class is used to compress and decompress data using the ZIP compression algorithm in PHP', isCorrect: false),
        AnswerChoice(text: 'C. The ZipArchive class is used to encrypt and decrypt files and data stored in ZIP archives in PHP', isCorrect: false),
        AnswerChoice(text: 'D. The ZipArchive class is used to manage user sessions and session data in PHP web applications', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the PDO class in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. The PDO class is used to connect to and interact with databases in PHP using a consistent interface, providing methods for executing SQL queries and retrieving results', isCorrect: true),
        AnswerChoice(text: 'B. The PDO class is used to parse and evaluate dynamically generated SQL queries in PHP', isCorrect: false),
        AnswerChoice(text: 'C. The PDO class is used to perform server-side validation and sanitization of user input in PHP web applications', isCorrect: false),
        AnswerChoice(text: 'D. The PDO class is used to generate HTML forms and handle form submissions in PHP web applications', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the SplPriorityQueue class in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. The SplPriorityQueue class is used to implement priority queues in PHP, allowing elements to be inserted and removed based on their priority values', isCorrect: true),
        AnswerChoice(text: 'B. The SplPriorityQueue class is used to implement first-in-first-out (FIFO) queues in PHP, ensuring that elements are processed in the order they were added', isCorrect: false),
        AnswerChoice(text: 'C. The SplPriorityQueue class is used to implement last-in-first-out (LIFO) stacks in PHP, ensuring that the most recently added elements are processed first', isCorrect: false),
        AnswerChoice(text: 'D. The SplPriorityQueue class is used to implement associative arrays in PHP, allowing elements to be accessed using keys rather than numeric indices', isCorrect: false),
      ],
    ),
    QuizQuestion(
      questionText: 'What is the purpose of the Reflection class in PHP?',
      answerChoices: [
        AnswerChoice(text: 'A. The Reflection class provides a set of built-in functions for introspecting classes, functions, and methods in PHP, allowing developers to extract metadata about code at runtime', isCorrect: true),
        AnswerChoice(text: 'B. The Reflection class is used to serialize and deserialize objects into string representations in PHP', isCorrect: false),
        AnswerChoice(text: 'C. The Reflection class is used to manage user sessions and session data in PHP web applications', isCorrect: false),
        AnswerChoice(text: 'D. The Reflection class is used to validate and sanitize user input in PHP web applications', isCorrect: false),
      ],
    )

  ],


};

List<QuizQuestion> getQuestionsForCategoryAndLevel(
    String category, String expertiseLevel) {
  final key = '$category' + '_' + '$expertiseLevel';
  if (questionsMap.containsKey(key)) {
    // Retrieve the list of questions for the specified category and expertise level
    List<QuizQuestion> shuffledQuestions = List.from(questionsMap[key]!);
    // Shuffle the list of questions
    shuffledQuestions.shuffle();
    return shuffledQuestions;
  } else {
    throw ArgumentError('Invalid category or expertise level');
  }
}
