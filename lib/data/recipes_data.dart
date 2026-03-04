import '../models/recipe.dart';

final List<Recipe> sampleRecipes = [
  Recipe(
    name: 'Spaghetti Bolognese',
    imagePath: 'assets/images/pasta.jpg',
    ingredients: ['Spaghetti', 'Ground beef', 'Tomato sauce', 'Onion', 'Garlic'],
    instructions: 'Cook pasta. Brown beef with onion & garlic. Add sauce. Combine & serve.',
  ),
  Recipe(
    name: 'Pancakes',
    imagePath: 'assets/images/pancakes.jpg',
    ingredients: ['Flour', 'Baking Powder', 'Sugar', 'Salt', 'Melted Butter', 'Milk', 'Egg'],
    instructions: 'Combine dry ingredients. Make a well in the center, add wet ingredients, and mix until smooth. Cook on medium-high until bubbles form. Flip and cook until browned.',
  ),
  Recipe(
    name: 'Grilled Cheese',
    imagePath: 'assets/images/grilledcheese.jpg',
    ingredients: ['Bread', 'Cheese', 'Butter'],
    instructions: 'Butter bread. Place one slice in the pan butter side down, then your preferred cheese. Place other slice of bread butter side up. Cook on medium until golden brown and cheese is melted.',
  ),
  Recipe(
    name: 'Philly Cheesesteak',
    imagePath: 'assets/images/philly.jpg',
    ingredients: ['Hoagie Roll', 'Shaved Beef', 'Onion', 'Green Bell Pepper', 'Swiss Cheese', 'Spices'],
    instructions: 'Toss steak with spices and cook to desired doneness. Cook onion and pepper in same pan. Put steak in roll, vegetable mix, then cheese. Toast if desired.',
  ),
  // Add 3+ more recipes…
];