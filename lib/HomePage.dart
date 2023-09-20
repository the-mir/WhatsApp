import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui/widgets/CallsWidget.dart';
import 'package:whatsapp_ui/widgets/StatusWidget.dart';

import 'widgets/ChatsWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 4, 
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'WhatsApp',
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 21,right: 15),
                child: Icon(Icons.camera_alt_sharp),
              ),
              Padding(
                padding: EdgeInsets.only(top: 21, right: 0),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (selected) {
                  if(selected == 5){
                     Navigator.pushNamed(context, 'settingPage');
                  }
                },
                  padding: EdgeInsets.only(top: 21,right: 2),
                  iconSize: 28,
                  itemBuilder: (context) => [
                        PopupMenuItem(
                            value: 1,
                            child: Text(
                              'New Group',
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.w500),
                            )
                            ),
                            PopupMenuItem(
                            value: 2,
                            child: Text(
                              'New broadcast',
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.w500),
                            )
                            ),
                            PopupMenuItem(
                            value: 3,
                            child: Text(
                              'Linked devices',
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.w500),
                            )
                            ),
                            PopupMenuItem(
                            value: 4,
                            child: Text(
                              'Starred messages',
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.w500),
                            )
                            ),
                            PopupMenuItem(
                            value: 5,
                            child: Text(
                              'Settings',
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.w500),
                            )
                            )
                      ]),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 33, 37, 37),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                tabs: [
                  //tab_1
                   Container(
                    width: 30.0,
                    //height: 25.0,
                    child: Tab(child: Icon(Icons.people_alt)),
                   ),
                   //tab_2
                   Container(
                    height: 90.0,
                    child: Tab(
                      child: Row(
                        children: [
                          Text(
                            'Chats'
                          ),
                          //tab_3
                          Container(
                            height: 22.0,
                            width: 22.0,
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            
                            child: Text('10',textAlign: TextAlign.center,style: TextStyle(
                              color:Color(0xFF075E55),
                              fontSize: 14,
                            ),),
                          )
                        ],
                      ),
                    ),
                   ),
                   //tab_4
                   Container(width: 95.0,child: Tab(child: Text('Status'),),),
                   //tab_5
                   Container(width: 95.0,child: Tab(child: Text('Calls'),),)
                ]
                ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
              children: [
                //tab_1
                 Container(color: Colors.black,),
                 //tab_2
                 ChatsWidget(),
                 //tab_3
                 StatusWidget(),
                 //tab_4
                 CallsWidget()
              ]
   
            ))
          ],
        ),
      ),
       
    );
  }
}
