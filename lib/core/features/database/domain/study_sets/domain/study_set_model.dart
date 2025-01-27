import 'package:objectbox/objectbox.dart';
import 'package:pardner/config/enums.dart';


@Entity()
class StudySetModel {
  @Id()
  int id;

  String? name;
  String? description;
  
  List<String> dates;
  Method method;
  late int totalTime;

  final studySet = ToMany<StudySetModel>();

  StudySetModel({
    this.id = 0, 
    this.method = Method.pomodoro,
    required this.dates,
    this.name,
    this.description,
  });
}
