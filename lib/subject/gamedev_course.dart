import 'package:first_project/enums/enums.dart';

const gameCourse = {
  SubjectSection.gamedev: {
    0: {
      'topic': '1.     Introduction to Game Development',
      'subTopic': [
        {
          'heading': 'Android Basics with Compose',
          'body': "Android Basics with Compose is a self-paced, "
              "online course on how to build Android apps using the latest best practices."
              "\n\nIt covers the basics of building apps with Jetpack Compose,"
              "the recommended toolkit for building user interfaces on Android."
        },
        {
          'heading': 'Course Goal',
          'attachment': 'assets/game_dev/1.png',
        },
        {
          'heading': 'Prerequisites',
          'attachment': 'assets/game_dev/2.png',
        }
      ]
    },
    1: {
      'topic': '2.     Your first Android app',
      'subTopic': [
        {
          'heading':
              'Learn programming basics and create your first Android app.',
          'body': "\n• Write simple Kotlin programs that display text output."
              "\n• Download and install Android Studio. "
              "\n• Build an Android app with a simple user interface that displays text and images."
              "\n• Run the app on a device or emulator."
        },
        {
          'attachment': 'assets/game_dev/3.png',
        },
        {
          'body': "• Create your first program in Kotlin "
              "\n• Create and use variables in Kotlin"
              "\n• Create and use functions in Kotlin"
              "\n• Practice: Kotlin Basics"
              "\n• Watch Tutorials Online"
              "\n• Take Quizes from Codex App"
        },
        {
          'attachment': 'assets/game_dev/4.png',
        },
        {
          'body': "• Study the Introduction to Android Studio "
              "\n• Download and install Android Studio"
              "\n• Create your first Android app"
              "\n• Run your first app on the Android Emulator"
              "\n• How to connect your Android Emulator"
              "\n• Watch Tutorials Online"
              "\n• Take Quizes from Codex App"
        },
        {
          'attachment': 'assets/game_dev/5.png',
        },
        {
          'body': "• Study the Introduction to Jetpack Compose "
              "\n• Design a birthday card app"
              "\n• Build a simple app with text composables"
              "\n• Add images to your Android app"
              "\n• Practice: Compose Basics"
              "\n• Project: Create a business card app"
              "\n• Watch Tutorials Online"
              "\n• Take Quizes from Codex App"
        }
      ]
    },
    2: {
      'topic': '3.     Building App UI',
      'subTopic': [
        {
          'heading':
              'Continue learning the fundamentals of Kotlin, and start building more interactive apps.',
          'body': "\n• Use conditionals, function types, classes, and lambda expressions in Kotlin."
              "\n• Understand how composition and recomposition works."
              "\n• Add a button to an app UI and respond to user taps."
              "\n• Create an app that works with data entered by the user."
              "\n• Learn how to use state to display data and reflect the changes automatically when the data gets updated."
              "\n• Write unit tests to test isolated functions."
        },
        {
          'heading': 'Kotlin Fundamentals',
          'attachment': 'assets/game_dev/6.png',
        },
        {
          'body': "• Watch Kotlin Fundamentals"
              "\n• Write conditionals in Kotlin"
              "\n• Use nullability in Kotlin"
              "\n• Use classes and objects in Kotlin"
              "\n• Use function types and lambda expressions in Kotlin"
              "\n• Practice: Kotlin Fundamentals"
        },
        {
          'attachment': 'assets/game_dev/7.png',
        },
        {
          'body': "• Study the Intro to Dice Roller app"
              "\n• Create an interactive Dice Roller app"
              "\n• Use the debugger in Android Studio"
              "\n• Practice: Click behavior"
        },
        {
          'attachment': 'assets/game_dev/8.png',
        },
        {
          'body': "• Understanding state in Compose"
              "\n• Intro to tip calculator"
              "\n• Intro to state in Compose"
              "\n• Calculate a custom tip"
              "\n• Write automated tests"
              "\n• Project: Create an Art Space app"
        },
      ]
    },
    3: {
      'topic': '4.     Display lists and use Material Design',
      'subTopic': [
        {
          'heading':
              'Build apps that display a list of data and learn how to make your apps more beautiful with Material Design.',
          'body': "\n• Use data classes, functions, and collections in Kotlin."
              "\n• Create a scrollable list in an app that displays both text and images."
              "\n• Add click listeners to interact with list items."
              "\n• Add an app bar to the app and modify the app theme."
              "\n• Use Material Design to build modern and intuitive user interfaces, using colors, shapes and typography."
        },
        {
          'attachment': 'assets/game_dev/9.png',
        },
        {
          'body': "• Watch Kotlin Fundamentals"
              "\n• Generics, objects, and extensions"
              "\n• Use collections in Kotlin"
              "\n• Higher-order functions with collections"
              "\n• Practice: Classes and Collections"
              "\n• Practice: Kotlin Fundamentals"
        },
        {
          'attachment': 'assets/game_dev/10.png',
        },
        {
          'body': "• Intro to Affirmations app"
              "\n• Add a scrollable list"
              "\n• Change the app icon"
              "\n• Practice: Build a grid"
        },
        {
          'attachment': 'assets/game_dev/11.png',
        },
        {
          'body': "• Understanding the Intro to Material Design with Compose"
              "\n• Material Theming with Jetpack Compose"
              "\n• Simple animation with Jetpack Compose"
              "\n• Testing for Accessibility"
              "\n• Practice: Build Superheroes app"
              "\n• Project: Create a 30 Days App"
        }
      ]
    },
    4: {
      'topic': '5.     Navigation and app architecture',
      'subTopic': [
        {
          'body': "Learn the best practices of app architecture to build more complex apps. "
              "Enhance your users' ability to navigate across, into and back out from the various screens within your app for a consistent and predictable user experience."
              "\n\n• Explain activities and their lifecycles."
              "\n• Understand Modern Android architecture."
              "\n• Use StateFlow and UDF pattern to work with state and events."
              "\n• Add a ViewModel to save data and state."
              "\n• Set up and use the Navigation component with Compose."
              "\n• Understand what responsive UI is."
              "\n• Use window class sizes to build for different screen sizes."
              "\n• Add a navigation drawer to an app."
        },
        {
          'attachment': 'assets/game_dev/12.png',
        },
        {
          'body': "• Welcome to Unit 4"
              "\n• Stages of the Activity lifecycle"
              "\n• Intro to App architecture"
              "\n• Architecture: The UI Layer"
              "\n• ViewModel and State in Compose"
              "\n• Write unit tests to test the ViewModel"
              "\n• Practice: Add a ViewModel to Dessert Clicker"
        },
        {
          'attachment': 'assets/game_dev/13.png',
        },
        {
          'body': "• Introduction to Navigation and Cupcake App"
              "\n• Navigate between screens with Compose"
              "\n• Test the Cupcake app"
              "\n• Practice: Add navigation"
        },
        {
          'attachment': 'assets/game_dev/14.png',
        },
        {
          'body': "• Adaptive layouts"
              "\n• Intro to Reply app"
              "\n• Build an adaptive app with dynamic navigation"
              "\n• Build an app with an adaptive layout"
              "\n• Practice: Build Sports app"
              "\n• Project: Create a My City app"
        }
      ]
    },
    5: {
      'topic': '6.     Connect to the Internet',
      'subTopic': [
        {
          'body': "Use Kotlin coroutines to perform multiple tasks at once, and learn about HTTP and REST to get data from the internet using Retrofit.\n\nThen use the Coil library to display images in your app."
              "Enhance your users' ability to navigate across, into and back out from the various screens within your app for a consistent and predictable user experience."
              "\n\n• Describe the basics of concurrency and how to use coroutines in an Android app."
              "\n• Define and understand the data layer in Modern Android app architecture."
              "\n• Implement a repository to centralize data access."
              "\n• Use Retrofit to retrieve data from a remote server."
              "\n• Load and display images using the Coil library."
              "\n• Implement dependency injection to decouple the classes, making it easier to test, maintain, and scale the app."
        },
        {
          'attachment': 'assets/game_dev/15.png',
        },
        {
          'body': "• Connect to the internet"
              "\n• Introduction to Coroutines in Kotlin Playground"
              "\n• Introduction to Coroutines in Android Studio"
              "\n• Introduction to HTTP/REST"
              "\n• Get data from the internet"
        },
        {
          'attachment': 'assets/game_dev/16.png',
        },
        {
          'body': "• Architecture: The Data Layer"
              "\n• Add repository and Manual Dependency Injection"
              "\n• Load and display images from the internet"
              "\n• Practice: Build amphibians app"
              "\n• Project: Create a Bookshelf app"
        },
      ]
    },
    6: {
      'topic': '7.     Data Persistence',
      'subTopic': [
        {
          'body': "Learn how to store data locally on the device and keep your apps working through any network disruptions for a smooth and consistent user experience."
              "\n\n• Learn the basics of SQL to insert, update, and delete data from a SQLite database."
              "\n• Use the Room library to add a database to an Android app."
              "\n• Use Database Inspector to test and debug database issues."
              "\n• Use Preference DataStore to store user preferences."
        },
        {
          'attachment': 'assets/game_dev/17.png',
        },
        {
          'body': "• Introduction to Databases and SQL"
              "\n• Use SQL to read and write to a database"
        },
        {
          'attachment': 'assets/game_dev/18.png',
        },
        {
          'body': "• Kotlin Flows in Practice"
              "\n• Testing Flows"
              "\n• Using Room Kotlin APIs"
              "\n• Persist Data with Room"
              "\n• Read and update data with Room"
              "\n• Practice: Build Bus Schedule app"
        },
        {
          'attachment': 'assets/game_dev/19.png',
        },
        {
          'body': "• Kotlin Flows in Practice"
              "\n• Introduction to Datastore"
              "\n• Preferences Datastore"
              "\n• Save preferences locally with DataStore"
              "\n• Project: Create a flight search app"
        },
      ]
    },
    7: {
      'topic': '8.     Work Manager',
      'subTopic': [
        {
          'heading': "Use Android Jetpack's WorkManager API",
          'body': "\n• Define long running tasks that need to run in background work."
              "\n• Add WorkManager to an Android app."
              "\n• Create a Worker object and enqueue work."
              "\n• Create constraints on WorkRequests."
              "\n• Use the Background Task Inspector to inspect and debug WorkManager."
        },
        {
          'attachment': 'assets/game_dev/20.png',
        },
        {
          'body': "• Introduction to WorkManager"
              "\n• Implementing WorkManager"
              "\n• Background work with WorkManager"
              "\n• Advanced WorkManager and Testing"
              "\n• Practice: Build Water Me app"
        },
      ]
    },
    8: {
      'topic': '9.     Views and Compose',
      'subTopic': [
        {
          'heading': "Use of Compose",
          'body': "\nLearn how to use Compose and the older UI toolkit based on Views side-by-side in the same app. In this unit, you will learn interoperability APIs and best practices to add a new feature to an existing app in Views, use an existing library that uses Views, or use a UI component that is not yet available in Compose."
              "\n• Understand the View-based UI toolkit and build app UI using XML."
              "\n• Add a composable in an app built with Views."
              "\n• Add Navigation component to the app and use it to navigate between fragments."
              "\n• Use AndroidView to display views."
        },
        {
          'attachment': 'assets/game_dev/21.png',
        },
        {
          'body': "• Android View System"
              "\n• Build an Android app with Views"
              "\n• Compose in Views"
              "\n• Add Compose to a legacy app"
        },
        {
          'attachment': 'assets/game_dev/22.png',
        },
        {
          'body': "• Views in Compose"
              "\n• View Interoperability in Compose"
              "\n• Add Compose to a legacy app"
        },
      ]
    },
    9: {
      'topic': '10.     Array-based Game Logic',
      'subTopic': [
        {
          'heading': 'Utilizing Arrays for Game State Management',
          'body': "Explore the utilization of arrays for managing game states effectively in Kotlin game development. Learn techniques for representing and manipulating various game states such as player positions, scores, and level progressions using array data structures."
        },
        {
          'heading': 'Optimizing Game Performance with Array Data Structures',
          'body': "Delve into the optimization strategies facilitated by array data structures in Kotlin game development. Discover how arrays can be leveraged to enhance game performance by efficiently storing and accessing game-related information, resulting in smoother gameplay experiences."
        },
        {
          'heading': 'Array-Based Collision Detection Algorithms',
          'body': "Learn about the implementation of array-based collision detection algorithms in Kotlin game development. Explore how arrays can be employed to detect and resolve collisions between game entities, enabling the creation of dynamic and engaging gameplay mechanics."
        },
        {
          'heading': 'Multi-dimensional Arrays for Game World Representation',
          'body': "Discover the versatility of multi-dimensional arrays for representing complex game worlds in Kotlin. Learn how to utilize multi-dimensional arrays to create rich and immersive game environments with layered structures and intricate spatial arrangements."
        },
        {
          'heading': 'Array-Based Pathfinding Techniques',
          'body': "Explore the implementation of array-based pathfinding algorithms in Kotlin game development. Understand how arrays can be employed to facilitate efficient pathfinding for game entities, enabling intelligent navigation and strategic decision-making within the game world."
        },
        {
          'heading': 'Managing Game Entities with Dynamic Arrays',
          'body': "Learn how to employ dynamic arrays for managing game entities dynamically in Kotlin game development. Discover techniques for dynamically resizing arrays to accommodate varying numbers of game entities, facilitating flexible and scalable game designs."
        },
        {
          'heading': 'Array-Based Data Serialization and Deserialization',
          'body': "Delve into the implementation of array-based data serialization and deserialization techniques in Kotlin game development. Explore how arrays can be utilized to efficiently serialize game data for storage or transmission, enabling seamless data exchange and persistence."
        },
        {
          'heading': 'Enhancing Game Mechanics with Array-Based Caching',
          'body': "Discover how array-based caching techniques can enhance game mechanics in Kotlin game development. Learn how to leverage arrays to implement caching mechanisms for frequently accessed game data, optimizing performance and reducing computational overhead."
        },
        {
          'heading': 'Array-Based Spatial Partitioning for Game Optimization',
          'body': "Explore the benefits of array-based spatial partitioning techniques for game optimization in Kotlin. Learn how to utilize arrays to partition the game world into spatial cells, enabling efficient collision detection, rendering, and AI computations."
        }
      ]
    }
  },
};
