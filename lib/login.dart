
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  var formkey = GlobalKey<FormState>();
  bool isPassword= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text(
          "Login Screen App",
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  const Text(
                    'Codeplayon',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),

                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: emailcontroller,
                    decoration: const InputDecoration(
                      labelText: "email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (val){
                      if(val!.isEmpty)
                      {
                        return "Enter Email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),

                  TextFormField(
                    controller: passwordcontroller,
                    obscureText: isPassword,
                    decoration:  InputDecoration(
                      labelText: "password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isPassword = !isPassword;
                        });
                      }, icon:
                      Icon(
                        isPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (val){
                      if(val!.isEmpty)
                      {
                        return "Enter password";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      TextButton(
                          onPressed: () {}, child: const Text("Forgot Password"))

                    ],
                  ),
              const SizedBox(
              height: 20.0,
            ),
              Container(
                width: 400,
                height: 50,
                decoration:BoxDecoration(
                    color: Colors.blue,

                ) ,
                child: MaterialButton(
                  onPressed: (){
                    print('Login');
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      const Text(
                          "Don't have account?"
                      ),
                      TextButton(
                          onPressed: () {}, child: const Text("Register Now"))

                    ],
                  )


                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
