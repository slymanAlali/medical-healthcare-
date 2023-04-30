import 'package:flutter/material.dart';
import 'package:untitled21/screens/appointment_screen.dart';

class HomeScreen extends StatelessWidget {

  List symptoms = [
    'tmperature',
    'Snuffle',
    'Fever',
    'Cough',
    'Cold',
  ];
  List imgs = [
    'doctor1.jpg',
    'doctor2.jpg',
    'doctor3.jpg',
    'doctor4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:EdgeInsets.only(top:40),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'hello Allex',
                style:TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                )
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('images/doctor1.jpg'),
              )
            ]
          )
          ),
          SizedBox(height:30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
               child: Container(
                 padding: EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   color:Colors.deepPurpleAccent,
                   borderRadius: BorderRadius.circular(10),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black12,
                       blurRadius: 6,
                       spreadRadius: 4,
                     )
                   ]
                 ),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       padding:EdgeInsets.all(8),
                       decoration: BoxDecoration(
                      color: Colors.white,
                         shape: BoxShape.circle,
                       ),
                       child:Icon(Icons.add,
                       color:Colors.deepPurpleAccent,
                       size: 35,
                       )
                     ),
                     SizedBox(height:25),
                     Text('Clinic Visit',
                       style:TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w500,
                         color:Colors.white,
                       )
                     ),
                     SizedBox(height:5),
                Text('Make an Appointment',
                    style:TextStyle(
                      color:Colors.white54,
                    )
                )
                   ]
                 )
               ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            spreadRadius: 4,
                          )
                        ]
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding:EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child:Icon(Icons.home_filled,
                                color:Colors.deepPurpleAccent,
                                size: 35,
                              )
                          ),
                          SizedBox(height:25),
                          Text('Home Visit',
                              style:TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              //  color:Colors.white,
                              )
                          ),
                          SizedBox(height:5),
                          Text('Call the doctor name',
                              style:TextStyle(
                                color:Colors.black,
                              )
                          )
                        ]
                    )
                ),
              ),
            ]
          ),
          SizedBox(height:25),
          Padding(
            padding: EdgeInsets.only(left:15),
            child:Text(
              'What are your symptoms?',
           style:TextStyle(
               fontSize: 23,
              fontWeight: FontWeight.w500,
             color:Colors.black54,

            )
          )
          ),
          SizedBox(height:70,
           child: ListView.builder(
          shrinkWrap: true,
           scrollDirection: Axis.horizontal,
            itemCount: symptoms.length,
            itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal:15),
              padding:EdgeInsets.symmetric(horizontal:25),
              decoration:BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color:Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]
              ),
              child: Center(
                child:Text(symptoms[index],
              style:TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color:Colors.black54,
              )
              )
              )
            );
             }
            )
          ),
            SizedBox(height:15),
           Padding(
             padding:EdgeInsets.only(left:25),
              child:Text(
              'Popular Doctors',
          style:TextStyle(
          fontSize: 23,
           fontWeight: FontWeight.w500,
            color:Colors.black54,
           ),
           ),
           ),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
              ),
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) => AppointmentScreen()
                     ) );
                  },
                  child: Container(
                    margin:EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                      BoxShadow(
                      color:Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    )
                     ]
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('images/${imgs[index]}'),
                        ),
                        Text('Dr. Doctor Name',
                          style:TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color:Colors.black54,
                          ),
                        ),
                        Text('Therapist',
                        style:TextStyle(
                       // fontSize: 18,
                        // fontWeight: FontWeight.w500,
                        color:Colors.black54,
                        )
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star,
                            color:Colors.amber,

                            ),
                            Text(
                              '4.9',
                                style:TextStyle(
                              color:Colors.black45,
                                )
                            )
                          ]
                        )

                      ],
                    )

                  )
                );
            },
          )
        ]
      )
    );
  }
  }