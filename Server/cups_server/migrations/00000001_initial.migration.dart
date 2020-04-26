import 'dart:async';
import 'package:aqueduct/aqueduct.dart';  

class Migration1 extends Migration { 
  @override
  Future upgrade()  async {
   		database.createTable(SchemaTable("_User", [SchemaColumn("uid", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("fname", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("lname", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("password", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    