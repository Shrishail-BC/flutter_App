import 'package:flutter/material.dart';
import 'package:my_app/utils/router.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
              child: Column(
                spacing: 20,
                children: [
                  TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Username',
                  labelText: 'Username',
              ),
            ),
              TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter Password',
                labelText: 'Password',
              ),
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
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRountes.homeRoute);
                    setState(() {
                    changeButton = false;
                  });
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