import 'dart:ui';


import 'package:flutter/material.dart';

import '../user_review_adding.dart';



class KimchiRice extends StatelessWidget {
  const KimchiRice({super.key, Key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset('images/KimchiFR.jpeg'),
            ),
            buttonArrow(context),
            scroll(),
          ],
        ),
      ),
    );
  }

  buttonArrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  scroll() {
    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1.0,
        minChildSize: 0.6,
        builder: (context, scrollController) {
          return Container(
            
            padding: const EdgeInsets.symmetric(horizontal: 20),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
            ),
            
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: ElevatedButton(
                                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SignReview();
                      }),
                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 55),
                    backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                                  ),
                                  child: const Text(
                    'Add Review',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                                  ),
                                ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 35,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Kimchi Rice",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Kimchi fried rice is made primarily with kimchi and rice, along with other available ingredients, such as diced vegetables or meats like spam.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.black54),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  const Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 12,
                    itemBuilder: (context, index){
                      if (index == 0) {
                        return ingredients(context, "3tablespoons unsalted butter");
                      } else if (index == 1) {
                        return ingredients(context, "½small onion,");
                      }
                      else if (index == 2) {
                        return ingredients(context, "1cup roughly chopped kimchi");
                      }else if (index == 3) {
                        return ingredients(context, "2tablespoons kimchi juice");
                      }else if (index == 4) {
                        return ingredients(context, "½cup small-dice Spam,");
                      }else if (index == 5) {
                        return ingredients(context, "2cups cooked, cooled rice");
                      }else if (index == 6) {
                        return ingredients(context, "2teaspoons soy sauce");
                      }else if (index == 7) {
                        return ingredients(context, "2teaspoons vegetable oil");
                      }else if (index == 8) {
                        return ingredients(context, "2eggs");
                      }else if (index == 9) {
                        return ingredients(context, "Salt to taste");
                      }else if (index == 10) {
                        return ingredients(context, "Crumbled or slivered nori (");
                      }else if (index == 11) {
                        return ingredients(context, "Sesame seeds for garnish");
                      }
                      return null;
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  const Text(
                    "Steps",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                 /* ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                    //shrinkWrap: true,
                    //itemCount: 1,
                    //itemBuilder: (context, index) => steps(context, index),
                    
                  ),*/
                  const Text('In a nonstick sauté pan or well-seasoned cast-iron skillet, melt butter over medium-low heat, and add onions. Cook, stirring, until the onions start to sizzle, about 2 minutes. Add kimchi and kimchi juice, and stir until it comes to a boil, about 3 minutes. Add Spam, and cook until sauce is nearly dried out, about 5 minutes.\n\n Break up the rice in the pan with a spatula, and stir it to incorporate. Turn heat to medium. Cook, stirring, until the rice has absorbed the sauce and is very hot, about 5 minutes. Stir in soy sauce and sesame oil. Taste, and adjust with more soy sauce, sesame oil or kimchi juice. Turn heat down slightly, but let the rice continue to cook, untouched, to lightly brown while you cook the eggs.\n\nPlace a small nonstick sauté pan over medium heat, and add the vegetable oil. When it is hot, add eggs, season with salt and fry to your desired doneness. Serve rice topped with fried eggs, nori and a sprinkle of sesame seeds.\n\n'),                 
                ],
                
              ),
            ),
          );
        });
  }

  ingredients(BuildContext context, String ingredient) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
         const Icon(
            Icons.check, // Icon for the first ingredient
            size: 20,
            color: Colors.black54,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            ingredient, // Display the ingredient passed as an argument
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  /*steps(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 12,
          
          ),
          Column(
            children: [
              SizedBox(
                width: 270,
                child: Text(
                  "Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your",
                  maxLines: 3,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }*/
}

