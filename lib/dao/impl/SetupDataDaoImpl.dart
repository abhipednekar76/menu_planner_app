import 'package:menu_planner_app/constant/FmpConstants.dart';
import 'package:menu_planner_app/dao/impl/BaseDao.dart';
import 'package:sqflite/sqflite.dart';

class SetupDataDaoImpl extends BaseDao {
  void createData(Database database, int version) {
    for (var i = 0; i < 100; i++) {
      List<dynamic> arguments = new List<dynamic>();
      arguments.add("Recipe Name " + i.toString());
      arguments.add("Recipe Desc " + i.toString());
      arguments.add(
          "https://cdn-image.myrecipes.com/sites/default/files/styles/4_3_horizontal_-_1200x900/public/mrtrending0475.jpg?itok=ULkGk3Pn");
      arguments.add(0);
      arguments.add(0);
      var result =
          database.rawInsert(FmpConstants.fmtRecipeInsertSql, arguments);
    }
  }
}
