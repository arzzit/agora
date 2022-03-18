import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'call.dart';

class Homepage extends StatefulWidget {

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  String channelname='';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 70.0,horizontal: 20.0),
              child: Text('Channel name : ',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),

            ),
            SizedBox(
              width: 150.0,
              child: TextField(
                obscureText: false,
                onChanged: (newvalue){
                  setState(() {
                    channelname=newvalue;
                  });
                },
              ),
            )
          ],
        ),
        Container(
          child: ElevatedButton(
            child: Text('Enter'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.teal),
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15.0,horizontal: 30.0))
            ),
            onPressed: (){
              Call();
            }
          ),
        )
      ],
    );
  }
}
