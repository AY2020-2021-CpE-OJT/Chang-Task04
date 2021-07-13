import 'package:flutter/material.dart';

class NoContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.person_outlined,
              size: 80,
              ),
            Text(
              'No contacts',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      );
  }
}