import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        // When navigating to the "/" route, build the WelcomeScreen widget.
        WelcomeScreen.id: (context) => WelcomeScreen(),
        // When navigating to the "/login" route, build the LoginScreen widget.
        LoginScreen.id: (context) => LoginScreen(),
        // When navigating to the "/register" route, build the RegistrationScreen widget.
        RegistrationScreen.id: (context) => RegistrationScreen(),
        // When navigating to the "/chat" route, build the ChatScreen widget.
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
