import 'dart:async';

import 'package:menu_planner_app/bean/Recipe.dart';
import 'package:menu_planner_app/dao/impl/RecipeDaoImpl.dart';

class RecipeDao {
  final recipeDaoImpl = new RecipeDaoImpl();
  Future getRecipes() => recipeDaoImpl.getRecipes();
  Future createRecipe(Recipe recipe) => recipeDaoImpl.createRecipe(recipe);
}
