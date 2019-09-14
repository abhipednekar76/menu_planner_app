import 'package:menu_planner_app/dao/impl/BaseDao.dart';
import 'package:menu_planner_app/dao/impl/DatabaseUtil.dart';
import 'package:menu_planner_app/dao/impl/SetupDataDaoImpl.dart';
import 'package:menu_planner_app/dao/impl/SetupTablesDaoImpl.dart';

class SetupDatabaseDaoImpl extends BaseDao {
  final setupTablesDaoImpl = new SetupTablesDaoImpl();
  final setupDataDaoImpl = new SetupDataDaoImpl();

  void setup() async {
    final database = await DatabaseUtil.databaseUtil.database;
    setupTablesDaoImpl.createTables(database, 1);
    setupDataDaoImpl.createData(database, 1);
  }
}
