import 'package:appdevone/Kotthu.dart';
import 'package:flutter/material.dart';


import 'Rice.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Types'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black54,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          
          child: SingleChildScrollView(
            child: Column(children: [
               
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SecondPage();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(420, 155),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/22.png',
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(width: 40),
                      const Text(
                        'Rice',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 10, width: 15),
                
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Koththu();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(420, 155),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/kotthu.png',
                        width: 110,
                        height: 110,
                      ),
                      const SizedBox(width: 40),
                      const Text(
                        'Koththu',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10, width:5),
                 ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SecondPage();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(420, 155),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/Pastry.png',
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(width: 40),
                      const Text(
                        'Pastry',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 10, width: 15),
                 ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SecondPage();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(420, 155),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/dessert.png',
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(width: 40),
                      const Text(
                        'Desserts',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 10, width: 15),
                 ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SecondPage();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(420, 155),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/beverages.png',
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(width: 40),
                      const Text(
                        'Beverages',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                
                 
                const SizedBox(height: 10, width: 15),
              ],),
          ),
        ),
      ),
    
    );
  }
}
