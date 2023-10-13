// Step 1: Create abstract class (this is good when we need to mock this for testing)

import 'package:dio/dio.dart';
import 'package:recipe_finder/data/dto/recipe_dto.dart';

abstract class SpoonacularApi {
  final Dio dio;
  SpoonacularApi({required this.dio});

  //Create a method for retrieving random recipes
  Future<List<RecipeDto>> getRandomRecipes();
}

// Step 2: Create implementation class

class SpoonacularApiImpl implements SpoonacularApi {
  final Dio dio;

  SpoonacularApiImpl({required this.dio});

  @override
  Future<List<RecipeDto>> getRandomRecipes() async {
    try {
      Response response = await dio.get("");
      final recipeListResponse = (response.data["recipes"] as List)
          .map((response) => RecipeDto.fromJson(response))
          .toList();
      return Future.value(recipeListResponse);
    } on DioException catch (error) {
      print(error);
    }
    return [];
  }
}
