import 'package:flutter/material.dart';
import 'package:recipe_finder/domain/entity/recipe.dart';
import 'package:transparent_image/transparent_image.dart';

class RecipeGridItem extends StatelessWidget {
  const RecipeGridItem({super.key, required this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
          onTap: () {},
          child: Stack(
            children: [
              FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(recipe.image ?? ""),
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.black54,
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                  child: Column(children: [
                    Text(
                      recipe.title ?? "No title",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      //overflow: TextOverflow.ellipsis, // Very long text ...
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ]),
                ),
              )
            ],
          )),
    );
  }
}
