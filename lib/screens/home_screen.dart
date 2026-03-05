import '../data/recipes_data.dart';
import '../screens/details_screen.dart';
import 'package:flutter/material.dart';



class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipes')),
      body:  
      ListView.builder(
        // Scrollable list of recipes from the recipes_data file
        itemCount: sampleRecipes.length,
        itemBuilder: (context, index) {
          final recipe = sampleRecipes[index];
          return Card(
            child: ListTile(
              // Layout of each recipe tile with recipe image and name
              leading: Image.asset(recipe.imagePath, width: 56, fit: BoxFit.cover),
              title:   Text(recipe.name),
              trailing: const Icon(Icons.chevron_right),
              // On a tap of each recipe, go to its details screen
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      )
    );
  }
}