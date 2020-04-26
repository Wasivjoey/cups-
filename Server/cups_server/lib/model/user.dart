
import 'package:cups_server/cups_server.dart';

class User extends ManagedObject<_User> implements _User{
  @Serialize()
 String get detail => '$fname  $lname';
}
class _User  {
  @Column(primaryKey: true)
  int uid;

  @Column(unique: true)
  String fname  ;

  @Column(unique: true)
  String lname;

  @Column(unique: true)
  String  password;
  
    }