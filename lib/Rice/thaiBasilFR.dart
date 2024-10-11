import 'dart:ui';


import 'package:flutter/material.dart';

import '../user_review_adding.dart';



class ThaiBasil extends StatelessWidget {
  const ThaiBasil({super.key, Key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset('images/thaibasil.jpeg'),
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
                    'Basil Fried Rice is such a flavorful Thai-inspired fried rice recipe! It starts with a chili and garlic paste that we’ll stir fry with shallots, add shrimp, a few sauces, and a handful of fresh basil leaves',
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
                    itemCount: 10,
                    itemBuilder: (context, index){
                      if (index == 0) {
                        return ingredients(context, "Jasmine Rice");
                      } else if (index == 1) {
                        return ingredients(context, "Garlic");
                      }
                      else if (index == 2) {
                        return ingredients(context, "Thai Chili");
                      }else if (index == 3) {
                        return ingredients(context, "Sauces");
                      }else if (index == 4) {
                        return ingredients(context, "Brown Sugar");
                      }else if (index == 5) {
                        return ingredients(context, "White Pepper");
                      }else if (index == 6) {
                        return ingredients(context, "High Heat Oil + Butter");
                      }else if (index == 7) {
                        return ingredients(context, "Shrimp");
                      }else if (index == 8) {
                        return ingredients(context, "Shallots");
                      }else if (index == 9) {
                        return ingredients(context, "Basil");
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
                  const Text('Make the garlic chili paste. Start by adding the garlic, red chilies, and a small pinch of salt in a mortar and crush it down with a pestle. Make sure the garlic and chilies are finely minced – almost like a crunchy sauce!\n\n Make the sauce. Add the oyster sauce, soy sauce, fish sauce, brown sugar, and white paper to a bowl and stir it together until the sugar mostly dissolves. Keep this to the side for now.\n\nScramble the eggs. Lightly beat the eggs in a bowl. Heat a large skillet, wide Dutch oven, or a wok over medium-high heat. When the wok is hot, add the oil and scramble the eggs in the wok. Then remove the scrambled eggs to a bowl and set this aside for later. You don’t want the eggs to overcook so for my fried rice recipe, I like to get this step done ahead of time.\n\nSauté the aromatics. Add the butter to the skillet and sauté the shallots for a few minutes before adding in the chili garlic paste. Allow the paste to heat through and then add the protein or veggies that you are using. You don’t want the protein to be cooked all the way through here. Let it cook just under halfway and then add the cooked rice to the pan. Spread the rice out, into an even layer and allow it to sizzle in the pan. This will give the rice that signature fried rice smoky taste. Once the rice is sizzling, toss it and then spread it out and let it heat through ahead. Alternating gives the rice time to heat through and it’ll start popping towards the end.\n\nFinish it up and serve. Drizzle the prepared sauce into the rice and allow it to sizzle and soak into the rice. Then add the scrambled eggs and the basil. Stir to combine and let the basil wilt down just a tad bit. Then serve this immediately.\n\n'),                 
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

