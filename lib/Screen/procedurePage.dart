import 'package:flutter/material.dart';
import 'package:recipe_app/Model/RecipeClass.dart';

class Procedure extends StatefulWidget {
  final Recipe obj;

  const Procedure(this.obj);

  @override
  _ProcedureState createState() => _ProcedureState();
}

class _ProcedureState extends State<Procedure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text("Recipes",
          style: TextStyle(fontWeight: FontWeight.bold,
          color: Colors.orangeAccent),),
        ),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.obj.name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
      //    SizedBox(height: 10),
          Center(

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Icon(Icons.star,color: Colors.black,size: 18,)),
                Center(child: Icon(Icons.star,color: Colors.black,size: 18,)),
                Center(child: Icon(Icons.star,color: Colors.black,size: 18,)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
              height: 150,
              width: 150,


              child: Image.network(widget.obj.image,
              fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text("Ingredients",style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20
          ),),
          SizedBox(height: 20),
          Text(widget.obj.ingredients),
          SizedBox(height: 10),
          Text("Procedure",style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20
          ),),
          SizedBox(height: 10),
          Text(widget.obj.recipe),

        ],
      ),
    );
  }
}
