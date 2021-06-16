import 'package:flutter/material.dart';

class Item{
  final String name;
  final String message;
  final String day;
  final String imageUrl;

  final String callerName;
  final String callMessage;
  final IconData callMessageIcon;
  final IconData callIcon;
  final Color callIconColor;

  final String statusName;
  final String statusDesc;

  Item({this.name, this.message, this.day, this.imageUrl,this.callIcon,this.callerName,this.callMessageIcon,this.callMessage,this.callIconColor,this.statusDesc,this.statusName});
}

class ChatTile{
  static List chat=[
    Item(name: 'Kiliii',message: 'do if you know the answers',day: '9:09pm',imageUrl: ''),
    Item(name: 'wasil',message: 'Ok bro',day: '9:01pm', imageUrl: ''),
    Item(name: 'sabari engineer',message: 'Ninte app enthaayi',day: '7:41pm',imageUrl: ''),
    Item(name: 'INTERNSHIP GROUP',message: '+09235135132 left',day: '6:01pm', imageUrl: ''),
    Item(name: 'Official CS1 Group',message: 'vinny maam: Please join for COA',day: 'Yesterday', imageUrl: ''),
    Item(name: 'vetta valiyan joel',message: 'Thakarkanam',day: 'Yesterday', imageUrl: ''),
    Item(name: 'melvin',message: 'danku',day: 'Yesterday', imageUrl: ''),
    Item(name: 'nidhin',message: 'coming???',day: 'Yesterday', imageUrl: ''),
    Item(name: 'aaron monna',message: 'Mm bye',day: 'Yesterday', imageUrl: ''),
  ];
}

class CallTile{
  static List call=[
    Item(callerName: 'arshak',callMessage: '21 minutes ago',callIcon: Icons.call,callIconColor: Color(0xff128C7E),callMessageIcon: Icons.call_made),
    Item(callerName: 'sabari engineer',callMessage: '28 minutes ago',callIcon: Icons.call,callIconColor: Color(0xff128C7E),callMessageIcon: Icons.call_made),
    Item(callerName: 'Kiliii',callMessage: '(2) Today, 4:04 pm',callIcon: Icons.call,callIconColor: Color(0xff128C7E),callMessageIcon: Icons.call_made),
    Item(callerName: 'Mummy',callMessage: '(2) Yesterday, 10:39 pm',callIcon: Icons.videocam_rounded,callIconColor: Color(0xff128C7E),callMessageIcon: Icons.call_made),

  ];
}

class StatusTile{
  static List status=[
    Item(statusName: 'don kora',statusDesc: '7 minutes ago'),
    Item(statusName: 'aaron cs2',statusDesc: '10 minutes ago'),
    Item(statusName: 'salman',statusDesc: '27 minutes ago'),
    Item(statusName: 'agnel',statusDesc: 'Today, 5:27 pm'),
  ];
}