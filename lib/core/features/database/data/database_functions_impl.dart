import 'package:pardner/core/features/database/application/database_stores.dart';
// import 'package:pardner/core/features/database/repository/database_function_repo.dart';

class StudySetFunctionsImpl{
  final dataStores = DataBoxStores();

    void delete(value) {
    final box = dataStores.studySetBox;

    box.remove(value);
  }

    void read(value) {
    final box = dataStores.studySetBox;

    box.get(value);
  }

    void readAll() {
    final box = dataStores.studySetBox;
    box.getAll(); 
  }

    void update(value) {
    final box = dataStores.studySetBox;
    box.put(value);
  }

    void create(value) {
    final box = dataStores.studySetBox;
    box.put(value);
  }
}
