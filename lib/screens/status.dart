import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chatItem.dart';

class Status extends StatelessWidget {
  const Status({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.person),radius: 25,),
          title: Text('My Status',style: TextStyle(fontSize: 16,color: Colors.white),),
          subtitle: Text('Tap to add status update',style: TextStyle(fontSize: 14,color: Colors.grey)),
        ),
        Container(
          height: 20,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 15),
          child: Text('Recent updates',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500)),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: StatusTile.status.length,
            itemBuilder: (BuildContext context,index){
               return StatusUpdate(stats: StatusTile.status[index],);
               },
          ),
        ),
      ],
    );
  }
}


class StatusUpdate extends StatelessWidget {
  final Item stats;
  const StatusUpdate({Key key,this.stats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
                onTap: (){},
                leading: DottedBorder(
                  color: Colors.teal[500],
                  borderType: BorderType.Circle,
                  strokeWidth: 3,
                  dashPattern: [80,0],
                  child: CircleAvatar(child:Icon(Icons.person),radius: 25,),
                ),
                title: Text(stats.statusName,style: TextStyle(fontSize: 16,color: Colors.white)),
                subtitle: Text(stats.statusDesc,style: TextStyle(fontSize: 14,color: Colors.grey)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80,right: 10,),
          child: Divider(thickness: 0.2,color: Colors.grey.withOpacity(0.7),height: 15,),
        )
      ],
    );
  }
}
