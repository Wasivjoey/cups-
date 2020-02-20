import 'dart:async';
import 'dart:io'as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import "item.dart";

class DBHelper{

  static Database _db;
  static const String ID = 'id';
  static const String NAME = 'name';
  static const TABLE = 'Items';
  static const DB_NAME = 'Inventory.db';

  Future<Database> get db async{
    if (_db != null){
      return _db;
    }
  }
initDB() async{
  io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path = join (documentsDirectory.path,DB_NAME);
  var db = await openDatabase(path, version: 1, onCreate: _onCreate);
  return db;

}

}