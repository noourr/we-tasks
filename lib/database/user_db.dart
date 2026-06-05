import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class Userdb {
  // Database? db;
  Future<void> createDb() async {
    Database db = await openDatabase(
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
