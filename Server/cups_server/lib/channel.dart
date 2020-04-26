import 'cups_server.dart';

import 'package:cups_server/controller/Items.dart';
import 'package:cups_server/controller/signup.dart';
/// This type initializes an application.
///
/// Override methods in this class to set up routes and initialize services like
/// database connections. See http://aqueduct.io/docs/http/channel/.
class CupsServerChannel extends ApplicationChannel {
  ManagedContext context;

  @override
  Future prepare() async {
    logger.onRecord.listen(
      (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));


      final dataModel = ManagedDataModel.fromCurrentMirrorSystem();
      final persistentStore = PostgreSQLPersistentStore.fromConnectionInfo(
        'manager',
         '12345678', 
         'localhost', 
         5432, 
         'cupsdb' 
         );
         context = ManagedContext (dataModel, persistentStore);
         
  }

  /// Construct the request channel.
  ///
  /// Return an instance of some [Controller] that will be the initial receiver
  /// of all [Request]s.
  ///
  /// This method is invoked after [prepare].
  @override
  Controller get entryPoint  => Router()
     
      ..route("/item/[:id]").link(() => ItemsController(context ))

      ..route('/signup') .link(() => SignupController(context));

      }
      

    
   
