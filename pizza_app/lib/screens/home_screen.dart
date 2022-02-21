import 'package:flutter/material.dart';
import 'package:pizza_app/screens/detail_screen.dart';

enum Choices {
  choice1,
  choice2,
  choice3,
  choice4,
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //const HomeScreen({ Key? key }) : super(key: key);
  Choices? selecedChoice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 260,
                width: double.infinity,
                color: Colors.orange,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.account_circle,
                                size: 40, color: Colors.white),
                          ),
                          Text(
                            "Pizza",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_cart,
                                size: 40, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Search Food",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.black),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 35,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selecedChoice = Choices.choice1;
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 90,
                              color: selecedChoice == Choices.choice1
                                  ? Colors.yellow
                                  : Colors.white,
                              child: Center(
                                child: Text(
                                  "All",
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selecedChoice = Choices.choice2;
                              });
                            },
                            child: Container(
                                height: 60,
                                width: 90,
                                color: selecedChoice == Choices.choice2
                                    ? Colors.yellow
                                    : Colors.white,
                                child: Center(
                                    child: Text("Drink",
                                        style: TextStyle(fontSize: 24)))),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selecedChoice = Choices.choice3;
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 90,
                              color: selecedChoice == Choices.choice3
                                  ? Colors.yellow
                                  : Colors.white,
                              child: Center(
                                child: Text(
                                  "Pizza",
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selecedChoice = Choices.choice4;
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 90,
                              color: selecedChoice == Choices.choice4
                                  ? Colors.yellow
                                  : Colors.white,
                              child: Center(
                                child: Text(
                                  "Dessert",
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        "https://i.dlpng.com/static/png/515154_preview.png",
                        "Pepperoni",
                        12,
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 30),
                            Icon(Icons.star, color: Colors.orange, size: 30),
                            Icon(Icons.star, color: Colors.orange, size: 30),
                            Icon(Icons.star, color: Colors.orange, size: 30),
                            Icon(Icons.star, color: Colors.orange, size: 30)
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: PizzaCard(
                  "https://i.dlpng.com/static/png/515154_preview.png",
                  "Pepperoni",
                  12,
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 30),
                      Icon(Icons.star, color: Colors.orange, size: 30),
                      Icon(Icons.star, color: Colors.orange, size: 30),
                      Icon(Icons.star, color: Colors.orange, size: 30),
                      Icon(Icons.star, color: Colors.orange, size: 30)
                    ],
                  ),
                ),
              ),
              PizzaCard(
                "https://www.crustpizzaco.com/assets/theme/cpc/images/pizza-main.png",
                "Special House",
                8,
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 30),
                    Icon(Icons.star, color: Colors.orange, size: 30),
                    Icon(Icons.star, color: Colors.orange, size: 30),
                    Icon(Icons.star, color: Colors.orange, size: 30),
                    Icon(Icons.star, color: Colors.grey, size: 30)
                  ],
                ),
              ),
              PizzaCard(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTNdM3HP_npCzsMFq_wFXrDYSMJBhaHTQtbA&usqp=CAU",
                "Intalian Pizza",
                8,
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 30),
                    Icon(Icons.star, color: Colors.orange, size: 30),
                    Icon(Icons.star, color: Colors.orange, size: 30),
                    Icon(Icons.star, color: Colors.grey, size: 30),
                    Icon(Icons.star, color: Colors.grey, size: 30)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PizzaCard extends StatelessWidget {
  // const pizzaCard({
  //   Key? key,
  // }) : super(key: key);

  final imageUrl;
  final name;
  final price;
  final rating;

  PizzaCard(this.imageUrl, this.name, this.price, this.rating);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.4,
      child: Container(
        height: 190,
        child: Row(
          children: [
            Image(
              image: NetworkImage(imageUrl),
              height: 170,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    rating
                    // Icon(Icons.star, color: Colors.yellow, size: 30),
                    // Icon(Icons.star, color: Colors.yellow, size: 30),
                    // Icon(Icons.star, color: Colors.yellow, size: 30),
                    // Icon(Icons.star, color: Colors.yellow, size: 30),
                    // Icon(Icons.star, color: Colors.yellow, size: 30)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$${price}",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(left: 30),
                height: 35,
                width: 35,
                color: Colors.orange,
                child: Icon(Icons.add, size: 35, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
