import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'models.dart';



class SqliteService {

  Database? _database;

  // Future<Database> initializeDB() async {
  //   String path = await getDatabasesPath();
  //
  //   return openDatabase(
  //     join(path, 'database.db'),
  //     onCreate: (database, version) async {
  //       await database.execute(
  //         "CREATE TABLE Notes(id INTEGER PRIMARY KEY AUTOINCREMENT, description TEXT NOT NULL)",
  //       );
  //     },
  //     version: 1,
  //   );
  // }

  Future initializeDB() async {
    _database = await openDatabase(join(await getDatabasesPath(), "database.db"),
        version: 1, onCreate: (Database db, int version) async {
          await db.execute(
            "CREATE TABLE person (id INTEGER PRIMARY KEY autoincrement, name TEXT)",
          );
        });
    return _database;
  }

  Future<int> insertItem(Note note) async {
    int result = 0;
    final Database db = await initializeDB();
    result = await db.insert(
        'Notes', note.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);

    return result;
  }


  Future<List<Note>> getItems() async {

    final Database db = await initializeDB();

    final List<Map<String, Object?>> queryResult =
    await db.query('Notes');

    return queryResult.map((e) => Note.fromMap(e)).toList();
  }

  Future<void> deleteItem(String id) async {

    final Database db = await initializeDB();

    try {
      await db.delete("Notes", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      //debugPrint("Something went wrong when deleting an item: $err");
    }
  }


}