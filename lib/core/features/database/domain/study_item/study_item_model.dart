import 'package:objectbox/objectbox.dart';

@Entity()
class StudyItemModel {
  @Id()
  int id;
  int? duration;
  String? description;
  String studyItemName;

  StudyItemModel({
    this.id = 0,
    this.duration,
    this.description,
    required this.studyItemName,
  });
}
