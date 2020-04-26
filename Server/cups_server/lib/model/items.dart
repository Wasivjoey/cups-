import 'package:cups_server/cups_server.dart';

class Item extends ManagedObject<Item> implements _Item{
@Serialize()
int iid;
String name;
String category;
int quantity;
int cost;

}
class _Item{
  @primaryKey
  int iid;

  @Column() 
  String name;

  @Column()
  String category;

  @Column()
  int quantity;

  @Column()
  int cost;

}