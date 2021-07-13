
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'api.dart';
import 'createcontact.dart';
import 'no_contacts.dart';




class ContactScreen extends StatefulWidget {
  ContactScreen({Key? key, required this.title}) : super(key: key);


  final String title;
  //testing v
  final ContactsApi api = ContactsApi();

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List contacts = [];
  bool loading = true;
/*
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.api.getContacts().then((data){
        setState(() {
          contacts = data;
          loading = false;
        });
    });
  }

  */

  void _addContact() {
    setState(() {
  
     //contacts.add(data);
    // fetchUser();
    });
  }
  /*
  fetchUser() async {
      var url = BaseOptions(baseUrl: 'http//localhost:8081/');
      var response = await http.get(url);
  }
  */
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: getBody(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){},
            tooltip: 'Refresh',
            backgroundColor: Colors.pink,
            child: Icon(Icons.refresh),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
              createContact()));
            },
            tooltip: 'Add new contact',
            child: Icon(Icons.person_add),
          ),
        ],
      ), 
    );
  }
  Widget getBody(){
    List items = ["1","2"];
    return ListView.builder(
      itemCount: items.length,
    itemBuilder: (context, index){
     
      return getCard();
    }); 
  }
  Widget getCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(60/2),
                )
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text('Cleo Jon supapo',),
                  SizedBox(height: 10,),
                  Text('091123123123')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  

}
