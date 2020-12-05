class Recipe {
  String name;
  String image;
  String ingredients;
  String recipe;

  Recipe({this.name,this.image,this.ingredients,this.recipe});
}

Recipe r1,r2,r3;
List<Recipe> recipeList=[
  Recipe(
    name: "Zucchini Dosa",
    image:"https://thestayathomechef.com/wp-content/uploads/2019/05/Zucchini-Pancakes-4-1.jpg",
    ingredients:'''1 cup grated zucchini
1 cup wheat flour
1/2 tea spn chilli powder
1/2 tea spn cumin seeds
1 egg white (optional)
1/4 cup breadcrumbs (optional)
Oil
Salt''',
    recipe: '''1. Mix all the ingredients in a bowl and add enough water to make the batter. 
2.Heat a tava and make small thick dosas.
3.Cook from both sides.
I served them with pineapple paank. They go well with a spicy chutney.'''
  ),

  Recipe(
    name:"Egg Curry",
    image: "https://www.whiskaffair.com/wp-content/uploads/2016/08/Chettinad-Egg-Curry-4.jpg",
    ingredients: '''Boiled Eggs 5
Onions 2
Tomatoes 4
Chilli powder 2 tea spns
Chicken masala or garam masala 1 tea spn
Mustard seeds 1/4 tea spn
Jeera 1/4 tea spn
Coriander leaves
Salt
Oil''',
    recipe: '''Heat oil and add mustard & cumin seeds. 
When they start spluttering add finely chopped onions. 
Fry till onions turn slightly brownish. 
Add finely chopped tomatoes (or cooked and mashed tomatoes). 
Fry till oil seperates. 
Then add sufficient water, chilli powder, chicken masala(or garam masala), salt. Cook for 5 minutes. Put eggs(put some slits on eggs so that the masala reaches inside of the egg). Cook for 2-3 minutes. Garnish with coriander leaves. Serve hot.'''
  ),
  Recipe(
      name:"Salmon Kebabs",
      image: "https://www.aayisrecipes.com/wp-content/uploads/2012/02/spicy-salmon-kabab_thumb.jpg",
      ingredients: '''1 lb salmon cut into 2×2 inch pieces
1 tbl spn chopped coriander leaves
Lemon wedges

Marinade : Make a smooth paste of following
1/2 cup thick yogurt
1 tea spn ginger
1 tea spn garlic
1 tea spn chilli powder
A pinch turmeric
1/2 tea spn coriander powder
1/2 tea spn cumin powder
1/2 tea spn amchoor powder
Salt''',
      recipe: '''Apply the marinade to salmon pieces. Add the coriander leaves. Leave it aside for atleast 2hrs.
Arrange the pieces on skewers. Grill them till done. I use my cast iron grill pan for grilling.
Serve hot with lemon. Serve it as a starter or as a main dish with some rice and a simple dal.'''
  ),
  Recipe(
      name:"Chicken Burger",
      image: "https://realfood.tesco.com/media/images/Burger-31LGH-a296a356-020c-4969-86e8-d8c26139f83f-0-1400x919.jpg",
      ingredients:''''½ tbsp olive oil
1 onion, peeled and finely chopped
1 x 500g pack British Beef Steak Mince 15% fat
1 tsp mixed dried herbs
1 egg, beaten
4 slices mature Cheddar (optional)
4 white rolls
few round lettuce leaves, torn
1 beef tomato, sliced
ketchup, to serve (optional)''',
      recipe: '''Heat the olive oil in a frying pan, add the onion and cook for 5 minutes until softened and starting to turn golden. Set aside.
In a bowl, combine the beef mince with the herbs and the egg. Season, add the onions and mix well. Using your hands, shape into 4 patties.
Cook the burgers on a preheated barbecue or griddle for 5-6 minutes on each side. While the second side is cooking, lay a slice of cheese on top to melt slightly (if using).
Meanwhile, lightly toast the cut-sides of the buns on the barbecue. Fill with the lettuce, burgers and tomato slices. Serve with ketchup, if you like.'''
  ),


];

class Category{
  String name;
  Category({this.name});
}

List<Category> categoryList=[
  Category(name:"Starters"),
  Category(name:"Main Dishes"),
  Category(name:"Desserts"),
  Category(name: "Drinks"),
];