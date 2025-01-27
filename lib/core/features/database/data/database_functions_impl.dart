import 'package:pardner/core/features/database/application/database_stores.dart';
import 'package:pardner/core/features/database/repository/database_function_repo.dart';

class StudySetFunctionsImpl implements DatabaseFunctionsRepo {
  final dataStores = DataBoxStores();

  @override
  void delete(value) {
    final box = dataStores.studySetBox;

    box.remove(value);
  }

  @override
  void read(value) {
    final box = dataStores.studySetBox;

    box.get(value);
  }

  @override
  void readAll(value) {
    final box = dataStores.studySetBox;
    box.getAll(); 
  }

  @override
  void update(value) {
    final box = dataStores.studySetBox;
    box.put(value);
  }

  @override
  void create(value) {
    final box = dataStores.studySetBox;
    box.put(value);
  }
}
