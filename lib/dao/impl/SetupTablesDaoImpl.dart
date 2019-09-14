import 'package:menu_planner_app/constant/FmpConstants.dart';
import 'package:menu_planner_app/dao/impl/BaseDao.dart';
import 'package:sqflite/sqflite.dart';

class SetupTablesDaoImpl extends BaseDao {

 void createTables(Database database, int version) {
    database.execute("CREATE TABLE" +
        FmpConstants.fmpRecipeTable +
        "("
            "recipe_id INTEGER PRIMARY KEY, "
            "name TEXT, "
            "description TEXT, "
            "photo_link TEXT, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpRecipeStepTable +
        "("
            "recipe_step_id INTEGER PRIMARY KEY, "
            "recipe_id INTEGER, "
            "name TEXT, "
            "description TEXT, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    /**
     * veg
     * non-veg
     * vegan
     * chinese
     * north
     * south
     * breakfast
     * lunch
     * dinner
     * deep fried
     * shallow fried
     * baked
     */
    database.execute("CREATE TABLE" +
        FmpConstants.fmpRecipeCategoryTable +
        "("
            "recipe_cat_id INTEGER PRIMARY KEY, "
            "name TEXT, "
            "description TEXT, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpRecipeCategoryMpngTable +
        "("
            "recipe_cat_mpng_id INTEGER PRIMARY KEY, "
            "recipe_cat_id INTEGER, "
            "recipe_id INTEGER, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpIngredientTable +
        "("
            "ingredient_id INTEGER PRIMARY KEY, "
            "name_english TEXT, "
            "name_marathi TEXT, "
            "name_hindi TEXT, "
            "name_telgu TEXT, "
            "name_tamil TEXT, "
            "name_malyalam TEXT, "
            "description TEXT, "
            "photo_link TEXT, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    /**
     * veg
     * non-veg
     * vegan
     * spice
     * masala
     * pulses
     * flour
     */
    database.execute("CREATE TABLE" +
        FmpConstants.fmpIngredientCategoryTable +
        "("
            "ingredient_cat_id INTEGER PRIMARY KEY, "
            "name TEXT, "
            "description TEXT, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpIngredientCategoryMpngTable +
        "("
            "ingredient_cat_mpng_id INTEGER PRIMARY KEY, "
            "ingredient_cat_id INTEGER, "
            "ingredient_id INTEGER, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpRecipeIngredientMpngTable +
        "("
            "recp_ingrdnt_mpng_id INTEGER PRIMARY KEY, "
            "recipe_id INTEGER, "
            "ingredient_id INTEGER, "
            "quanity REAL, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpRecipeTagTable +
        "("
            "recipe_tag_id INTEGER PRIMARY KEY, "
            "recipe_id INTEGER, "
            "name TEXT, "
            "description TEXT, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpRecipeLinkTable +
        "("
            "recipe_link_id INTEGER PRIMARY KEY, "
            "recipe_id INTEGER, "
            "name TEXT, "
            "description TEXT, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpCookedFoodTable +
        "("
            "cooked_food_id INTEGER PRIMARY KEY, "
            "recipe_id INTEGER, "
            "cooked_on_dt TEXT, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpFoodPlateSampleTable +
        "("
            "food_plate_smpl_id INTEGER PRIMARY KEY, "
            "recipe_id INTEGER, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpFamilyTable +
        "("
            "family_id INTEGER PRIMARY KEY, "
            "name TEXT, "
            "description TEXT, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpFamilyMemberTable +
        "("
            "member_id INTEGER PRIMARY KEY, "
            "name TEXT, "
            "description TEXT, "
            "birth_dt TEXT, "
            "gender TEXT, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpFamilyMemberFavTable +
        "("
            "member_fav_id INTEGER PRIMARY KEY, "
            "member_id INTEGER, "
            "recipe_id INTEGER, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpFestivalTable +
        "("
            "festival_id INTEGER PRIMARY KEY, "
            "name TEXT, "
            "description TEXT, "
            "festival_dt TEXT, "
            "fasting TEXT, "
            "nonveg_allowed TEXT, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");

    database.execute("CREATE TABLE" +
        FmpConstants.fmpSchoolHolidayTable +
        "("
            "schoolh_id INTEGER PRIMARY KEY, "
            "name TEXT, "
            "description TEXT, "
            "schoolh_dt TEXT, "
            "created_dt TEXT, "
            "created_by INTEGER, "
            "last_updtd_dt TEXT, "
            "last_updtd_by INTEGER "
            ")");
  }
}
