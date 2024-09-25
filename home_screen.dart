import 'package:flutter/material.dart';
import 'details_screen.dart'; // Import for the navigation to DetailsScreen

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'name': 'Spaghetti Bolognese',
      'ingredients': 'Pasta, Ground beef, Tomatoes, Onion, Garlic',
      'instructions': 'Cook pasta. Brown the beef. Add tomatoes and onion. Simmer for 20 minutes.'
    },
    {
      'name': 'Chicken Curry',
      'ingredients': 'Chicken, Curry powder, Coconut milk, Onion, Garlic',
      'instructions': 'Cook chicken. Add onions and curry powder. Simmer with coconut milk for 30 minutes.'
    },
    {
      'name': 'Beef Tacos',
      'ingredients': 'Taco shells, Ground beef, Lettuce, Tomato, Cheese',
      'instructions': 'Cook beef. Add seasoning. Fill taco shells with beef and toppings.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    recipeName: recipes[index]['name']!,
                    ingredients: recipes[index]['ingredients']!,
                    instructions: recipes[index]['instructions']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
