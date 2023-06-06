import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
      child: Center(
        child: Container( width: 600,
        color: Color.fromARGB(255, 255, 251, 251),
          child: Stack(children: [Center(
            child: Container(
              padding: EdgeInsets.only(top:50 ),
              child: Text("SIGN UP" ,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            ),
          ),
          Container(
                    padding:const EdgeInsets.only(left:35,top:130 ,right: 40),
                    child: Column(
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
                        SizedBox(height: 30,),
                         Text("Mobile"),
                         SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            filled: true,
                            hintText: " Enter your Number",
                            border: OutlineInputBorder(borderRadius:BorderRadius.circular(15))
                          ),
                        ),
                        SizedBox(height: 40,),
        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           IconButton(onPressed:(){}, icon: Icon(Icons.toggle_on)),
                            Text("I accepted all terms and conditions"),
                          ],
                        ),
                        SizedBox(height: 40,),
                        Container(
                          child: ElevatedButton(onPressed: (){}, child: Text('SIGN UP ', style: TextStyle(color: Colors.white),)
                          , style:ElevatedButton.styleFrom(
                        maximumSize: Size(500, 100),
                        minimumSize: Size(300, 50),
                       backgroundColor: Colors.orange.shade800
                          ),),
        
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

