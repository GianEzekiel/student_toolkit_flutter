import 'package:flutter/material.dart';
import 'package:student_toolkit/pages/log_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home Page'),
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
        child: const Text('This is the Home Page'),
      )),
    );
  }
}
