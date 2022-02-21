import 'package:flutter/material.dart';

enum Choices {
  choice1,
  choice2,
  choice3,
}

class DetailScreen extends StatefulWidget {
  //const DetailScreen({ Key? key }) : super(key: key);

  final image;
  final name;
  var price;
  final rating;

  DetailScreen(this.image, this.name, this.price, this.rating);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Choices? selectedOne;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Image(
                  image: NetworkImage(widget.image),
                  height: 140,
                  width: 140,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        widget.rating,
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 30),
            child: Text(
              "1. Choose Size",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedOne = Choices.choice1;
                  });
                },
                child: Container(
                    height: 60,
                    width: 90,
                    color: selectedOne == Choices.choice1
                        ? Colors.orange
                        : Colors.white,
                    child: Center(
                        child: Text("Small", style: TextStyle(fontSize: 24)))),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedOne = Choices.choice2;
                  });
                },
                child: Container(
                  height: 60,
                  width: 90,
                  color: selectedOne == Choices.choice2
                      ? Colors.orange
                      : Colors.white,
                  child: Center(
                    child: Text(
                      "Medium",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedOne = Choices.choice3;
                  });
                },
                child: Container(
                  height: 60,
                  width: 90,
                  color: selectedOne == Choices.choice3
                      ? Colors.orange
                      : Colors.white,
                  child: Center(
                    child: Text(
                      "Large",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 30),
            child: Text(
              "1. Choose Amount",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    widget.price++;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.orange),
                  child: Icon(Icons.add, size: 40, color: Colors.white),
                ),
              ),
              Text(
                widget.price.toString(),
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.price--;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.orange),
                  child: Icon(
                    Icons.remove,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 30),
            child: Row(
              children: [
                Text(
                  "Total Price: ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$${widget.price * 2}",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: MaterialButton(
              onPressed: () {},
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              height: 60,
              color: Colors.orange,
              child: Text(
                "Order Now",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
