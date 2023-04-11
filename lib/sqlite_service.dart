import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'models.dart';



class SqliteService {

  Database? _database;

  Future initializeDB() async {

    if (_database != null) { return; }

    _database = await openDatabase( join(await getDatabasesPath(), "nutrition.db"),
        version: 1, onCreate: (Database db, int version) async {
          await db.execute("""CREATE TABLE food (id INTEGER PRIMARY KEY autoincrement, 
          category TEXT, 
          description TEXT, 
          createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)""",
          );
        });

    return _database;
  }

  Future<int> insertItem(Note note) async {
    int result = 0;
    final Database db = await initializeDB();
    result = await db.insert('food', note.toMap(),
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