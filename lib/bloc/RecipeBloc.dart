import 'dart:async';

import 'package:menu_planner_app/bean/Recipe.dart';
import 'package:menu_planner_app/dao/RecipeDao.dart';

class RecipeBloc {
  //Get instance of the Repository
  final _recipeDao = new RecipeDao();

  //Stream controller is the 'Admin' that manages
  //the state of our stream of data like adding
  //new data, change the state of the stream
  //and broadcast it to observers/subscribers
  final _recipeController = StreamController<List<Recipe>>.broadcast();

  get recipes => _recipeController.stream;

  RecipeBloc() {
    getRecipes();
  }

  getRecipes() async {
    //sink is a way of adding data reactively to the stream
    //by registering a new event
    _recipeController.sink.add(await _recipeDao.getRecipes());
  }

  dispose() {
    _recipeController.close();
  }
}