import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls.dart';
import 'package:whatsapp_clone/screens/chats.dart';
import 'package:whatsapp_clone/screens/status.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
        child: Scaffold(
          backgroundColor: Colors.blueGrey[900].withOpacity(0.6),
          floatingActionButton: FloatingActionButton(
            elevation: 3,
            onPressed: (){},
            backgroundColor: Color(0xff128C7E),
            child: Icon(Icons.message_rounded),
          ),
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            elevation: 0,
            title: Text('WhatsApp',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey[200]),),
            actions: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.search_rounded,size: 28,),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert_outlined,size: 28,),
              ),
            ],
            bottom: TabBar(
              indicatorWeight: 3,
              labelColor: Color(0xff128C7E),
              unselectedLabelColor: Colors.grey[300],
              indicatorColor: Color(0xff128C7E),
              tabs: [
                // IconButton(icon: Icon(Icons.camera_alt_rounded,size: 25,), onPressed:(){}),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5,),
                  child: Text('CHATS',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text('STATUS',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text('CALLS',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Chats(),
              Status(),
              Calls(),
            ],
          ),
        )
    );
  }
}
