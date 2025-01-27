import 'package:objectbox/objectbox.dart';


@Entity()
class StudyItemModel {
  @Id()
  int id;

  int duration;
  String studyItemName;
  StudyItemModel({
    this.id = 0,
    required this.duration,
    required this.studyItemName,
  });
}
