import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_proj/auth.dart';
import 'package:firebase_proj/firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController emailCont = TextEditingController();
  TextEditingController passCont = TextEditingController();
  Authentaction authentaction = Authentaction();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My AppBAr'),
          ),
          body: Column(
            children: [
              TextField(
                controller: emailCont,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: passCont,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    authentaction.loginUsingCridentials(
                        emailCont.text, passCont.text);

                    print(emailCont.text);
                    print(passCont.text);
                  },
                  child: Text('Click'))
            ],
          )),
    );
  }
}
