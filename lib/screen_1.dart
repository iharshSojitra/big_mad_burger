import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen_1 extends StatefulWidget {
  const Screen_1({Key? key}) : super(key: key);

  @override
  State<Screen_1> createState() => _Screen_1State();
}

class _Screen_1State extends State<Screen_1> {
  List name = [
    "Pasta",
    "Sushi",
    "Salads",
  ];
  List image = [
    'assets/images/food_1.jpg',
    'assets/images/food_2.jpg',
  ];
  List name2 = [
    "heaven's Food",
    "Grill Hell House",
  ];
  List name3 = [
    "4.5",
    "4.9",
  ];
  List name4 = [
    "25-30 min",
    "40-45 min",
  ];
  List name5 = [
    "Steak",
    "Grill",
  ];
  List name6 = [
    "Fish",
    "Meat",
  ];
  List name7 = [
    "Experimental",
    "Experimental2",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 143,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "800 Cheese avenue,",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "NYC",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "search for food",
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            fillColor: Colors.grey.shade300),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Text(
                  "Something new",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 200,
                        width: 150,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent.shade400,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          child: Text(
                            name[index],
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Text(
                  "Recommended",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 165,
                            width: 270,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: AssetImage(
                                      image[index],
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              name2[index],
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange.shade400,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  name3[index],
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.watch_later,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  name4[index],
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "\$\$\$",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Center(
                                    child: Text(
                                      name5[index],
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Center(
                                    child: Text(
                                      name6[index],
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Container(
                                  height: 25,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Center(
                                    child: Text(
                                      name7[index],
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class _LikeButtonState extends State<LikeButton> {
//   bool likebutton_1 = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkResponse(
//       child: likebutton_1 == true
//           ? IconButton(
//           onPressed: () {
//             setState(() {
//               likebutton_1 = !likebutton_1;
//             });
//           },
//           icon: Icon(
//             Icons.favorite_outline,
//             color: Colors.teal,
//           ))
//           : IconButton(
//           onPressed: () {
//             setState(() {
//               likebutton_1 = !likebutton_1;
//             });
//           },
//           icon: Icon(
//             Icons.favorite,
//             color: Colors.teal,
//           )),
//     );
//   }
// }
