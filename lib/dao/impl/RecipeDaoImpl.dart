import 'dart:async';

import 'package:menu_planner_app/bean/Recipe.dart';
import 'package:menu_planner_app/constant/FmpConstants.dart';
import 'package:menu_planner_app/dao/impl/BaseDao.dart';
import 'package:menu_planner_app/dao/impl/DatabaseUtil.dart';

class RecipeDaoImpl extends BaseDao {
  //Adds new Recipe records
  Future<int> createRecipe(Recipe recipe) async {
    final database = await DatabaseUtil.databaseUtil.database;
    List<dynamic> arguments = new List<dynamic>();
    arguments.add(recipe.name);
    arguments.add(recipe.description);
    arguments.add(recipe.photoLink);
    arguments.add(0);
    arguments.add(0);
    var result = database.rawInsert(FmpConstants.fmtRecipeInsertSql, arguments);
    return result;
  }

  //Get All Recipe records
  Future<List<Recipe>> getRecipes() async {
    final database = await DatabaseUtil.databaseUtil.database;
    List<String> columns = new List<String>();
    columns.add("recipe_id");
    columns.add("name");
    columns.add("description");
    columns.add("photo_link");

    //data will be in this form Map<String, dynamic>
    List<Map<String, dynamic>> result =
        await database.query(FmpConstants.fmpRecipeTable, columns: columns);
    List<Recipe> recipes = new List<Recipe>();

    for (var i = 0; i < result.length; i++) {
      Recipe recipe = new Recipe();
      recipes.add(recipe);
      Map<String, dynamic> data = result[i];
      recipe.recipeId = data['recipe_id'];
      recipe.name = data['name'];
      recipe.description = data['description'];
      recipe.photoLink = data['photo_link'];
    }

    print("recipes.length=" + recipes.length.toString());

    return recipes;
  }
}
