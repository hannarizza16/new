import 'package:first_project/enums/enums.dart';

const dartCodex = {
  Languages.dart: {
    Categories.beginner: {
      0: {
        'topic': "1.     Introduction to Dart",
        'subTopic': [
          {
            'heading': "Introduction to Dart",
            'body':
                "This page provides a brief introduction to the Dart language through samples of its main features."
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
            'body':
                "We recommend specifying the types of each function's arguments and return value:"
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
            'body':
                "Mixins are a way of reusing code in multiple class hierarchies. The following is a mixin declaration:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_14.png",
            'body':
                "To add a mixin's capabilities to a class, just extend the class with the mixin."
          },
          {
            'heading': "Interfaces and abstract classes",
            'attachment': "assets/dart_beginner/intro_15.png",
            'body':
                "All classes implicitly define an interface. Therefore, you can implement any class."
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
            'body':
                "Avoid callback hell and make your code much more readable by using async and await."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_18.png",
            'body': "The method above is equivalent to:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_19.png",
            'body':
                "As the next example shows, async and await help make asynchronous code easy to read."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_20.png",
            'body':
                "You can also use async*, which gives you a nice, readable way to build streams."
          },
          {
            'heading': "Exceptions ",
            'attachment': "assets/dart_beginner/intro_21.png",
            'body': "To raise an exception, use throw:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/intro_22.png",
            'body':
                "To catch an exception, use a try statement with on or catch (or both):"
          },
        ]
      },
      1: {
        'topic': '2.     Syntax Basis',
        'subTopic': [
          {
            'heading': "Variables",
            'attachment': "assets/dart_beginner/var_1.png",
            'body':
                "Here's an example of creating a variable and initializing it:"
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
            'body':
                "Another option is to explicitly declare the type that would be inferred:"
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
            'body':
                "With null safety, you must initialize the values of non-nullable variables before you use them:"
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
            'body':
                "Here's an example of creating and setting a final variable:"
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
        'subTopic': [
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
            'body':
                "Dart supports the usual arithmetic operators, as shown in the following table."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_5.png",
            'body': "Example:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_6.png",
            'body':
                "Dart also supports both prefix and postfix increment and decrement operators."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_7.png",
            'body': "Example:"
          },
          {
            'heading': "Equality and relational operators ",
            'attachment': "assets/dart_beginner/op_8.png",
            'body':
                "The following table lists the meanings of equality and relational operators."
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
            'body':
                "The as, is, and is! operators are handy for checking types at runtime."
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
            'body':
                "If you aren't sure that the object is of type T, then use is T to check the type before using the obje"
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
            'body':
                "Compound assignment operators such as += combine an operation with an assignment."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_15.png",
            'body': "Here's how compound assignment operators work:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_16.png",
            'body':
                "The following example uses assignment and compound assignment operators:"
          },
          {
            'heading': "Logical operators ",
            'attachment': "assets/dart_beginner/op_17.png",
            'body':
                "You can invert or combine boolean expressions using the logical operators."
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
            'body':
                "If the boolean expression tests for null, consider using ??."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/op_23.png",
            'body':
                "The previous example could have been written at least two other ways, but not as succinctly:"
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
            'body':
                "You've seen most of the remaining operators in other examples:"
          },
        ]
      },
      3: {
        'topic': '4.     Comments',
        'subTopic': [
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
        'subTopic': [
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
            'body':
                "If you want to use only part of a library, you can selectively import the library. For example:"
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
            'body':
                "To lazily load a library, you must first import it using deferred as."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/lib_5.png",
            'body':
                "When you need the library, invoke loadLibrary() using the library's identifier."
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
            'body':
                "To specify library-level doc comments or metadata annotations, attach them to a library declaration at the start of the file."
          },
        ]
      },
      6: {
        'topic': '7.     Keywords',
        'subTopic': [
          {
            'heading': "Keywords ",
            'attachment': "assets/dart_beginner/key_1.png",
            'body':
                "The following table lists the words that the Dart language treats specially."
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
            'body':
                "If a number includes a decimal, it is a double. Here are some examples of defining double literals:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_3.png",
            'body':
                "You can also declare a variable as a num. If you do this, the variable can have both integer and double values."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_4.png",
            'body':
                "Integer literals are automatically converted to doubles when necessary:"
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
            'body':
                "A Dart string (String object) holds a sequence of UTF-16 code units. You can use either single or double quotes to"
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
            'body':
                "You can concatenate strings using adjacent string literals or the + operator:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/bit_11.png",
            'body':
                "To create a multi-line string, use a triple quote with either single or double quotation marks:"
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
            'body':
                "The output, depending on your environment, looks something like this:"
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
            'body':
                "Records expressions are comma-delimited lists of named or positional fields, enclosed in parentheses:"
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
            'body':
                "Fields in record expressions and type annotations mirror how parameters and arguments work in functions. Positional"
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
            'body':
                "The names of named fields in a record type are part of the record's type definition, or its shape. Two records with named"
                    "fields with different names have different types:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/rec_6.png",
            'body':
                "In a record type annotation, you can also name the positional fields, but these names are purely for documentation and"
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
            'body':
                "Records allow functions to return multiple values bundled together. To retrieve record values from a return, destructure"
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
            'body':
                "Dart has built-in support for list, set, and map collections. To learn more about configuring the types collections contain, check out Generics."
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
            'body':
                "You can add a comma after the last item in a Dart collection literal. This trailing comma doesn't affect the collection, but"
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
            'body':
                "To create a list that's a compile-time constant, add const before the list literal:"
          },
          {
            'heading': "Sets ",
            'attachment': "assets/dart_beginner/col_5.png",
            'body':
                "A set in Dart is an unordered collection of unique items. Dart support for sets is provided by set literals and the Set type."
                    "Here is a simple Dart set, created using a set literal:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_6.png",
            'body':
                "To create an empty set, use {} preceded by a type argument, or assign {} to a variable of type Set:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_7.png",
            'body':
                "Add items to an existing set using the add() or addAll() methods:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_8.png",
            'body': "Use .length to get the number of items in the set:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_9.png",
            'body':
                "To create a set that's a compile-time constant, add const before the set literal:"
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
            'body':
                "Add a new key-value pair to an existing map using the subscript assignment operator ([]=):"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_13.png",
            'body':
                "Retrieve a value from a map using the subscript operator ([]):"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_14.png",
            'body':
                "If you look for a key that isn't in a map, you get null in return:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_15.png",
            'body':
                "Use .length to get the number of key-value pairs in the map:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/col_16.png",
            'body':
                "To create a map that's a compile-time constant, add const before the map literal:"
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
            'body':
                "If the expression to the right of the spread operator might be null, you can avoid exceptions by using a null-aware spread operator (...?):"
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
            'body':
                "Here's an example of using collection for to manipulate the items of a list before adding them to another list:"
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
            'body':
                "You discover that you want a string-specific version of this interface, so you create another interface:"
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
            'body':
                "To specify one or more types when using a constructor, put the types in angle brackets (<...>) just after the class name."
                    "\n\nFor example:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/gen_6.png",
            'body':
                "The following code creates a map that has integer keys and values of type View:"
          },
          {
            'heading': "Generic collections and the types they contain ",
            'attachment': "assets/dart_beginner/gen_7.png",
            'body':
                "Dart generic types are reified, which means that they carry their type information around at runtime. For example, you"
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
            'body':
                "You can use extends with other types besides Object. Here's an example of extending SomeBaseClass, so that"
                    "members of SomeBaseClass can be called on objects of type T:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/gen_10.png",
            'body':
                "It's OK to use SomeBaseClass or any of its subtypes as the generic argument:"
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
            'body':
                "We recommend using inline function types instead of typedefs for functions, in most situations. However, func"
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
            'body':
                "Most of the rules for static types are easy to understand. Here are some of the less obvious rules:"
                    "\n\n•Use sound return types when overriding methods."
                    "\n\n•Use sound parameter types when overriding methods"
                    "\n\n•Don't use a dynamic list as a typed list."
          },
          {
            'heading': "Use sound return types when overriding methods ",
            'attachment': "assets/dart_beginner/sys_4.png",
            'body':
                "The return type of a method in a subclass must be the same type or a subtype of the return type of the method in the superclass. Consider the getter method in the Animal class:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_5.png",
            'body':
                "The parent getter method returns an Animal. In the HoneyBadger subclass, you can replace the getter's return type with HoneyBadger (or any other subtype of Animal), but an unrelated type is not allowed."
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
            'body':
                "The chase() method takes an Animal. A HoneyBadger chases anything. It's OK to override the chase() method to take anything (Object)."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_10.png",
            'body':
                "The following code tightens the parameter on the chase() method from Animal to Mouse, a subclass of Animal."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_11.png",
            'body':
                "This code is not type safe because it would then be possible to define a cat and send it after an alligator:"
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
            'body':
                "Alternatively, you can use var or final and let Dart infer the type:"
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
            'body':
                "When assigning objects to objects, when can you replace a type with a different type? The answer depends on whether"
                    "the object is a consumer or a producer."
                    "\nConsider the following type hierarchy:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_20.png",
            'body':
                "Consider the following simple assignment where Cat c is a consumer and Cat() is a producer:"
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
            'body':
                "In the following example, you can assign a MaineCoon list to myCats because List<MaineCoon> is a subtype of List<Cat>:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/sys_26.png",
            'body':
                "What about going in the other direction? Can you assign an Animal list to a List<Cat>?"
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
            'body':
                "When overriding a method, the producer and consumer rules still apply. For example:"
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
            'body':
                "You can use patterns in several places in the Dart language:"
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
            'body':
                "Logical-or patterns are useful for having multiple cases share a body in switch expressions or statements:"
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
            'body':
                "Map and list patterns work well for destructuring key-value pairs in JSON data:"
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
            'body':
                "A cast pattern lets you insert a type cast in the middle of destructuring, before passing the value to another subpattern:"
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
            'body':
                "To eliminate null values from variable declaration patterns, use the null-assert pattern:"
          },
          {
            'heading': "Constant ",
            'attachment': "assets/dart_beginner/p_8.png",
            'body': "123, null, 'string', math.pi, SomeClass.constant, const Thing(1, 2), const (1 + 2)"
                "Constant patterns match when the value is equal to the constant:"
                "You can use simple literals and references to named constants directly as constant patterns:"
                "\n\nYou can use simple literals and references to named constants directly as constant patterns:"
                "\n\n•Number literals (123, 45.56)"
                "\n\n•Boolean literals (true)"
                "\n\n•String literals ('string')"
                "\n\n•Named constants (someConstant, math.pi, double.infinity)"
                "\n\n•Constant constructors (const Point(0, 0))"
                "\n\n•Constant collection literals (const [], const {1, 2})"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/p_9.png",
            'body':
                "More complex constant expressions must be parenthesized and prefixed with const (const (1 + 2)):"
          },
          {
            'heading': "Variable ",
            'attachment': "assets/dart_beginner/p_10.png",
            'body': "Variable patterns bind new variables to values that have been matched or destructured. "
                "They usually occur as part of a destructuring pattern to capture a destructured value."
                "\n\nThe variables are in scope in a region of code that is only reachable when the pattern has matched."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/p_11.png",
            'body':
                "A typed variable pattern only matches if the matched value has the declared type, and fails otherwise:"
          },
          {
            'heading': "Identifier ",
            'attachment': "assets/dart_beginner/p_12.png",
            'body': "Identifier patterns may behave like a constant pattern or like a variable pattern, depending on the context where they appear:"
            "\n\n•Declaration context: declares a new variable with identifier name: var (a, b) = (1, 2);"
            "\n\n•Assignment context: assigns to existing variable with identifier name: (a, b) = (3, 4);"
            "\n\n•Matching context: treated as a named constant pattern (unless its name is _):"
            "\n\n•Wildcard identifier in any context: matches any value and discards it: case [_, var y, _]: print('The middle element is Sy');"
          },
          {
            'heading': "Parenthesized ",
            'attachment': "assets/dart_beginner/p_13.png",
            'body': "Like parenthesized expressions, parentheses in a pattern let you control pattern precedence and "
                "insert a lower-precedence pattern where a higher precedence one is expected."
            "\n\nFor example, imagine the boolean constants x, y, and z are equal to true, true, and false, respectively:"
            "\n\nIn the first case, the logical-and pattern y && z evaluates first because logical-and patterns have higher precedence than logical-or. In the next case, "
                "the logical-or pattern is parenthesized. It evaluates first, which results in a different match."
          },
          {
            'heading': "List ",
            'attachment': "assets/dart_beginner/p_14.png",
            'body': "A list pattern matches values that implement List, and then recursively matches its subpatterns against the list's elements to destructure them by position:"
          },
          {
            'heading': "Rest element ",
            'attachment': "assets/dart_beginner/p_15.png",
            'body': "List patterns can contain one rest element (...) which allows matching lists of arbitrary lengths."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/p_16.png",
            'body': "A rest element can also have a subpattern that collects elements that don't match the other subpatterns in the list, into a new list:"
          },
          {
            'heading': "Map ",
            'attachment': "",
            'body': "Map patterns match values that implement Map, and then recursively match its subpatterns against the map's keys to destructure them."
            "\n\nMap patterns don't require the pattern to match the entire map. A map pattern ignores any keys that the map contains that aren't matched by the pattern."
          },
          {
            'heading': "Record ",
            'attachment': "assets/dart_beginner/p_17.png",
            'body': "Record patterns match a record object and destructure its fields. If the value isn't a record with the same shape as the pattern, the match fails. Otherwise, "
                "the field subpatterns are matched against the corresponding fields in the record."
            "\nRecord patterns require that the pattern match the entire record. "
                "To destructure a record with named fields using a pattern, include the field names in the pattern:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/p_18.png",
            'body': "The getter name can be omitted and inferred from the "
                "variable pattern or identifier pattern in the field subpattern. These pairs of patterns are each equivalent:"
          },
          {
            'heading': "Object ",
            'attachment': "assets/dart_beginner/p_19.png",
            'body': "Object patterns check the matched value against a given named type to "
                "destructure data using getters on the object's properties. They are refuted if the value doesn't have the same type."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/p_20.png",
            'body': "The getter name can be omitted and inferred from the variable pattern or identifier pattern in the field subpattern:"
          },
          {
            'heading': "Wildcard ",
            'attachment': "assets/dart_beginner/p_21.png",
            'body': "A pattern named _ is a wildcard, either a variable pattern or identifier pattern, that doesn't bind or assign to any variable."
            "\n\nIt's useful as a placeholder in places where you need a subpattern in order to destructure later positional values"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/p_22.png",
            'body': "A wildcard name with a type annotation is useful when you want to test a value's type but not bind the value to a name:"
          },

        ]
      },
      15: {
        'topic': '16.     Functions',
        'subTopic':[
          {
            'heading': "Functions ",
            'attachment': "assets/dart_beginner/fun_1.png",
            'body': "Dart is a true object-oriented language, so even functions are objects and have a type, Function"
            "\n\nHere's an example of implementing a function:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_2.png",
            'body': "Although Effective Dart recommends type annotations for public APIs, the function still works if you omit the types:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_3.png",
            'body': "For functions that contain just one expression, you can use a shorthand syntax:"
          },
          {
            'heading': "Named parameters ",
            'attachment': "assets/dart_beginner/fun_4.png",
            'body': "Named parameters are optional unless they're explicitly marked as required."
            "When defining a function, use {param1, param2, …} to specify named parameters. "
                "If you don't provide a default value or mark a named parameter as required, their types must be nullable as their default value will be null:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_5.png",
            'body': "When calling a function, you can specify named arguments using paramName: value. "
                "\n\nFor example:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_6.png",
            'body': "To define a default value for a named parameter besides null, use = to specify a default value. The specified value must be a compile-time constant. "
                "\n\nFor example:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_7.png",
            'body': "If you instead want a named parameter to be mandatory, requiring callers to provide a value for the parameter, annotate them with required:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_8.png",
            'body': "You might want to place positional arguments first, but Dart doesn't require it. "
                "Dart allows named arguments to be placed anywhere in the argument list when it suits your API:"
          },
          {
            'heading': "Optional positional parameters ",
            'attachment': "assets/dart_beginner/fun_9.png",
            'body': "Wrapping a set of function parameters in [] marks them as optional positional parameters. "
                "If you don't provide a default value, their types must be nullable as their default value will be null:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_10.png",
            'body': "Here's an example of calling this function without the optional parameter:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_11.png",
            'body': "And here's an example of calling this function with the third parameter:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_12.png",
            'body': "To define a default value for an optional positional parameter besides null, use = to specify a default value. "
                "The specified value must be a compile-time constant. For example:"
          },
          {
            'heading': "The main() function ",
            'attachment': "assets/dart_beginner/fun_13.png",
            'body': "Every app must have a top-level main() function, which serves as the entrypoint to the app. "
                "The main() function returns void and has an optional List<String> parameter for arguments."
            "\n\nHere's a simple main() function:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_14.png",
            'body': "Here's an example of the main() function for a command-line app that takes arguments:"
          },
          {
            'heading': "Functions as first-class objects ",
            'attachment': "assets/dart_beginner/fun_15.png",
            'body': "You can pass a function as a parameter to another function. "
                "\n\nFor example:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_16.png",
            'body': "You can also assign a function to a variable, such as:"
          },
          {
            'heading': "Anonymous functions",
            'attachment': "assets/dart_beginner/fun_17.png",
            'body': "An anonymous function looks similar to a named function—zero or more parameters, "
                "separated by commas and optional type annotations, between parentheses."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_18.png",
            'body': "Click Run to execute the code"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_19.png",
            'body': "If the function contains only a single expression or return statement, "
                "you can shorten it using arrow notation. Paste the following line into DartPad and click Run to verify that it is functionally equivalent."
          },
          {
            'heading': "Lexical scope ",
            'attachment': "assets/dart_beginner/fun_20.png",
            'body': "Dart is a lexically scoped language, which means that the scope of variables is determined statically, simply by the layout of the code. "
                "You can follow the curly braces outwards to see if a variable is in scope."
            "\n\nHere is an example of nested functions with variables at each scope level:"
          },
          {
            'heading': "Lexical closures ",
            'attachment': "assets/dart_beginner/fun_21.png",
            'body': "A closure is a function object that has access to variables in its lexical scope, even when the function is used outside of its original scope."
            "\n\nFunctions can close over variables defined in surrounding scopes. In the following example, "
                "makeAdder() captures the variable addBy. Wherever the returned function goes, it remembers addBy."
          },
          {
            'heading': "Testing functions for equality ",
            'attachment': "assets/dart_beginner/fun_22.png",
            'body': "Here's an example of testing top-level functions, static methods, and instance methods for equality:"
          },
          {
            'heading': "Return values ",
            'attachment': "assets/dart_beginner/fun_23.png",
            'body': "All functions return a value. If no return value is specified, the statement return null; is implicitly appended to the function body."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_24.png",
            'body': "To return multiple values in a function, aggregate the values in a record."
          },
          {
            'heading': "Generators ",
            'attachment': "assets/dart_beginner/fun_25.png",
            'body': "When you need to lazily produce a sequence of values, consider using a generator function. Dart has built-in support for two kinds of generator functions:"
            "\n\n•Synchronous generator: Returns an Iterable object."
            "\n\n•Asynchronous generator: Returns a Stream object."
            "\n\n\nTo implement a synchronous generator function, mark the function body as sync*, and use yield statements to deliver values:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_26.png",
            'body': "To implement an asynchronous generator function, mark the function body as async*, and use yield statements to deliver values:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/fun_27.png",
            'body': "If your generator is recursive, you can improve its performance by using yield*:"
          },
          {
            'heading': "External functions ",
            'attachment': "assets/dart_beginner/fun_28.png",
            'body': "An external function is a function whose body is implemented separately from its declaration. "
                "Include the external keyword before a function declaration, like so:"
          },


        ]
      },
      16: {
        'topic': '17.     Loops',
        'subTopic': [
          {
            'heading': "Loops ",
            'attachment': "",
            'body': "This page shows how you can control the flow of your Dart code using loops and supporting statements:"
            "\n\n•for loops"
            "\n\n•while and do while loops"
            "\n\n•break and continue"
            "\n\nYou can also manipulate control flow in Dart using"
            "\n\n•Branching, like if and switch"
            "\n\n•Exceptions, like try, catch, and throw"
          },
          {
            'heading': "For loops ",
            'attachment': "assets/dart_beginner/l_1.png",
            'body': "You can iterate with the standard for loop. For example:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/l_2.png",
            'body': "Closures inside of Dart's for loops capture the value of the index. "
                "This avoids a common pitfall found in JavaScript. For example, consider:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/l_3.png",
            'body': "The output is 0 and then 1, as expected. In contrast, the example would print 2 and then 2 in JavaScript."
            "\n\nSometimes you might not need to know the current iteration counter when iterating over an Iterable type, "
                "like List or Set. In that case, use the for-in loop for cleaner code:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/l_4.png",
            'body': "To process the values obtained from the iterable, you can also use a pattern in a for-in loop"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/l_5.png",
            'body': "Iterable classes also have a forEach() method as another option:"
          },
          {
            'heading': "While and do-while ",
            'attachment': "assets/dart_beginner/l_6.png",
            'body': "A while loop evaluates the condition before the loop:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/l_7.png",
            'body': "A do-while loop evaluates the condition after the loop:"
          },
          {
            'heading': "Break and continue ",
            'attachment': "assets/dart_beginner/l_8.png",
            'body': "Use break to stop looping:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/l_9.png",
            'body': "Use continue to skip to the next loop iteration:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/l_10.png",
            'body': "If you're using an Iterable such as a list or set, how you write the previous example might differ:"
          },
        ]
      },
      17: {
        'topic': '18.     Branches',
        'subTopic': [
          {
            'heading': "Branches ",
            'attachment': "",
            'body': "This page shows how you can control the flow of your Dart code using branches:"
            "\n\n•if statements and elements"
            "\n\n•if-case statements and elements"
            "\n\n•switch statements and expressions"
            "\n\n\nYou can also manipulate control flow in Dart using:"
            "\n\n•Loops, like for and while"
            "\n\n•Exceptions, like try, catch, and throw"
          },
          {
            'heading': "If ",
            'attachment': "assets/dart_beginner/b_1.png",
            'body': "Dart supports if statements with optional else clauses. "
                "The condition in parentheses after if must be an expression that evaluates to a boolean:"
          },
          {
            'heading': "If-case ",
            'attachment': "assets/dart_beginner/b_2.png",
            'body': "Dart if statements support case clauses followed by a pattern:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/b_3.png",
            'body': "If the pattern matches the value, then the branch executes with any variables the pattern defines in scope."
            "\n\nIn the previous example, the list pattern [int x, int y] matches the value pair, so the branch return Point(x, y) executes with the variables that the pattern defined, x and y."
            "\n\nOtherwise, control flow progresses to the else branch to execute, if there is one:"
          },
          {
            'heading': "Switch statements ",
            'attachment': "assets/dart_beginner/b_4.png",
            'body': "A switch statement evaluates a value expression against a series of cases. "
                "Each case clause is a pattern for the value to match against. You can use any kind of pattern for a case."
            "\n\nWhen the value matches a case's pattern, the case body executes. Non-empty case clauses jump to the end of the switch after completion. "
                "They do not require a break statement. Other valid ways to end a non-empty case clause are a continue, throw, or return statement."
            "\n\nUse a default or wildcard _ clause to execute code when no case clause matches:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/b_5.png",
            'body': "Empty cases fall through to the next case, allowing cases to share a body. For an empty case that does not fall through, "
                "use break for its body. For non-sequential fall-through, you can use a continue statement and a label:"
          },
          {
            'heading': "Switch expressions",
            'attachment': "assets/dart_beginner/b_6.png",
            'body': "A switch expression produces a value based on the expression body of whichever case matches. "
                "You can use a switch expression wherever Dart allows expressions, except at the start of an expression statement. "
                "\n\nFor example:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/b_7.png",
            'body': "Switch expressions allow you to rewrite a switch statement like this:"
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/b_8.png",
            'body': "Into an expression, like this:"
          },
          {
            'heading': " ",
            'attachment': "",
            'body': "The syntax of a switch expression differs from switch statement syntax:"
            "\n\n•Cases do not start with the case keyword."
            "\n\n•A case body is a single expression instead of a series of statements"
            "\n\n•Each case must have a body; there is no implicit fallthrough for empty cases."
            "\n\n•Case patterns are separated from their bodies using => instead of :."
            "\n\n•Cases are separated by , (and an optional trailing , is allowed)."
            "\n\n•Default cases can only use _, instead of allowing both default and _."
          },
          {
            'heading': "Exhaustiveness checking",
            'attachment': "assets/dart_beginner/b_9.png",
            'body': "Exhaustiveness checking is a feature that reports a compile-time error "
                "if it's possible for a value to enter a switch but not match any of the cases."
          },
          {
            'heading': " ",
            'attachment': "assets/dart_beginner/b_10.png",
            'body': "Enums and sealed types are particularly useful for switches "
                "because, even without a default case, their possible values are known and fully enumerable. "
                "Use the sealed modifier on a class to enable exhaustiveness checking when switching over subtypes of that class:"
          },
          {
            'heading': "Guard clause",
            'attachment': "assets/dart_beginner/b_11.png",
            'body': "To set an optional guard clause after a case clause, use the keyword when. "
                "A guard clause can follow if case, and both switch statements and expressions."
          },













        ]
      }
    },
    Categories.intermediate: {},
    Categories.advanced: {},
  },
};
