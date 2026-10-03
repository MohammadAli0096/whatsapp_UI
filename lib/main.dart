import 'package:flutter/material.dart';

void main() {
  runApp(Whatsapp());
}

// Har chat ka data: naam, message aur time
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

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "WhatsApp",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.camera_alt_outlined, color: Colors.white),
                  Icon(Icons.more_vert, color: Colors.white),
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
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(221, 48, 49, 74),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 10),
                      Text("Search", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
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
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      chat["msg"]!,
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Text(
                      chat["time"]!,
                      style: const TextStyle(color: Colors.white),
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
            Container(height: 40, child: Icon(Icons.call, color: Colors.grey)),
            Container(
              height: 40,
              child: Icon(Icons.home_filled, color: Colors.grey),
            ),
            Container(
              height: 40,
              child: Icon(Icons.satellite, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
