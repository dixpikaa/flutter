import 'package:flutter/material.dart';
import 'package:form_validation/form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: LoginForm(),
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Center(
        child: Container( width: 600,
        margin:EdgeInsets.only(bottom: 40),
        color: Color.fromARGB(255, 255, 251, 251),
          child: Stack(children: [Container(
            padding: EdgeInsets.only(top:60, left: 40 ),
            child: Text("SIGN IN" ,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
          ),
          Container(
                    padding:const EdgeInsets.only(left:35,top:130 ,right: 40),
                  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
          
                        Text("Your Email"),
                         SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            filled: true,
                            hintText: " Enter your email",
                            border: OutlineInputBorder(borderRadius:BorderRadius.circular(15))
        
        
        
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                         Text("Password"),
                         SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder(borderRadius:BorderRadius.circular(15))),
                        ),
                        SizedBox(height: 40,),
        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           IconButton(onPressed:(){}, icon: Icon(Icons.toggle_on)),
                            Text("Remember me"),
                            SizedBox(width: 270,),
                            Text("Forgot password?", style:TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        SizedBox(height: 40,),
                        Align(
                          alignment:Alignment.center,
                          child: Container(
                            
                            child: ElevatedButton(onPressed: (){}, child: Text('SIGN IN ', style: TextStyle(color: Colors.white),)
                            , style:ElevatedButton.styleFrom(
                          maximumSize: Size(500, 100),
                          minimumSize: Size(400, 50),
                                               backgroundColor: Colors.orange.shade800
                            ),),
                                
                          ),
                        ),
                        SizedBox(height: 80,),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            child: ElevatedButton(onPressed: (){

                            }, child: Text('SIGN IN WITH FACEBOOK ', style: TextStyle(color: Colors.white),)
                            , style:ElevatedButton.styleFrom(
                          maximumSize: Size(500, 100),
                          minimumSize: Size(450, 50),
                                               backgroundColor: Colors.blue.shade900
                            ),),
                                
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container( padding: EdgeInsets.only(left:150,),
                          child: Row(
                          children: [
                            Text("Don't have an account?"),
                            Text("sign up ", style: TextStyle(color: Colors.orange.shade900, fontSize:18),)
                          ],  
                          ),
                        )
        
          ]),
             ),
          ]
          ),
        ),
      ),
      
      ) 

    );
  }
}
