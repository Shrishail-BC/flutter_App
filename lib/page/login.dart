import 'package:flutter/material.dart';
import 'package:my_app/utils/router.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRountes.homeRoute);
      setState(() {
        changeButton = false;
      });
      clearFormFields();
    }
  }

  void clearFormFields() {
    _formKey.currentState!.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.white,
      child: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height: 50,),
            Image.asset('assets/images/login.png', fit: BoxFit.cover,),
            SizedBox(height: 20,),
            Text('Welcome', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child:Form(
                key: _formKey,
              child: Column(
                spacing: 20,
                children: [
                  TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Username',
                  labelText: 'Username',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a username';
                }
                return null;
              },
            ),
              TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter Password',
                labelText: 'Password',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a password';
                }else if (value.length < 6) {
                  return 'Password must be at least 6 characters long';
                }
                return null;
              },
            ),
          ],
          ),
        ),
      ),
            SizedBox(height: 10,),
            Material(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
              child: InkWell(
                onTap: () async {
                  await moveToHome(context);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 40,
                  width: changeButton ? 50 : 120,
                  alignment: Alignment.center,
                  child: changeButton  ? Icon(Icons.check, color: Colors.white,) : Text('Login', 
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white
                      ),
                    ),
                ),
              ),
            ),

            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRountes.homeRoute);
            //   },
            //   child: Text('Login', 
            //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white
            //     ),
            //   ),
            //   style: TextButton.styleFrom(
            //     backgroundColor: Colors.purple,
            //     textStyle: TextStyle(fontSize: 20, color: Colors.white),
            //   ),
            // ),
          ],
        ),  // drawer: Drawer(),
      ),
    );
  }
}