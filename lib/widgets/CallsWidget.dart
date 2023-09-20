import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        child: Column(
          children: [
            for(int i=0;i<6;i++)
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 12.0
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      'assets/images/nurim.jpg',
                      height: 55,
                      width: 55,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text(
                            'Sumaiya Nurim',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              Icon(Icons.call_made,
                              color: Colors.greenAccent,
                              size: 18,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '(2) Today, 11:00 pm',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          )
                      ],
                    ), 
                  ),
                  Spacer(),
                  Container(
                    child: Icon(Icons.call_sharp,
                    color: Colors.greenAccent,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}