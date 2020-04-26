import 'dart:async';
import 'package:aqueduct/aqueduct.dart';  


class Migration2 extends Migration { 
  @override
  Future upgrade() async {
   		database.createTable(SchemaTable("_Item", [SchemaColumn("iid", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("category", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("quantity", ManagedPropertyType.integer, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("cost", ManagedPropertyType.integer, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    