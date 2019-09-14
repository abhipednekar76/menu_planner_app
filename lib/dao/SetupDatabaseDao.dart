import 'package:menu_planner_app/dao/impl/SetupDatabaseDaoImpl.dart';

class SetupDatabaseDao {
  static final SetupDatabaseDaoImpl setupDatabaseDaoImpl = SetupDatabaseDaoImpl();

  void setup() {
    setupDatabaseDaoImpl.setup();
  }
}
