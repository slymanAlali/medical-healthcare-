import 'package:flutter/material.dart';
import 'package:untitled21/widgets/upcoming_schedule.dart';


class ScheduleScreen extends StatefulWidget {
  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}
class  _ScheduleScreenState extends State<ScheduleScreen> {
int _buttonIndex = 0;
final _schedulWidgets = [
  // Upcoming Widget
  UpcomingSchedule(),
 //  Completed Widget
  Container(),
  // Canceled Widget
  Container(),

];
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:Padding(
        padding:EdgeInsets.only(top:40),
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
    Padding(
    padding:EdgeInsets.symmetric(horizontal:15),
      child:Text(
        'Schedule',
        style:TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w500,
        )
      )
    ),
        SizedBox(height:20),
        Container(
          padding:EdgeInsets.all(5),
          margin:EdgeInsets.symmetric(horizontal:10),
          decoration:BoxDecoration(
            color:Colors.white24,
            borderRadius: BorderRadius.circular(10),
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children:[
               InkWell(
                 onTap:() {
                   setState(() {
                  _buttonIndex = 0;
                   });
                 },
                 child:Container(
                 padding:EdgeInsets.symmetric(vertical:12,horizontal:25),
                     decoration:BoxDecoration(
                      color: _buttonIndex ==0
                         ? Colors.deepPurple
                         : Colors.transparent,
                       borderRadius: BorderRadius.circular(10),
                 ),
                   child:Text(
                     'Upcoming',
                     style:TextStyle(
                       fontWeight:FontWeight.w500,
                       fontSize:16,
                       color: _buttonIndex == 2
                           ? Colors.white
                           : Colors.black38,
                     ),
                   ),
               ),
               ),
                InkWell(
                  onTap:() {
                    setState(() {
                      _buttonIndex = 1;
                    });
                  },

                  child:Container(
                    padding:EdgeInsets.symmetric(vertical:12,horizontal:25),
                    decoration:BoxDecoration(
                      color: _buttonIndex == 1
                          ? Colors.deepPurple
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Text(
                      'Completed',
                      style:TextStyle(
                        fontWeight:FontWeight.w500,
                        fontSize:16,
                        color: _buttonIndex == 1
                            ? Colors.white
                            : Colors.black38,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap:() {
                    setState(() {
                      _buttonIndex = 2;
                    });
                  },
                  child:Container(
                    padding:EdgeInsets.symmetric(vertical:12,horizontal:25),
                    decoration:BoxDecoration(
                      color: _buttonIndex == 2
                          ? Colors.deepPurple
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Text(
                      'Canceled',
                      style:TextStyle(
                        fontWeight:FontWeight.w500,
                        fontSize:16,
                        color: _buttonIndex == 2
                            ? Colors.white
                            : Colors.black38,

                      ),
                    ),
                  ),
                )
              ]
          )
        ),
        SizedBox(height:30),
        _schedulWidgets[_buttonIndex],


      ]
    )
        )
    );
  }
}








