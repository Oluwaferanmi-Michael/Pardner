import 'package:objectbox/objectbox.dart';


@Entity()
class StudySetModel {
  @Id()
  int id;

  // @Backlink('studyItem')
  // final studyItems = ToMany<StudyItemModel>();

  StudySetModel({
    this.id = 0,
  });
}
