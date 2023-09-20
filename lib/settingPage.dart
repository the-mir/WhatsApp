import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class settingPage extends StatelessWidget {
  const settingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/img.jpg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text('Mir Mosarof Hossan',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              ' ¯\_(ツ)_/¯ ',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black45,
                              ),
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.key),
                ),
                title: Text('Account',style: TextStyle(fontSize: 20),),
                subtitle: Text('Security notifications, change number'),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.lock),
                ),
                title: Text('Privacy',style: TextStyle(fontSize: 20),),
                subtitle: Text('Block contacts, disappeanring messages'),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.man),
                ),
                title: Text('Avatar',style: TextStyle(fontSize: 20),),
                subtitle: Text('Create, edit, Profile photo'),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.message),
                ),
                title: Text('Chats',style: TextStyle(fontSize: 20),),
                subtitle: Text('Theme, wallpapers, chat history'),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.notifications),
                ),
                title: Text('Notifications',style: TextStyle(fontSize: 20),),
                subtitle: Text('Message, group & call tones'),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.storage),
                ),
                title: Text('Storage and data',style: TextStyle(fontSize: 20),),
                subtitle: Text('Network usage, auto-download'),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.language),
                ),
                title: Text('App language',style: TextStyle(fontSize: 20),),
                subtitle: Text('English(devices language)'),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.help_outline_outlined),
                ),
                title: Text('Help',style: TextStyle(fontSize: 20),),
                subtitle: Text('Help centre, contact us, privacy policy'),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(Icons.people),
                ),
                title: Text('Invite a friend',style: TextStyle(fontSize: 20),),
        
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 60,
                ),
                child: Column(
                  children: [
                    Text('from'),
                    Text('Meta',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    )
                  ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}