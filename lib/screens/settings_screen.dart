import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:Padding(
      padding:EdgeInsets.only(top:50,left:20,right:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(
            'Settings',
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
          )
          ),
          SizedBox(height:30),
          ListTile(
            leading:CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/doctor2.jpg'),
            ),
            title:Text(
              'dr.doctor name',
              style:TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25,

              )
            ),
            subtitle: Text('profule'),
          ),
          Divider(height:40),
          ListTile(
            onTap:() {},
            leading:Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color:Colors.blue.shade100,
                shape: BoxShape.circle,
              ),
              child:Icon(CupertinoIcons.person,
              color:Colors.blue,
              )
              ),
            title:Text('Profile',
            style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            )),
            trailing:Icon(Icons.arrow_back_ios_rounded),
          ),
          SizedBox(height:10),
          ListTile(
            onTap:() {},
            leading:Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:Colors.deepPurple.shade100,
                  shape: BoxShape.circle,
                ),
                child:Icon(Icons.notifications_none_outlined,
                  color:Colors.blue,
                )
            ),
            title:Text('Notifications',
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
            trailing:Icon(Icons.arrow_back_ios_rounded),
          ),
          SizedBox(height:10),
          ListTile(
            onTap:() {},
            leading:Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:Colors.purple.shade100,
                  shape: BoxShape.circle,
                ),
                child:Icon(Icons.privacy_tip_outlined,
                  color:Colors.purple,
                )
            ),
            title:Text('Privacy',
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
            trailing:Icon(Icons.arrow_back_ios_rounded),
          ),
          SizedBox(height:10),
          ListTile(
            onTap:() {},
            leading:Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:Colors.green.shade100,
                  shape: BoxShape.circle,
                ),
                child:Icon(
                  Icons.info_outline_rounded,
                  color:Colors.green,
                )
            ),
            title:Text('general',
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
            trailing:Icon(Icons.arrow_back_ios_rounded),
          ),
          SizedBox(height:10),
          ListTile(
            onTap:() {},
            leading:Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:Colors.orange.shade100,
                  shape: BoxShape.circle,
                ),
                child:Icon(Icons.notifications_none_outlined,
                  color:Colors.orange,
                )
            ),
            title:Text('About us',
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
            trailing:Icon(Icons.arrow_back_ios_rounded),
          ),
          Divider(height:25),
          SizedBox(height:10),
          ListTile(
            onTap:() {},
            leading:Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:Colors.red.shade100,
                  shape: BoxShape.circle,
                ),
                child:Icon(Icons.logout,
                  color:Colors.redAccent,
                )
            ),
            title:Text('log out',
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
            trailing:Icon(Icons.arrow_back_ios_rounded),
          ),



        ],
      )
        )
    );
  }
}
















