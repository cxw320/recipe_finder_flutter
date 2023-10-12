import 'package:recipe_finder/domain/entity/recipe.dart';

class RecipeDto extends Recipe {
  RecipeDto(this.id, this.title, this.image) : super(id: id);
  final int id;
  final String? title;
  final String? image;
}
