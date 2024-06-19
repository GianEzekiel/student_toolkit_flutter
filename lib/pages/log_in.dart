import 'package:flutter/material.dart';
import 'package:student_toolkit/pages/home_page.dart';
import 'package:student_toolkit/pages/sign_up.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyLogInPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyLogInPage extends StatefulWidget {
  const MyLogInPage({super.key, required this.title});
  final String title;

  @override
  State<MyLogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<MyLogInPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.blue,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 50),
              child: Text(
                'Logo',
                style: TextStyle(
                  fontSize: 100,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your password',
                  ),
                )),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage() ));
              },
              child: const Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp() ));
                },
                child: const Text('Don\'t have an account? Sign Up.',
                    style: TextStyle(
                      color: Colors.blue,
                )
              )
            ),
          ],
        ),
      ),
    );
  }
}
