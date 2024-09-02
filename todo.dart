import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"ToDo App",
    home:TODOAPP(),
  ));
}

class TODOAPP extends StatefulWidget {
  @override
  State<TODOAPP> createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  var value;
  late List<String>listTODO= ['Sleep'];
  addToDo(String item){
    setState(() {
      listTODO.add(item);
    });
  }
  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        child:Icon(Icons.add),
        onPressed:addToDo(value),

      ),
      appBar:AppBar(
        centerTitle:true,
        title:Text("TODO APP", style:TextStyle(fontSize:26)),
      ),
      body:
       GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:1,
          ),
        itemCount:5,
        itemBuilder: (contex, index){
        return index ==0? Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
              decoration: InputDecoration(
             hintText:"Add Item",
             ),
              onChanged: (val){
                value=val;
          
                  
              },
          ),
        ): ListTile(

        );
      },
      ),
    );
  }
}