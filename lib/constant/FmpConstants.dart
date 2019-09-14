class FmpConstants {
//FMP=FAMILY-MEAL-PLANNER
  static final fmpRecipeTable = 'FMP_RECIPE';
  static final fmpRecipeStepTable = 'FMP_RECIPE_STEP';
  static final fmpRecipeCategoryTable = 'FMP_RECIPE_CATEGORY';
  static final fmpRecipeCategoryMpngTable = 'FMP_RECIPE_CATEGORY_MPNG';
  static final fmpIngredientTable = 'FMP_INGREDIENT';
  static final fmpIngredientCategoryTable = 'FMP_INGREDIENT_CATEGORY';
  static final fmpIngredientCategoryMpngTable = 'FMP_INGREDIENT_CATEGORY_MPNG';
  static final fmpRecipeIngredientMpngTable = 'FMP_RECIPE_INGDNT_MPNG';
  static final fmpRecipeTagTable = 'FMP_RECIPE_TAG';
  static final fmpRecipeLinkTable = 'FMP_RECIPE_LINK';
//when recipe is actually cooked
  static final fmpCookedFoodTable = 'FMP_COOKED_FOOD';
//marathi taat
  static final fmpFoodPlateSampleTable = 'FMP_FOOD_PLATE_SAMPLE';
  static final fmpFamilyTable = 'FMP_FAMILY';
  static final fmpFamilyMemberTable = 'FMP_FAMILY_MEMBER';
  static final fmpFamilyMemberFavTable = 'FMP_FAMILY_MEMBER_FAV';

  static final fmpFestivalTable = 'FMP_FESTIVAL';
  static final fmpSchoolHolidayTable = 'FMP_SCHOOL_HOLIDAY';

  static final fmtRecipeInsertSql = "INSERT INTO (name, description, "
      "photo_link, created_dt, created_by, last_updtd_dt, last_updtd_by) "
      "VALUES (?, ?, ?, datetime('now'), ?, datetime('now'), ?)";
}
