import 'package:cancer/core/enums/assesstment_enum.dart';

class RiskAssessmentModel {
  final String question;
  final List<String> answers;
  final AssesstmentEnum assesstmentEnum;

  int indexOfActive;

  RiskAssessmentModel(
      {required this.question,
      required this.answers,
      this.indexOfActive = -1,
      required this.assesstmentEnum});
}
