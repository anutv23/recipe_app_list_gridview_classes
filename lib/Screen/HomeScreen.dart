import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:recipe_app/Model/RecipeClass.dart';
import 'package:recipe_app/Screen/procedurePage.dart';

class MyRecipeApp extends StatefulWidget {
  @override
  _MyRecipeAppState createState() => _MyRecipeAppState();
}

class _MyRecipeAppState extends State<MyRecipeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      /*   appBar: AppBar(
        title: Center(
          child: Text(
            "My Kitchen",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellow),
          ),
        ),
        backgroundColor: Colors.brown,
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Image.network(
                      "https://png.pngtree.com/thumb_back/fh260/back_pic/03/53/33/45579720d58a73c.jpg",
                      height: 200,
                      width: 600,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0, left: 120),
                  child: Text(
                    "Welcome to Anu\'s Kitchen ",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.orange),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 15,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Text(
                    "By Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  Text(
                    "View all",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 500,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            categoryList[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.orangeAccent),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Expanded(
                      child: Text(
                    "Popular Dishes",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  Text(
                    "View all",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            ),
            Container(
              height: 230,
              width: 600,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: recipeList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder:(_)=>Procedure(recipeList[index])));
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 160,
                                width: 150,

                                child: Image.network(
                                  recipeList[index].image,
                                  fit: BoxFit.fill,
                                )),
                          ),
                          Text(
                            recipeList[index].name,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                SizedBox(width: 10),
                  Expanded(
                      child: Text(
                        "Explore",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Text(
                    "View all",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                reverse: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
                ),
                itemCount: recipeList.length,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                            height: 160,
                            width: 150,
                            child: Image.network(
                              recipeList[index].image,
                              fit: BoxFit.fill,
                            )),
                      ),
                      Text(
                        recipeList[index].name,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  );

                })

          ],
        ),
      ),
    );
  }
}
