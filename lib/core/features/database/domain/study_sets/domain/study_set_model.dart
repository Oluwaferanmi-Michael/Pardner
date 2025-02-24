import 'package:objectbox/objectbox.dart';

import '../../study_item/study_item_model.dart';

@Entity()
class StudySetModel {
  
  int id;

  String? name;
  String? description;

  List<String> dates;
  int method;

  int? totalStudyTime;

  final studyItems = ToMany<StudyItemModel>();

  StudySetModel({
    this.id = 0,
    required this.method,
    required this.dates,
    this.totalStudyTime,
    this.name,
    this.description,
  });
}
