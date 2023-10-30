import 'package:flutter/material.dart';
import 'dart:convert'; // Import the 'dart:convert' library to parse JSON

// ai mainnn
void main() => runApp(ChatBotApp());

// gawa ka class for chatbotapp
class ChatBotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

// gawa ka ng variable for text tas sa message ng usesr at  ai dsadasdasd
class ChatMessage {
  final String text;
  final ChatMessageType messageType;

  ChatMessage(
      {required this.text,
      required this.messageType}); // bago mag output ng text si ai required si user na mag message muna
}

// enumerate ung user tas bot parang differentiate ung sa type ng message
enum ChatMessageType {
  User,
  Bot,
}

// create ka ng screen for chat screen ng ai at user
class ChatScreen extends StatefulWidget {
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

  @override
  void initState() {
    super.initState();
    loadBotResponses(); // Load bot responses when the app starts
    _addBotMessage(// built in message sa top ng aiscreen
        "Hello there! I'm your friendly assistant bot. I'm here to help answer your questions and provide information on a variety of topics. I'll do my best to assist you.");
  }

  Future<void> loadBotResponses() async {
    // Load the JSON data from the asset file
    String data = await DefaultAssetBundle.of(context).loadString(
        "assets/ai/chatbot_response.json"); //locate mo dito ung json file
    botResponses = json.decode(data);
  }

//gawa ka ng condition para sa function ng pano ihahandle ung submitted message and ung response ng ai sa user
  void _handleSubmitted(String text) {
    // Check if the text is not empty and doesn't contain symbols
    if (text.trim().isNotEmpty && !_containsSymbols(text)) {
      _textController.clear();
      _addUserMessage(text);
      setState(() {
        isBotResponding = true;
      });
      Future.delayed(Duration(seconds: 3), () {
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
    //same den sa ai magbase ka sa json file ng structure
    messages.insert(
        0, ChatMessage(text: text, messageType: ChatMessageType.Bot));
  }

  String getResponse(String message) {
    // dito naman geget nya ung response sa json file
    message = message
        .toLowerCase(); //lahat ng itype ni user na text will be converted into lowercase para mag match sa list of responses sa json
    for (var key in botResponses.keys) {
      if (message.contains(key)) {
        return botResponses[key];
      }
    } //kapag wala ung message ni user sa json file eto ung message na ibibigay ni ai
    return "I'm sorry, I don't understand that. Please ask another question.";
  }

  //eto na ung design
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chatbot')),
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


                child: Container( // SEPERATED AND MADE A CONDITION NA
                  margin: EdgeInsets.only(

                    left: messages[index].messageType == ChatMessageType.User // IF messageType is equal to chat message
                        ? 80.0  // pag hindi naman equal yung left padding niya is 80
                        : 20.0,   // yung left padding niya is 20
                    right: messages[index].messageType != ChatMessageType.User //IF messageType is not equal to chat message
                        ? 80.0 // if not equal naman yung right padding niya is 80
                        : 20.0, //  and pag equal naman siya sa user is 20 yung magiging padding niya.
                    top: 15.0),
                  padding: EdgeInsets.all(10.0),
                  // BOX DECORATION MESSAGE DECORATION
                  decoration: BoxDecoration(

                    color: messages[index].messageType == ChatMessageType.User
                        ? Colors.blue
                        : Colors.green,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    messages[index].text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18, // Adjust the font size as needed
                    ),
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
                SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 4),
                ),
                SizedBox(
                    width:
                        10), // Add spacing between the indicator and the send icon
                Text('AI is typing...'),
              ],
            ),
          ),


        Divider(height: 20.0),
        Container(color: Colors.white, child: _buildTextComposer()),
      ]),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  controller: _textController,
                  onSubmitted: _handleSubmitted,
                  decoration:
                      InputDecoration.collapsed(hintText: 'Send a message'),
                ),
              ),
              GestureDetector(
                onTap: () => _handleSubmitted(_textController.text),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
