import 'package:flutter/material.dart';

class createContact extends StatefulWidget {
 

  @override
  _createContactState createState() => _createContactState();
}

class _createContactState extends State<createContact> {
    final TextEditingController _controllerFullname = new TextEditingController();
    
    final TextEditingController _controllerphonenumber = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Contact'),
        centerTitle: true,
      ),
      body: getBody(),
    );
  }

  Widget getBody(){
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        SizedBox(height: 20,),
        TextField(
          controller: _controllerFullname,
          decoration: InputDecoration(
            hintText: "Fullname"
          ),
        ),
         SizedBox(height: 20,),
        TextField(
          controller: _controllerFullname,
          decoration: InputDecoration(
            hintText: "Phonenumber"
          ),
        ),
        SizedBox(height: 20,),
        TextButton(onPressed: (){}, child: Text('Submit')),
      ],
    );
  }
}