import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController numberController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

final _formKey = GlobalKey<FormState>();

class _MyHomePageState extends State<MyHomePage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Center(
          child: Container(
            width: 600,
            color: Color.fromARGB(255, 255, 251, 251),
            child: Stack(children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 35, top: 130, right: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Email"),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!value.contains('@')) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        controller: emailController,
                        decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            filled: true,
                            hintText: " Enter your email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text("Password"),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: obscureText,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        controller: passwordController,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon:!obscureText ? Icon(Icons.visibility):Icon(Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                            ),
                            fillColor: Colors.transparent,
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text("Mobile"),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          final input = num.tryParse(value!);
                          if (value.isEmpty) {
                            return 'Please enter a value';
                          }
                          if (input == null) {
                            return 'Please enter a valid number';
                          }
                          return null;
                        },
                        controller: numberController,
                        decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            filled: true,
                            hintText: " Enter your Number",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.toggle_off)),
                          Text("I accepted all terms and conditions"),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                print("Form validated");
                              }
                            },
                            child: Text(
                              'SIGN UP ',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                maximumSize: Size(500, 100),
                                minimumSize: Size(300, 50),
                                backgroundColor: Colors.orange.shade800),
                          ),
                        ),
                      )
                    ]),
              ),
            ]),
          ),
        ),
      ),
    ));
  }
}
