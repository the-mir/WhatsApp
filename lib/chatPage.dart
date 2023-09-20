import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class chatPage extends StatelessWidget {
  const chatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        title: Padding(
          padding: EdgeInsets.only(top: 5),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('assets/images/img.jpg',
                    height: 40,
                    width: 40,
                    ),
                  ),
                 
                ],
              ),
               Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mir Mosarof Hossan',
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Online',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 8.0,right: 10),
            child: Icon(Icons.video_call,size: 30,),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0,right: 5),
            child: Icon(Icons.call,size: 30,),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0,right: 10),
            child: Icon(Icons.more_vert,size: 30,),
          ),
        ],
      ),
    );
  }
}