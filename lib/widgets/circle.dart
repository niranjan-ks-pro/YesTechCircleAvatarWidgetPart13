import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar
        appBar: AppBar(
          //text
          title: const Text("circleavatar"),
          centerTitle: true,
          //BG colour
          backgroundColor: const Color.fromARGB(255, 8, 153, 27),

          //leading
          leading: Icon(Icons.home),
          //Actions
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],

          //elevation
          elevation: 30,
        ),
        body: ListView(children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: const Color.fromARGB(255, 2, 9, 22),
                    child: CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.green,
                      child: Text(
                        "SING IN",
                        style: TextStyle(fontSize: 30),
                      ),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 90,
                    child: Icon(
                      Icons.verified_user,
                      size: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('images/messi.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('images/ronaldo.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('images/neymar.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      radius: 90,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbwjYZAdCWNfAMR1CdKQ0wHxJYx1ST-HVdjA&usqp=CAU')),
                ),
              ],
            ),
          ),
        ]));
  }
}
