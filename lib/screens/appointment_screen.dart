import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  List imgs = [
    'doctor1.jpg',
    'doctor1.jpg',
    'doctor1.jpg',
    'doctor1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:20),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 10),
             child: Stack(
               children:[
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                   onTap: () {
                   Navigator.pop(context);
                   },
                  child:Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 25,
                  )
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 25,
                    )
                ),
              ]
             ),
                 Padding(
                   padding:EdgeInsets.symmetric(vertical:10),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     CircleAvatar(radius: 35,
                       backgroundImage: AssetImage('images/doctor1.jpg'),
                     ),
                      SizedBox(height:10),
                      Text(
                        'dr.doctor name',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color:Colors.white,
                        )
                      ),
                      SizedBox(height:5),
                      Text(
                          'Therapist',
                          style: TextStyle(
                         //   fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color:Colors.white,
                          )
                      ),
                      SizedBox(height:20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color:Colors.white24,
                              shape:BoxShape.circle,
                            ),
                                child:Icon(
                                  Icons.call,
                                  color: Colors.white,
                                  size: 25,
                                )
                          ),
                          SizedBox(width:5),
                Container(
                    padding:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color:Colors.white24,
                        shape:BoxShape.circle,
                     ),
                      child: Icon(
                        CupertinoIcons.chat_bubble_text_fill,
                        color:Colors.white,

                      )
                     )
                        ]
                      )
                    ]
                  )
                 )
             ]
             )
            ),
            SizedBox(height:8),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width:double.infinity,
             padding: EdgeInsets.only(
               top:20,
               left:15,
             ),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children:[
                 Text(
                   'About doctor',
               style: TextStyle(
                   fontSize: 18,
                  fontWeight: FontWeight.w500,
               )
                 ),
                  SizedBox(height:5),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typest idustry',
                      style: TextStyle(
                        fontSize: 18,
                        color:Colors.black54,
                      ),
                  ),
                  SizedBox(height:10),
                  Row(
                    children:[
                  Text(
                      'Reviews',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )
                  ),
                  SizedBox(width:10),
                  Icon(Icons.star,
                  color:Colors.amber),
                  Text(
                      '4.9',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )
                  ),
                      SizedBox(width:5),
                      Text(
                          '(124)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color:Colors.deepPurpleAccent,
                          )
                      ),
                      Spacer(),
                      TextButton(onPressed: () {},
                          child: Text('see all',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color:Colors.deepPurpleAccent,
                              )
                          ),
                          )
                         ]
                      ),
                  SizedBox(height:140,
                    child:ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          padding:EdgeInsets.symmetric(vertical:5),
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
                          child:SizedBox(
                            width:MediaQuery.of(context).size.width/1.4,
                            child: Column(
                              children:[
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage('images/${imgs[index]}'),
                                  ),
                                  title:Text(
                                    'dr.doctor name',
                                    style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
                                  subtitle: Text('1 day ago'),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children:[
                                      Icon(Icons.star,
                                      color:Colors.amber,
                                      ),
                                        Text(
                                          '4.9',
                                            style:TextStyle(
                                              color:Colors.black54,
                                            )
                                        )
                                      ]
                                  ),
                                ),
                                SizedBox(height:5),
                                Padding(padding:EdgeInsets.symmetric(horizontal:10 ),
                               child:Text(
                                   'many thanks to dr dear. He is great and professional doctor',
                               style:TextStyle(
                                color:Colors.black,
                               ))
                                )
                                    ]

                            )
                          )
                        );
                      },
                    ),
                  ),
                  SizedBox(height:8),
                  Text('Location',
                  style:TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )),
                  ListTile(
                    leading:Container(
                      padding:EdgeInsets.all(10),
                      decoration: BoxDecoration(
                      color:Colors.white,
                      shape: BoxShape.circle,
                    ),
                      child:Icon(
                        Icons.location_on,
                        color:Colors.deepPurpleAccent,
                        size: 30,
                      ),
                    ),
                    title:Text(
                      'New York, Medical Center',
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                    )
                  ),
                    subtitle: Text('Address line of the medical center'),
                  )
              ],
            ),
            ),
          ],
        ),
      ),

        bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 120,
        decoration: BoxDecoration(
          color:Colors.white,
          boxShadow: [
            BoxShadow(
              color:Colors.black12,
              blurRadius: 4,
              spreadRadius: 2,
            )
          ]
        ),
        child:Column(
          children:[
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:[
               Text('consultation price',
               style:TextStyle(
                 color:Colors.black54,
               )),
               Text('\$100',
                   style:TextStyle(
                     color:Colors.black54,
                     fontWeight: FontWeight.bold,
                   )
               )
             ]
           ),
            SizedBox(height:10),
            InkWell(
              onTap: () {},
              child:Container(
                width:MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical:18),
                decoration: BoxDecoration(
                  color:Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child:Text(
                    'Book Appointment',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color:Colors.white,
                      )
                  )
                )
              )
            )
          ]
        )
      ),
    );
  }
}











