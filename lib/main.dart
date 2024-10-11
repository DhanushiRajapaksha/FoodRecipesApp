import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'ItemListView.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
    );
  }
}

class Firstpage extends StatelessWidget {
  const Firstpage({super.key, });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/11.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Food App',
                style: TextStyle(
                  fontSize: screenWidth < 600 ? 70 : 100, // Adjust font size for smaller screens
                  fontWeight: FontWeight.bold,
                  
                  color:const Color.fromARGB(255, 255, 255, 255),
                 
                ),
              ),
              const SizedBox(height: 550),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const ListViewItem();
                    }),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 55),
                  backgroundColor: const Color.fromARGB(255, 196, 195, 195),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text(
                  'Get start',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

