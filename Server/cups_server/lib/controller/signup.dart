// CUPS_SERVER/lib/controller/signup.dart

    import 'dart:async';
    import 'package:aqueduct/aqueduct.dart';
    import 'package:cups_server/model/user.dart';
    import '../model/user.dart';

    class SignupController extends ResourceController {
      SignupController(this.context);
       ManagedContext context;


  
  @Operation.post()
  Future<Response> signup(@Bind.body() User body) async {
    final signupQuery = Query<User> (context)..values = body;
    final insertedsignup = await signupQuery.insert();
    return Response.ok(insertedsignup);
  }
    }
 