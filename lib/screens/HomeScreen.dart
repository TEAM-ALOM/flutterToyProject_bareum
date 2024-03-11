
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/screens/WriteToDoList.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  onArrowDownTap() async {

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[100],

      appBar: AppBar(

        backgroundColor: Colors.amberAccent[100],

        title:
            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Icon(Icons.check),

                SizedBox(width: 5,),

                Text(
                  'ToDoList',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],

            ),


        actions: [
          IconButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => Write()),
            );
          },
              icon: Icon(
                  Icons.add,
              ),
            iconSize: 25,
          )
        ],

        centerTitle: true,
      ),

      body: Container(

        child:
            Padding(

            padding: EdgeInsets.all(15),

      child: Column(

        children: [

          SizedBox(
              height: 10,
          ),
          Row(
            children: [
            Text('오늘의 할 일',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
          ),
              SizedBox(width: 255,),
            IconButton(onPressed: onArrowDownTap,
            icon: Icon(
                Icons.keyboard_arrow_down_outlined),
          ),
      ],
          ),

          SizedBox(height: 30,),
          Row(
            children: [
              Text('일주일 간 해야 할 일',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
              SizedBox(width: 210,),
              IconButton(onPressed: onArrowDownTap,
                icon: Icon(
                    Icons.keyboard_arrow_down_outlined),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(

            children: [

              Text('이번 달의 할 일',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
              SizedBox(width: 240,),
              IconButton(onPressed: onArrowDownTap,
                icon: Icon(
                    Icons.keyboard_arrow_down_outlined),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              Text('지금 할 일',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
              SizedBox(width: 270,),
              IconButton(onPressed: onArrowDownTap,
                icon: Icon(
                    Icons.keyboard_arrow_down_outlined),
              ),
            ],
          ),
        ],
      ),
      )
    )
        );




  }
}