import 'package:flutter/material.dart';
import 'dart:convert'; // Import the 'dart:convert' library to parse JSON
import 'package:animated_text_kit/animated_text_kit.dart';

// ai mainnn
void main() => runApp(const ChatBotApp());

// gawa ka class for chatbotapp
class ChatBotApp extends StatelessWidget {
  const ChatBotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

// gawa ka ng variable for text tas sa message ng usesr at  ai dsadasdasd
class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final String image;

  ChatMessage({
    required this.text,
    required this.messageType,
    this.image = '',
  }); // bago mag output ng text si ai required si user na mag message muna
}

// enumerate ung user tas bot parang differentiate ung sa type ng message
enum ChatMessageType {
  User,
  Bot,
}

// create ka ng screen for chat screen ng ai at user
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

// gawa ka ng controller for locator ng message between user and ai. iidentify neto kung sino ba si user at ai at san sila lalabas na message type
class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> messages = []; // ginawa kong list ung message
  bool isBotResponding =
      false; //kapag hindi nagmessage si user the bot will not respond
  late Map<String, dynamic>
      botResponses; // ginawa kong late list den ung sa ai kaya nakalate jan hindi mag rerespo si ai kung walang message si user

  // void _handleResponse(String response) {
  //   final responseJson = json.decode(data);// Parse the JSON response
  //
  //   if (responseJson.containsKey("image")) {
  //     final image = responseJson["image"];
  //     setState(() {
  //       messages.insert(0, ChatMessage(text: response, image: image));
  //     });
  //   } else {
  //     setState(() {
  //       messages.insert(0, ChatMessage(text: response));
  //     });
  //   }
  // }

  @override
  void initState() {
    super.initState();
    loadBotResponses();
    // Load bot responses when the app starts
    _addBotMessage(// built in message sa top ng aiscreen
        "Hello there! I'm Aether, your friendly assistant bot. I'm here to help answer your questions and provide information on a variety of topics. I'll do my best to assist you.");
  }

  Future<void> loadBotResponses() async {
    // Load the JSON data from the asset file
    String data = await DefaultAssetBundle.of(context).loadString(
        "assets/ai/chatbot_response.json"); //locate mo dito ung json file
    botResponses = json.decode(data);
  }

//condition para sa function ng pano ihahandle ung submitted message and ung response ng ai sa user
  void _handleSubmitted(String text) {
    // Check if the text is not empty and doesn't contain symbols
    if (text.trim().isNotEmpty && !_containsSymbols(text)) {
      _textController.clear();
      _addUserMessage(text);
      setState(() {
        isBotResponding = true;
      });
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          isBotResponding = false;
          _addBotMessage(getResponse(text));
        });
      });
    }
  }

  bool _containsSymbols(String text) {
    // Regular expression to check for symbols
    RegExp regex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    return regex.hasMatch(text);
  }

  void _addUserMessage(String text) {
    // eto na ung structure kung pano mag message si user
    messages.insert(
        0, ChatMessage(text: text, messageType: ChatMessageType.User));
  }

  void _addBotMessage(String text) {
    //same din sa ai magbase ka sa json file ng structure

    messages.insert(
        0, ChatMessage(text: text, messageType: ChatMessageType.Bot));
  }

  String getResponse(String message) {
    message = message.toLowerCase();

    switch (message) {
      case "hi":
      case "hello":
        return "Hello! How can I assist you today?";

      case "who are you":
      case "what's your name":
        return "Hello! I'm Aether, your friendly assistant bot. I'm here to help answer your questions and provide information on a variety of topics. I'll do my best to assist you.";

      case "who created you":
        return "Hello! I'm an AI assistant developed to assist RTU IT students.\n\nMy creation and development were managed by a team focusing on application development.\n\nI'm here to help answer questions and provide information relevant to IT studies at RTU.\n\nWhile I'm a part of your system to provide assistance based on my training, I don't possess specific information about the individual developer who implemented me into your platform ";
      case "java hello world":
      case "hello world java":
      case "hello world":
        return "If you're referring to the basic 'Hello, World!' output syntax in Java:\n\npublic class HelloWorld {\n    public static void main(String[] args) {\n        System.out.println(\"Hello, World!\");\n    }\n}";

      case "what is the basic syntax for java":
      case "what is the basic syntax of java":
      case "what is the basic hello world syntax for java":
      case "what is the basic hello world syntax of java":
      case "java syntax":
      case "java output":
        return "The basic 'Hello, World!' output syntax in Java:\n\npublic class HelloWorld {\n    public static void main(String[] args) {\n        System.out.println(\"Hello, World!\");\n    }\n}";

      case "how to print text in java":
      case "java print text":
        return "In Java, to print text, you can use System.out.println(). \nFor example: \n\nSystem.out.println(\"Hello, Java!\");";

      case "how to print number in java":
      case "java print number":
        return "To print a number in Java, use System.out.println(). \nFor example: \n\nSystem.out.println(42);";

      case "java data types":
      case "what are the data types in java":
        return "Java has several data types, including \n\nint (for integers), \n\ndouble (for floating-point numbers), \n\nboolean (for true/false values), \n\nchar (for single characters), and more.";
//asdsa
      case "java comments":
      case "java comments explanation":
      case "what are java comments":
      case "what are comments in java":
        return "Java comments can be used to explain code and make it more readable. They help prevent execution when testing alternative code.\n\nSingle-line comments start with // and ignore text from // to the end of the line. \n\nMulti-line comments start with /* and end with */, ignoring text between them.\n\nExample of single-line comment:\n// This is a comment\nSystem.out.println(\"Hello World\");\n\nExample of single-line comment at the end of a line:\nSystem.out.println(\"Hello World\"); \n// This is a comment\n\nExample of multi-line comment:\n/* The code below will print the words Hello World\nto the screen, and it is amazing */\nSystem.out.println(\"Hello World\");";

      case "what is java":
      case "what is java programming":
      case "what is java programming language":
        return "Java is a high-level, object-oriented programming language initially developed by Sun Microsystems and released in 1995. It's platform-independent, running on any device with a Java Virtual Machine (JVM).";

      default:
        return "I'm sorry, I don't understand that. Please ask another question.";
    }
  }

  //eto na ung design
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aether'),
        backgroundColor: Color(0xFF164863),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: // Inside the ChatScreen build method
              ListView.builder(
            reverse: true,
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
              return Align(
                // USER CONDITION KAPAG NAG RESPONSE SI USER PUPUNTA SIYA SA RIGHT KAPAG HINDI NAMAN SA LEFT.
                alignment: messages[index].messageType == ChatMessageType.User
                    ? Alignment
                        .topRight //alignment to parang sa word naka justify
                    : Alignment.topLeft,

                child: Container(
                  // SEPERATED AND MADE A CONDITION NA
                  margin: EdgeInsets.only(
                      left: messages[index].messageType ==
                              ChatMessageType
                                  .User // IF messageType is equal to chat message
                          ? 80.0 // pag hindi naman equal yung left padding niya is 80
                          : 20.0, // yung left padding niya is 20x
                      right: messages[index].messageType !=
                              ChatMessageType
                                  .User //IF messageType is not equal to chat message
                          ? 80.0 // if not equal naman yung right padding niya is 80
                          : 20.0, //  and pag equal naman siya sa user is 20 yung magiging padding niya.
                      top: 15.0),
                  padding: const EdgeInsets.all(10.0),

                  // BOX DECORATION MESSAGE DECORATION
                  decoration: BoxDecoration(
                    color: messages[index].messageType == ChatMessageType.User
                        ? Colors.lightBlue
                        : Color(0xFF164863),
                    borderRadius: BorderRadius.circular(8.0),
                  ),

                  child: Text(
                    messages[index].text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    // Text(
                    //   messages[index].text,
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 18, // Adjust the font size as needed
                    //   ),
                    textAlign:
                        TextAlign.justify, // Set text alignment to justify
                  ),
                ),
              );
            },
          ),
        ),

        //  Loading message,  error nung una is nilagay mo siya sa loob ng build text composer
        if (isBotResponding)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // ANIMATED TEXT HERE AND FONT
                const SizedBox(
                  width: 10,
                ),
                AnimatedTextKit(repeatForever: true, animatedTexts: [
                  TypewriterAnimatedText('AI is typing...',
                      speed: const Duration(milliseconds: 50),
                      textStyle: (const TextStyle(
                        fontSize: 15,
                        fontFamily:
                            'Canterbury', // NOT WORKING NEED TO IMPORT IN PUBSEC
                      )))
                ])
              ],
            ),
          ),

        const Divider(height: 20.0),
        Container(color: Colors.white, child: _buildTextComposer()),
      ]),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: const IconThemeData(color: Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  controller: _textController,
                  onSubmitted: _handleSubmitted,
                  decoration: const InputDecoration.collapsed(
                      hintText: 'Send a message'),
                ),
              ),
              GestureDetector(
                onTap: () => _handleSubmitted(_textController.text),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.send),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
