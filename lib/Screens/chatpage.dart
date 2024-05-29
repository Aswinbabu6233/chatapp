import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Chatpage extends StatelessWidget {
  Chatpage({super.key});
  var users = [
    {
      'name': "Abin",
      'phone': 9087654321,
      'pic': "assets/images/profile1.jpeg",
      "time": 1.20,
      "unread": 2
    },
    {
      'name': "Biya",
      'phone': 9988776655,
      'pic': "assets/images/profile2.jpeg",
      "time": 11.15,
      "unread": null
    },
    {
      'name': "Cera",
      'phone': 9087433321,
      'pic': "assets/images/profile3.jpeg",
      "time": 2.30,
      "unread": 2
    },
    {
      'name': "Vinu",
      'phone': 9087654321,
      'pic': "assets/images/profile4.jpeg",
      "time": 11.30,
      "unread": 2
    },
    {
      'name': "Arjun",
      'phone': 9187654321,
      'pic': "assets/images/profile5.jpeg",
      "time": 5.45,
      "unread": 1
    },
    {
      'name': "Dona",
      'phone': 99347654321,
      'pic': "assets/images/profile6.jpeg",
      "time": 5.00,
      "unread": null
    },
    {
      'name': "Biya",
      'phone': 9988776655,
      'pic': "assets/images/profile2.jpeg",
      "time": 11.15,
      "unread": null
    },
    {
      'name': "Cera",
      'phone': 9087433321,
      'pic': "assets/images/profile3.jpeg",
      "time": 2.30,
      "unread": 2
    },
    {
      'name': "Vinu",
      'phone': 9087654321,
      'pic': "assets/images/profile4.jpeg",
      "time": 11.30,
      "unread": 2
    },
    {
      'name': "Arjun",
      'phone': 9187654321,
      'pic': "assets/images/profile5.jpeg",
      "time": 5.45,
      "unread": 1
    },
    {
      'name': "Dona",
      'phone': 99347654321,
      'pic': "assets/images/profile6.jpeg",
      "time": 5.00,
      "unread": null
    },
    {
      'name': "Biya",
      'phone': 9988776655,
      'pic': "assets/images/profile2.jpeg",
      "time": 11.15,
      "unread": null
    },
    {
      'name': "Cera",
      'phone': 9087433321,
      'pic': "assets/images/profile3.jpeg",
      "time": 2.30,
      "unread": 2
    },
    {
      'name': "Vinu",
      'phone': 9087654321,
      'pic': "assets/images/profile4.jpeg",
      "time": 11.30,
      "unread": 2
    },
    {
      'name': "Arjun",
      'phone': 9187654321,
      'pic': "assets/images/profile5.jpeg",
      "time": 5.45,
      "unread": 1
    },
    {
      'name': "Dona",
      'phone': 99347654321,
      'pic': "assets/images/profile6.jpeg",
      "time": 5.00,
      "unread": null
    },
    {
      'name': "Neenu",
      'phone': 9087654321,
      'pic': "assets/images/profile7.jpeg",
      "time": 7.30,
      "unread": null
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chat with\nyour friends",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "R E C E N T",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          users.length,
                          (index) => Container(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 32,
                                      backgroundImage:
                                          AssetImage('${users[index]['pic']}'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${users[index]['name']}",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    )
                                  ],
                                ),
                              )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              color: Colors.blueGrey,
              width: double.infinity,
              height: 541,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage('${users[index]['pic']}'),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: users.length),
            )
          ],
        ),
      ),
    );
  }
}
