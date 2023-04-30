import 'package:flutter/material.dart';
import 'package:untitled21/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class  _LoginScreenState extends State<LoginScreen> {
  bool passToggle =true;
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child:SafeArea(
          child:Column(
            children: [
              SizedBox(height:10),
              Padding(
                padding:EdgeInsets.all(20),
                child:Image.asset('images/doctors.png')
              ),
              SizedBox(height:10),
            Padding(
                padding:EdgeInsets.all(12),
              child:TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('enter username'),
                  prefixIcon: Icon(Icons.person),

                  )
                ),
              ),
              Padding(
                padding:EdgeInsets.all(12),
                child:TextField(
                  obscureText: passToggle ? true : false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('enter username'),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                          if (passToggle =true){
                            passToggle = false;
                          }else{
                            passToggle = true;
                          }
                          setState(() {

                          });
                        },
                        child: passToggle
                            ? Icon(Icons.remove_red_eye_sharp)
                            : Icon(Icons.remove_red_eye_outlined)
                      )
                    )
                ),
              ),
              SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10),
                child:SizedBox(
                  width:double.infinity,
                  child:  Material(
                  color:Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                      onTap: () {
                        //  Navigator.push(context, MaterialPageRoute(
                        //     builder: (context) => LoginScreen(),
                        //  ));
                      },
                      child:Padding(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                         child: Center(
                          child:Text('log in',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                              ))
                      )
                  )
              ),
                )
                )
                ),



              SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('do not have any account?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                  )
                  ),
                  TextButton(
                      onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                             builder: (context) => SignUpScreen(),
                          ));
                      },
                      child: Text(''
                          'create account',
                          style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                            color: Colors.deepPurpleAccent
                      )
                      )
                  )
                ]
              )
            ]
            ),
        )
         )

          );


  }
}