// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return // 1
        Padding(
      padding: const EdgeInsets.all(30.0),
// 2
      child: Center(
// 3
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //empty image
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset('assets/fooderlich_assets/empty_list.png'),
              ),
            ),

            // empty screen title
            Text(
              'No Groceries',
              style: Theme.of(context).textTheme.headline6,
            ),

            // empty screen subtitle
            const SizedBox(height: 16.0),
            const Text(
              'Shopping for ingredients?\n'
              'Tap the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            // browse recipes button
            MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.green,
              onPressed: () {
                // TODO: Go to Recipes Tab
              },
              child: const Text('Browse Recipes'),
            ),
          ],
        ),
      ),
    );
  }
}
