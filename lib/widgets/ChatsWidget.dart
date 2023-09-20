import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
         horizontal: 15,
         vertical: 5
        ),
        child: Column(
          children: [
            for(int i=1;i<=100;i++)
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'chatPage');
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 12
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.asset('assets/images/img.jpg',
                      height: 65,
                      width: 65,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          'Mir Mosarof Hossan ${i}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Hello, Mir , How are you? '
                            )
                        ],
                      ) ,
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            '11:00',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 27.0,
                            height: 27.0,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '2',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          )
                        ],
                      )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}