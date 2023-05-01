import "package:flutter/material.dart";

void main () => runApp(MaterialApp(
  home: CardId(),
));


class CardId extends StatefulWidget {
  @override
  State<CardId> createState() => _CardIdState();
}

class _CardIdState extends State<CardId> {

  /// variables
  int currentLevel = 1;

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("My Card ID"),C:\Users\sok-hs\StudioProjects\id_card
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/cat-profile.png"),
                radius: 40.0,
              ),
            ),
            const Divider(
              height: 90.0,
              color: Colors.white,
            ),
            // const SizedBox(height: 10.0,),
            const Text(
              "NAME" ,
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              "Sok HS" ,
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30.0,),

            const Text(
              "CURRENT LEVEL" ,
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              "$currentLevel" ,
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30.0,),

            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 5.0,),
                Text(
                  "hengsokhs1333@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Running");
          setState(() {
            currentLevel++;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}