import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  // const Page4({super.key});

  var emailVal = "";
  var passwordVal = "";

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();


  var text = TextStyle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.lightGreen,
      body: Padding(
        padding: const EdgeInsetsGeometry.fromLTRB(30, 10, 30, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/image/pic5.jpg',
            height: 200,
            width: 300,),
            const Text("Login",
            style: TextStyle(fontSize: 30,
                height: 3,
                fontWeight: FontWeight.bold,
                color: Colors.white),),
            TextField(controller: email,
            decoration: InputDecoration(
              hint: Text("Email"),
                icon: Icon(Icons.email),
                iconColor: Colors.white,
                filled: true,
                fillColor: Colors.grey[50],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
            ),
            ),

            SizedBox(height: 10),
            TextField(controller: password,
              decoration: InputDecoration(
                  hint: Text("Password"),
                  icon: Icon(Icons.password),
                  iconColor: Colors.white,
                  filled: true,
                  fillColor: Colors.grey[50],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              setState(() {
                emailVal = email.text;
                passwordVal = password.text;
              });
            }, child: Text("Login", style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen,),
            )
            ),
            Text("Email: $email"),
            Text("Password: $password")
    ],
    ),
    ),
    );
  }
}
