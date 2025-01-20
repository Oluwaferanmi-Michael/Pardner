import 'package:pardner/core/features/database/database_constants.dart';

import 'package:pardner/objectbox.g.dart'; 
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;



class DatabaseInitializations {
  late final Store store;

  DatabaseInitializations._create(this.store);


  // Data Store Initialization/Creation
  static Future<DatabaseInitializations> init() async {
    final storeDirectory = await getApplicationDocumentsDirectory();

    final store = await openStore(
        directory: path.join(storeDirectory.path, DatabaseConstants.pardner));

    return DatabaseInitializations._create(store);
  }



}
