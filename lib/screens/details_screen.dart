import '../models/recipe.dart';
import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
  final Recipe recipe;
  const DetailsScreen({super.key, required this.recipe});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero image
            ClipRRect(borderRadius: BorderRadius.circular(12), 
              child: Image.asset(recipe.imagePath, height: 220, width: double.infinity, fit: BoxFit.cover),),

            SizedBox(height: 16),

            // Header style text
            Text(
              '   Ingredients',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Container(
                height: 180,
                // Bordered box to show the edges of the scrollable area
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(8),
                ),
                // Scrollbar that is always visible (if there is one) to show that there are more ingredients
                child: Scrollbar(
                  thumbVisibility: true,
                  child: ListView.builder(
                    itemCount: recipe.ingredients.length,
                    itemBuilder: (context, index) {
                      // Scrollable list of ingredients
                      return ListTile(
                        dense: true,
                        leading: const Icon(Icons.circle, size: 7),
                        title: Text(recipe.ingredients[index]),
                      );
                    },
                  ),
                ),
              ),
            ),

            SizedBox(height: 8),
            
            Text(
              '   Instructions',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(8),
                ), child:
            // Instructions in bordered box for consistency
            Padding(padding: EdgeInsets.all(12), child: Text(recipe.instructions),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}