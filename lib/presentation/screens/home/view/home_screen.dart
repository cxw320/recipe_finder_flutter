import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_finder/domain/entity/recipe.dart';
import 'package:recipe_finder/presentation/screens/home/widgets/recipe_grid_item.dart';

// ConsumerStatefulWidget is a custom class that extends StatefulWidget and uses Riverpod's ConsumerWidget
// A ConsumerWidget can listen to changes in a provider and rebuild when a provider's state changes
// StatefulWidget is a type of widget that can change over time
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  //this createState method creates a new instance of the State object
  //when this widget class is used to create mult. instances of widgets, each will have its own instance of state
  //when state changes, the build method here will be called to update the widget's appearance
  //createState will return a State object (specifically ConsumerState) which is a generic, so specifically a type ConsumerStatefulWidget
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    //need to return this state value
    return _HomeScreenState();
  }
}

//this class is meant to be used internally to this class
//this state class extends State  - or in this case, ConsumerState
class _HomeScreenState extends ConsumerState<HomeScreen> {
  final recipeList = [
    Recipe(id: 1, title: "soup"),
    Recipe(id: 2, title: "salad")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page Screen'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final recipe in recipeList) RecipeGridItem(recipe: recipe)
        ],
      ),
    );
  }
}
