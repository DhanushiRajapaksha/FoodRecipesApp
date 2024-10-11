import 'package:appdevone/Rice/Biriyani.dart';
import 'package:flutter/material.dart';

import 'Rice.dart';
import 'Rice/ChineseFriedRice.dart';

class Koththu extends StatelessWidget {
  const Koththu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food App'),
        backgroundColor: Colors.black,
      ),
    

         
      body: Container(
        color: Colors.black54,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            children: [
              //First button
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const ChineseFriedRice();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 200),
                    backgroundColor:Colors.black,
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/22.png'), 
                      const Text(
                        'Chicken koththu',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Second button
             Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Biriyani();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 200),
                    backgroundColor:Colors.black,
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 10,),
                      Image.asset('images/biriyani.png'), // Replace with your image path
                      const Text(
                        'Cheese koththu',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Third Button
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const Biriyani();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 200),
                    backgroundColor:Colors.black,
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(child: Image.asset('images/ThaiBasilRice.png',height: 170, width: 170,)),
                      const Text(
                        'String Hopper Kottu',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Forth button
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SecondPage();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 200),
                    backgroundColor:Colors.black,
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/eggRice.png'), // Replace with your image path
                      const Text(
                        'Dolphin Kottu',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SecondPage();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 200),
                    backgroundColor:Colors.black,
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 160, width: 160,child: Image.asset('images/kimRice.png'),),
                      const Text(
                        'Hot Butter Cuttlefish Kottu',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Second button
             Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SecondPage();
                      }),
                    );
                  }, 
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 200),
                    backgroundColor:Colors.black,
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 10,),
                      SizedBox(height: 160, width: 160,child: Image.asset('images/SeaFoodRice.png'),), // Replace with your image path
                      const Text(
                        'Sea Food Rice',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Third Button
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SecondPage();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 200),
                    backgroundColor:Colors.black,
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/22.png'), // Replace with your image path
                      const Text(
                        'Nagerian Rice',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Forth button
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SecondPage();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 200),
                    backgroundColor:Colors.black,
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/22.png'), // Replace with your image path
                      const Text(
                        'Nagerian Rice',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
