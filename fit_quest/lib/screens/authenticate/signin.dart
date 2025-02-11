import 'package:fit_quest/services/auth.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
            child: SizedBox(
          width: 360,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset('assets/logo.png'),
              const TextField(
                  style: TextStyle(color: Colors.white, fontSize: 16.5),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Enter your email',
                      style: TextStyle(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Enter your password',
                      style: TextStyle(color: Colors.white, fontSize: 16.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  )),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.white, fontSize: 16.5),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Sign up here',
                          style: TextStyle(fontSize: 16.5))),
                ],
              ),
              SizedBox(
                width: 220,
                child: OutlinedButton(
                    onPressed: () async {
                      dynamic result = await _auth.signInAnon();
                      if (result == null) {
                        print('error');
                      } else {
                        print(result);
                        print(result.uid);
                      }
                    },
                    // ignore: sort_child_properties_last
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Log in with google',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image(
                              image: AssetImage('assets/google.png'),
                              height: 25,
                              width: 25,
                            )
                          ],
                        )),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    )),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
