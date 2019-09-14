import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:menu_planner_app/dao/SetupDatabaseDao.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseUtil {
  static final DatabaseUtil databaseUtil = DatabaseUtil();

  Database _database;

  Future<Database> get database async {
    try {
      if (_database == null) {
        Directory documentsDirectory = await getApplicationDocumentsDirectory();
        //"FAMILY_MEAL_PLANNER.db is our database instance name
        String path = join(documentsDirectory.path, "FAMILY_MEAL_PLANNER.db");
        _database = await openDatabase(path, version: 1,
            onCreate: (Database database, int version) async {
          SetupDatabaseDao().setup();
        });
      }
    } catch (Exception) {
      //new Exception("Error while creating database");
    }
    return _database;
  }
}
