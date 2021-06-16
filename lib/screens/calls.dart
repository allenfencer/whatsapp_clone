import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chatItem.dart';

class Calls extends StatelessWidget {
  const Calls({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: CallTile.call.length,
          itemBuilder: (BuildContext context, index){
            return CallList(callDetail: CallTile.call[index]);
          },
    );
  }
}


class CallList extends StatelessWidget {
  final Item callDetail;
  const CallList({Key key, this.callDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){},
          leading: CircleAvatar(child: Icon(Icons.person),radius: 25,),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(callDetail.callerName,style: TextStyle(fontSize: 16,color: Colors.white),),
          ),
          subtitle: Row(
            children: [
              Icon(callDetail.callMessageIcon,color: callDetail.callIconColor,size: 15,),
              SizedBox(width: 10,),
              Text(callDetail.callMessage,style: TextStyle(fontSize: 14,color: Colors.grey)),
            ],
          ),
          trailing: Icon(callDetail.callIcon,color: callDetail.callIconColor,size: 24,),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80,right: 10),
          child: Divider(thickness: 0.2,color: Colors.grey.withOpacity(0.7),height: 15,),
        ),
      ],
    );
  }
}

