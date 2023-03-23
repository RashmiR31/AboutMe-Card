import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MaterialApp(
  home: RashmiCard(),
));

class RashmiCard extends StatefulWidget {
  const RashmiCard({Key? key}) : super(key: key);

  @override
  State<RashmiCard> createState() => _RashmiCardState();
}

class _RashmiCardState extends State<RashmiCard> {

  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        title: Text(
            "Rashmi R",
          style: TextStyle(
            color: Colors.blue.shade900,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink.shade200,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
              radius: 50.0 ,
            ),
            Divider(height: 60.0,color: Colors.pink.shade200,),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.pink.shade700,),
                const SizedBox(width: 10.0,),
                const Text(
                  "CONTACT :",
                  style: TextStyle(
                    color: Colors.pink,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(width: 10.0,),
                const Text(
                  "9945841082",
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.pin_drop,
                  color: Colors.pink.shade700,
                ),
                const SizedBox(width: 10.0,),
                const Text(
                  "ADDRESS :",
                  style: TextStyle(
                    color: Colors.pink,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(width: 10.0,),
                const Text(
                  "53, Pristine Hill View Elitus Euphoria, Bangalore",
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children:  [
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.instagram),
                ),
                Text("Profile Views: $counter"),
              ],
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter+=1;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}


