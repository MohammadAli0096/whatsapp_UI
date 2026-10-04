import 'package:flutter/material.dart';

final List<Map<String, String>> chats = [
  {
    "name": "Ahmed Raza",
    "msg": "Assalam o Alaikum, kya haal hai?",
    "time": "10:23 AM",
  },
  {"name": "Bilal Khan", "msg": "Script kal tak bhej dena", "time": "9:58 AM"},
  {"name": "Usman Ali", "msg": "Shoot ka time kya hai?", "time": "9:15 AM"},
  {"name": "Hamza Sheikh", "msg": "Theek hai, ho jayega", "time": "8:40 AM"},
  {"name": "Fatima", "msg": "Episode ka edit dekh lo", "time": "Yesterday"},
  {"name": "Zainab", "msg": "Jazak Allah", "time": "Yesterday"},
  {
    "name": "Madani Kids",
    "msg": "Nayi segment ki script ready hai",
    "time": "Yesterday",
  },
  {"name": "Office Group", "msg": "Kal meeting 11 baje hai", "time": "Tuesday"},
  {"name": "Abdullah", "msg": "Bhai call karna zara", "time": "Tuesday"},
  {"name": "Hassan", "msg": "Photos bhej di hain", "time": "Monday"},
  {"name": "Ammi", "msg": "Ghar kab aaoge?", "time": "Monday"},
  {"name": "Saad", "msg": "Shukriya bhai", "time": "Sunday"},
  {"name": "Sara", "msg": "Mere paisy wapas do", "time": "Sunday"},
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "WhatsApp",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.green,
              ),
            ),
            Row(
              children: [
                Icon(Icons.camera_alt_outlined, color: Colors.black),
                SizedBox(width: 15),
                Icon(Icons.more_vert, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(179, 229, 226, 226),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Text("Search", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "All",
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 81, 81, 81),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Unread 0",
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 81, 81, 81),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Favorites",
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 81, 81, 81),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),

                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Groups 3",
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 81, 81, 81),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blueGrey,
                    child: Text(
                      chat["name"]![0],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  title: Text(
                    chat["name"]!,
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    chat["msg"]!,
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Text(
                    chat["time"]!,
                    style: const TextStyle(color: Colors.grey),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.chat, color: Colors.grey),
                Text(
                  'Chat',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.motion_photos_on, color: Colors.grey),
                Text(
                  'Update',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.call, color: Colors.grey),
                Text(
                  'Calls',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
