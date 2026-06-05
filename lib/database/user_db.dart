import 'package:sqflite/sqflite.dart';

class Userdb {
  // Database? db;
  Future<void> createDb() async {
    await openDatabase(
      'wedb.db',
      version: 1,
      onCreate: (Database db, int version) async {
        print('Data base created ');
        await db.execute(
          'CREATE TABLE user (user_id INTEGER PRIMARY KEY, name TEXT, email TEXT, password TEXT)',
        );
        print('table created');
      },
      onOpen: (db) => print('db opne'),
    );
  }
}

class TasksDb {
  static Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await initDb();
    return _db!;
  }

  Future<Database> initDb() async {
    return await openDatabase(
      'tasksDB.db',
      version: 1,
      onCreate: (Database tasksDB, int version) async {
        print('Data base created ');
        await tasksDB.execute(
          'CREATE TABLE tasks (tasks_id INTEGER PRIMARY KEY AUTOINCREMENT, taskName TEXT, isCompleted INTEGER)',
        );
        print('tasks table is created');
      },
      onOpen: (tasksDB) => print('Tasks DB open'),
    );
  }

  Future<void> createDb() async {
    await database;
  }

  Future<int> insertTask(String taskName, bool isCompleted) async {
    final dbClient = await database;
    return await dbClient.insert(
      'tasks',
      {
        'taskName': taskName,
        'isCompleted': isCompleted ? 1 : 0,
      },
    );
  }

  Future<List<Map<String, dynamic>>> getTasks() async {
    final dbClient = await database;
    return await dbClient.query('tasks');
  }

  Future<int> updateTask(int id, bool isCompleted) async {
    final dbClient = await database;
    return await dbClient.update(
      'tasks',
      {'isCompleted': isCompleted ? 1 : 0},
      where: 'tasks_id = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteTask(int id) async {
    final dbClient = await database;
    return await dbClient.delete(
      'tasks',
      where: 'tasks_id = ?',
      whereArgs: [id],
    );
  }
}
