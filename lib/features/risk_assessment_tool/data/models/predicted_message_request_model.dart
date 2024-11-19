class PredictedMessageRequestModel {
  final String ageGroup5Years;
  final String raceEth;
  final String firstDegreeHx;
  final String ageMenarche;
  final String ageFirstBirth;
  final String breastBiopsies;
  final String biradsBreastDensity;
  final String menopaus;
  final String bmiGroup;

  PredictedMessageRequestModel(
      {required this.ageGroup5Years,
      required this.raceEth,
      required this.firstDegreeHx,
      required this.ageMenarche,
      required this.ageFirstBirth,
      required this.breastBiopsies,
      required this.biradsBreastDensity,
      required this.menopaus,
      required this.bmiGroup});

  Map<String, dynamic> toJson() => {
        "age_group_5_years": ageGroup5Years,
        "race_eth": raceEth,
        "first_degree_hx": firstDegreeHx,
        "age_menarche": ageMenarche,
        "age_first_birth": ageFirstBirth,
        "BIRADS_breast_density": biradsBreastDensity,
        "menopaus": menopaus,
        "bmi_group": bmiGroup,
        "biophx": breastBiopsies
      };
}
