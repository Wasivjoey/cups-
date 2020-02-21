import 'package:cups/utils/Sqlite/item.dart';
import 'package:flutter/material.dart';
import 'db_Helper.dart';

import 'dart:async';


class DBTestPage extends StatefulWidget {
  final String title;

  DBTestPage({Key key, this.title}) :  super(key:key);

  @override
  State<StatefulWidget> createState() {
    return _DBTestPageState();
  }
}

class _DBTestPageState extends State<DBTestPage> {
   Future<List<item>> items;
   TextEditingController controller = TextEditingController();
   String name;
   int curUserId;

   final formKey = new GlobalKey<FormState>();
   var dbHelper;
   bool isUpdating;

   @override 
   void initState(){
     super.initState();
     dbHelper = DBHelper();
     isUpdating = false;
   }

   refreshList(){
     setState(() {
       items = dbHelper.getItems();
     });
   }
   clearName(){
     controller.text = '';
   }

   validate(){
     if (formKey.currentState.validate()){
       formKey.currentState.save();
       if(isUpdating){
         item i = item(curUserId, name);
         dbHelper.update(i);
         setState(() {
           isUpdating = false;
         });
         clearName();
       } else {
         item i = item(null, name);
         dbHelper.save(i);
       }
     }
   }

   form(){
     return Form(
       key: formKey,
       child: Padding(
         padding: EdgeInsets.all(15.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           mainAxisSize: MainAxisSize.min,
           verticalDirection: VerticalDirection.down,
           children: <Widget>[
             TextFormField(
               controller: controller,
             keyboardType: TextInputType.text,
             decoration: InputDecoration(labelText:'Name'),
             validator: (val) => val.length == 0 ? 'Enter Name': null,
             onSaved: (val) => name = val,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 FlatButton(
                   onPressed:  validate,
                   child: Text(isUpdating ? 'UPDATE' : 'ADD'),
                 ),
                 FlatButton(onPressed: () {
                   setState((){
                     isUpdating = false;
                   });
                 },
                 child: Text('Cancel'),
                 )
               ],
             )

           ]
         )
         ,),
     ); 
   }

SingleChildScrollView dataTable(List<item> items){
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child:DataTable(
      columns: [
        DataColumn(
          label:Text('Name'),
           ),
        DataColumn(label: Text('Remove'),
         )
      ],
      rows: items
      .map(
        (item) => DataRow(cells: [
          DataCell(
            Text(item.name),
          ),
          DataCell(
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: (){
                dbHelper.delete(item.id);
                refreshList(); 
              }
            )
          )
        ]))
    )
  );


}
  list(){
    return Expanded(
      child:FutureBuilder( 
        future: items,
        builder: (context, snapshot){
          if (snapshot.hasData){
            //
          }
          if (null == snapshot.data || snapshot.data.length == 0){
            return Text("No Data Found");
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('manager manipulation'),
        ),
        body: new Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
              form(),
              list(),
            ])));
  }
}

