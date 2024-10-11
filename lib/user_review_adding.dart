import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const SignReview());
}

class SignReview extends StatefulWidget {
  const SignReview({Key? key}) : super(key: key);

  @override
  State<SignReview> createState() => _SignReviewState();
}

class _SignReviewState extends State<SignReview> {
  final nameController = TextEditingController();
  final reviewController = TextEditingController();
  final reference = FirebaseDatabase.instance.reference().child('User');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Sign and Review'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Name',
                ),
              ),
              TextFormField(
                controller: reviewController,
                decoration: const InputDecoration(
                  hintText: 'Enter Review',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final Map<String, dynamic> user = {
                    'name': nameController.text,
                    'review': reviewController.text,
                  };
                  reference.push().set(user);
                },
                child: const Text('Add Review'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
