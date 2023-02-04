import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Column(
            children:[
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Image.asset('lib/assets/images/mugiwara.png', height: 150,)
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'Email'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'Password'),
                ),
              ),
              Row(
                children:[
                  Padding(padding: const EdgeInsets.only(right: 50, left: 110),
                    child: 
                        ElevatedButton(
                        onPressed: () { },
                        child: const Text('Ingresar'),
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}