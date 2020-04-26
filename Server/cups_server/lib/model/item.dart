
import 'package:cups_server/cups_server.dart';

class Item extends ManagedObject<_Item> implements _Item{
  @Serialize()
 String get detail => '$name  $category';
}
class _Item  {
  @Column(primaryKey: true)
  int iid;

  @Column(unique: true)
  String name  ;

  @Column(unique: true)
  String category;

  @Column(unique: true)
  int  quantity;

  @Column(unique: true)
  int  cost;
  
    }