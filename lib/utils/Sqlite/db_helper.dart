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

_onCreate(Database db,int version) async{
  await db
          .execute("CREATE TABLE $TABLE($ID INTEGER PRIMARY KEY, $NAME TEXT");
}

Future<item> save (item item) async{
  var dbClient = await db;
  item.id = await dbClient.insert(TABLE, item.toMap());
   return item;
/*
  await dbClient.transaction((txn) async{
    var query = "INSERT INTO $TABLE($NAME) VALUES ('"+ item.name + "')";
    return await txn,rawInsert(query);
  });
  */

}

Future<List<item>> getItems() async{
  var dbClient = await db;
  List <Map> maps = await dbClient.query(TABLE, columns:[ID, NAME]);
 // List<Map> maps = await dbClient.rawQuery("SELECT * FROM $TABLE");
 List<item> items = [];
 if( maps.length> 0) {
   for (int i=0; i< maps.length; i++){
     items.add(item.fromMap(maps[i]));
   }
 }
return items;
}
}