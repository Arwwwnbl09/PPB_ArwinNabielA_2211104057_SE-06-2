import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'biodata.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE mahasiswa (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nama TEXT NOT NULL,
            nim TEXT NOT NULL,
            alamat TEXT NOT NULL,
            hobi TEXT NOT NULL
          )
        ''');
      },
    );
  }

  Future<int> insert(Map<String, dynamic> row) async {
    final db = await database;
    return await db.insert('mahasiswa', row);
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    final db = await database;
    return await db.query('mahasiswa');
  }

  Future<int> delete(int id) async {
    final db = await database;
    return await db.delete(
      'mahasiswa',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> update(Map<String, dynamic> row) async {
    final db = await database;
    return await db.update(
      'mahasiswa',
      row,
      where: 'id = ?',
      whereArgs: [row['id']],
    );
  }
}
