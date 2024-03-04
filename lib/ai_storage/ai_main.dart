import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:first_project/ai_storage/consts.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _openAI = OpenAI.instance.build(
    token: OPENAI_API_KEY,
    baseOption: HttpSetup(
      receiveTimeout: const Duration(
        seconds: 5,
      ),
    ),
    enableLog: true,
  );

  final ChatUser _currentUser =
  ChatUser(id: '1', firstName: 'Code', lastName: 'Cultivator');

  final ChatUser _gptChatUser = ChatUser(id: '2', firstName: 'Jr.', lastName: 'AI');

  final List<ChatMessage> _messages = <ChatMessage>[];
  final List<ChatUser> _typingUsers = <ChatUser>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(
          0,
          166,
          126,
          1,
        ),
        title: const Text(
          'Jr. AI',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: DashChat(
          currentUser: _currentUser,
          typingUsers: _typingUsers,
          messageOptions: const MessageOptions(
            currentUserContainerColor: Colors.black,
            containerColor: Color.fromRGBO(
              0,
              166,
              126,
              1,
            ),
            textColor: Colors.white,
          ),
          onSend: (ChatMessage m) {
            getChatResponse(m);
          },
          messages: _messages),
    );
  }

  Future<void> getChatResponse(ChatMessage m) async {
    setState(() {
      _messages.insert(0, m);
      _typingUsers.add(_gptChatUser);
    });

    // Prepare conversation history
    List<Messages> messagesHistory = _messages.reversed.map((m) {
      if (m.user == _currentUser) {
        return Messages(role: Role.user, content: m.text);
      } else {
        return Messages(role: Role.assistant, content: m.text);
      }
    }).toList();

    try {
      // Request AI response
      final request = ChatCompleteText(
        model: GptTurbo0301ChatModel(),
        messages: messagesHistory,
        maxToken: 200,
      );

      final response = await _openAI.onChatCompletion(request: request);

      // Handle AI response
      if (response != null && response.choices.isNotEmpty) {
        for (var element in response.choices) {
          if (element.message != null) {
            setState(() {
              _messages.insert(
                0,
                ChatMessage(
                  user: _gptChatUser,
                  createdAt: DateTime.now(),
                  text: element.message!.content,
                ),
              );
            });
          }
        }
      } else {
        // Handle empty or invalid response
        setState(() {
          _messages.insert(
            0,
            ChatMessage(
              user: _gptChatUser,
              createdAt: DateTime.now(),
              text: "Sorry, I couldn't generate a response.",
            ),
          );
        });
      }
    } catch (e) {
      // Handle errors
      setState(() {
        _messages.insert(
          0,
          ChatMessage(
            user: _gptChatUser,
            createdAt: DateTime.now(),
            // text: "An error occurred: $e",
            text: "Sorry, I'm currently experiencing server downtime. Please try again in 20 seconds.",
          ),
        );
      });
    } finally {
      // Remove typing indicator
      setState(() {
        _typingUsers.remove(_gptChatUser);
      });
    }
  }
}
