// Step 1: Create abstract class (this is good when we need to mock this for testing)

import 'package:dio/dio.dart';

abstract class SpoonacularApi {
  final Dio dio;
  SpoonacularApi({required this.dio});

  //Create a method for retrieving random recipes
  Future<List<RecipeDto> getRandomRecipes();

}

// Step 2: Create implementation class

class SpoonacularApiImpl implements SpoonacularApi {
  @override
  // TODO: implement dio
  Dio get dio => throw UnimplementedError();



}
