import 'package:objectbox/objectbox.dart';
import 'package:pardner/core/features/database/domain/study_sets/domain/study_set_model.dart';

@Entity()
class StudyItemModel {
  @Id()
  int id;

  int duration;
  String studyItemName;

  final studySet = ToMany<StudySetModel>();

  StudyItemModel({
    this.id = 0,
    required this.duration,
    required this.studyItemName,
  });
}
