import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Name',
                    labelText: 'User Name',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Email',
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Password',
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Password',
                    labelText: ' Confirm Password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                    shadowColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                ),
                  onPressed: () {

                }, child: Text('SignIn')),
              ],
            ),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
