import 'package:cups_server/cups_server.dart';
import 'package:my_project/model/my_model.dart';
//import 'package:aqueduct/src/db/schema/migration_source.dart';
import '../model/items.dart'; 

class ItemsController extends ResourceController {
  ItemsController(this.context);

  ManagedContext context;

  @Operation.get()
  Future<Response> getAllItems() async {
    final itemQuery = Query<Item>(context);
    return Response.ok(await itemQuery.fetch());
  }

  @Operation.get('name')
  Future<Response> getItem(@Bind.path('name') String name) async {
    final itemQuery = Query<Item>(context)
      ..where((item) => item.name).equalTo(name);
    final item = await itemQuery.  fetchOne();

    if (item == null) {
      return Response.notFound(body: 'Item not found.');
    }
    return Response.ok(item);
  }

  @Operation.post()
  Future<Response> createNewItem(@Bind.body() Item body) async {
    final itemQuery = Query<Item>(context)..values = body;
    final insertedItem = await itemQuery.insert();

    return Response.ok(insertedItem);
  }

  @Operation.put('id')   
  Future<Response> updatedItem(
    @Bind.path('id') int iid,
    @Bind.body() Item body,
  ) async {
    final itemQuery = Query<Item>(context)
      ..values = body
      ..where((item) => item.iid).equalTo(iid);

    final updatedQuery = await itemQuery.updateOne();

    if (updatedQuery == null) {
      return Response.notFound(body: 'Item not found.');
    }

    return Response.ok(updatedQuery);
  }

  @Operation.delete('id')
  Future<Response> deletedItem(@Bind.path('id') int iid) async {
    final itemQuery = Query<Item>(context)
      ..where((read) => read.iid).equalTo(iid);

    final int deleteCount = await itemQuery.delete();

    if (deleteCount == 0) {
      return Response.notFound(body: 'Item not found.');
    }
    return Response.ok('Deleted $deleteCount items.');
  }
}