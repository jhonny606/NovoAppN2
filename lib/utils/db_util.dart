import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DbUtil {
  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'login.db'),
      onCreate: (db, version) {
        _create(db);
      },
      version: 1
    );
  }

  static void _create(sql.Database db) {
    db.execute("""
    CREATE TABLE login (cpf INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(50))

    """
    );

  }


  static Future<void> insertData(String table, Map<String, Object> dados) async {
    final db = await database();
    await db.insert(table, dados,
    conflictAlgorithm: sql.ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await database();
    return db.query(table);
  }
}