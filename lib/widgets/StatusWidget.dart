import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

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
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: Colors.grey,
                        width: 3,
                      )
                    ),
                    padding: EdgeInsets.all(1.2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/img.jpg',
                      height: 55,
                      width: 55,
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Status',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Today, 11:00 pm',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ), 
                  ),
                  Spacer(),
                  Container(
                    child: Icon(Icons.more_vert,
                    color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent Updates',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.8)

                ),
              ),
            ),
            for(int i=0;i<4;i++)
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border:Border.all(
                        color: Colors.grey,
                      ) ,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/nurim.jpg',
                      height: 55,
                      width: 55,
                      fit: BoxFit.cover,
                      ),
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
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Today, 11:00 pm',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
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