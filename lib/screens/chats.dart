import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chatItem.dart';

class Chats extends StatelessWidget {
  const Chats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ChatTile.chat.length,
      itemBuilder: (BuildContext context,index){
        return ChatList(details: ChatTile.chat[index],);
      },
    );
  }
}


class ChatList extends StatelessWidget {
  final Item details;
  const ChatList({Key key, this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){},
          leading: CircleAvatar(child: Icon(Icons.person),radius: 25,),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(details.name,style: TextStyle(fontSize: 16,color: Colors.white),),
          ),
          subtitle: Text(details.message,style: TextStyle(fontSize: 14,color: Colors.grey)),
          trailing: Text(details.day,style: TextStyle(fontSize: 12,color: Colors.grey)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80,right: 10),
          child: Divider(thickness: 0.2,color: Colors.grey.withOpacity(0.7),height: 15,),
        )
      ],
    );
  }
}


