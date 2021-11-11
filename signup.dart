
import 'package:flutter/material.dart';

void main() => runApp(SignUp());

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  GlobalKey<FormState> FormKey = GlobalKey<FormState>();

  void validation() {
    if (FormKey.currentState!.validate()) {
      print('valide');
    } else {
      print('Not Valid');
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: FormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Name',
                      labelText: 'User Name',
                      labelStyle:
                          TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                    validator: (UserName) {
                      if (UserName!.isEmpty) {
                        return 'UserName Empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Email',
                      labelText: 'Email',
                      labelStyle:
                          TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                    validator: (Email) {
                      if (Email!.isEmpty) {
                        return 'Email Empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Password',
                      labelText: 'Password',
                      labelStyle:
                          TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                    validator: (Password) {
                      if (Password!.isEmpty) {
                        return 'Password Empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Confirm Password',
                      labelText: 'Confirm Password',
                      labelStyle:
                          TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                    validator: (Password) {
                      if (Password!.isEmpty) {
                        return 'Password Empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Phone Number',
                      labelText: 'Number',
                      labelStyle:
                          TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                    validator: (Number) {
                      if (Number!.isEmpty) {
                        return 'Number Empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.indigo,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 50.0, vertical: 25.0),
                      ),
                      onPressed: () {
                       validation();
                      },
                      child: Text(
                        'SignUp',
                        style: TextStyle(fontSize: 15.0),
                      )),
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}



  
