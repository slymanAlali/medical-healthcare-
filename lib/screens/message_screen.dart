import 'package:flutter/material.dart';

import 'chat_screen.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context){

  List imgs = [
    'doctor1.jpg',
    'doctor2.jpg',
    'doctor3.jpg',
    'doctor4.jpg',
    'doctor2.jpg',
    'doctor1.jpg',
  ];
    return SingleChildScrollView(
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height:40),
        Padding(
          padding:EdgeInsets.symmetric(horizontal:20),
          child:Text(
            'Messages',
            style:TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            )
          )
        ),
        SizedBox(height:30),
        Padding(
            padding:EdgeInsets.symmetric(horizontal:15),
          child:Container(
            padding:EdgeInsets.symmetric(horizontal:15),
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color:Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 2,
                )
              ]
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 300,
                  child:Padding(
                    padding:EdgeInsets.symmetric(horizontal:15),
                    child:TextFormField(
                      decoration:InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none
                      )
                    )
                )
                ),
                Icon(Icons.search,
                color:Colors.deepPurple)
              ],
            )
          )
        ),
        SizedBox(height:20),
        Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
         child:Text('Active Now',
        style:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        ),
        SizedBox(height:10),
        SizedBox(height:90,
          child:ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: 6,
           itemBuilder: (context, index){
             return Container(
               margin:EdgeInsets.symmetric(horizontal:12),
               width:65,
               height:65,
               decoration: BoxDecoration(
                 shape:BoxShape.circle,
                 color:Colors.white,
                 boxShadow: [
                   BoxShadow(
                     color:Colors.black12,
                     spreadRadius: 2,
                     blurRadius: 10
                   )
                 ]
               ),
               child:Stack(
                 textDirection: TextDirection.rtl,
                 children:[
                   Center(child:Container(
                     height: 65,
                     width:65,
                     child:ClipRRect(
                       borderRadius: BorderRadius.circular(30),
                       child:Image.asset(
                         'images/${imgs[index]}',
                         fit: BoxFit.cover,
                       )
                     )
                   )),
                   Container(
                     padding: EdgeInsets.all(5),
                     margin: EdgeInsets.all(3),
                     height: 20,
                     width: 20,
                     decoration: BoxDecoration(
                       color:Colors.white,
                       shape: BoxShape.circle,
                     ),
                     child:Container(
                     decoration: BoxDecoration(
                     color:Colors.green,
                     shape: BoxShape.circle,
                     )
                     )
                   )
                 ]
               )
             );
           },
          )
        ),
        SizedBox(height:10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:20),
          child:Text('Recent Chats',
            style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          shrinkWrap: true,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.only(bottom:10),
              child: ListTile(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context) => ChatScreen(),));
                },
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  'images/${imgs[index]}',
                ),
              ),
              title: Text('dr. doctor name',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),
              subtitle: Text('hello, doctor are your there?',
                maxLines: 1,
                 overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  color:Colors.black54,
                ) ,
              ),
              trailing:Text(
                '12:30',
            style: TextStyle(
            fontSize: 16,
            color:Colors.black54,
            ),
              ),
              ),
            );
          },
        ),
      ],
    ),
    );
  }
}












