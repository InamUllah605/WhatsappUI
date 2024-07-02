import 'package:flutter/material.dart';

class WAHomeScreenTwo extends StatefulWidget {
  String title;
  String sutitle;
   WAHomeScreenTwo({super.key,required this.title,required this.sutitle,});

  @override
  State<WAHomeScreenTwo> createState() => _WAHomeScreenTwoState();
}

class _WAHomeScreenTwoState extends State<WAHomeScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,

        title: ListTile(
          title: Text(widget.title,style: TextStyle(color: Colors.white),),
        ),
        actions: [Icon(Icons.video_call_rounded,color: Colors.white,),
          SizedBox(width: 20,),
        Icon(Icons.call,color: Colors.white,),
          SizedBox(width: 20,),
          Icon(Icons.more_vert,color: Colors.white,),
        ],

      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ListTile(
            title: Text(widget.title,style: TextStyle(color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,bottom: 40,top: 580),
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(child: Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: Text(widget.sutitle,style: TextStyle(fontSize: 17),),
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
