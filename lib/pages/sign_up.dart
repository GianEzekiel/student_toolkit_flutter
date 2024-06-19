import 'package:flutter/material.dart';
import 'package:student_toolkit/pages/log_in.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MySignUpPage(title: 'Sign UP'),
    );
  }
}

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({super.key, required this.title});
  final String title;

  @override
  State<MySignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Sign Up Page'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInPage() ));
            },
          ),
        ],
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {},
        child: const Text('This is the Sign Up Page'),
      )),
    );
  }
}
