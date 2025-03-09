import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen_2 extends StatefulWidget {
  const Screen_2({Key? key}) : super(key: key);

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  int selected = 0;
  int dot_selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 340,
              child: Stack(
                children: [
                  PageView(
                    onPageChanged: (value) {
                      setState(() {
                        dot_selected = value;
                      });
                    },
                    children: [
                      Container(
                        height: 340,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/burger_1.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 340,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/burger_2.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 340,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/burger_3.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            )),
                        Spacer(),
                        LikeButton(),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: dot_selected == index
                                      ? Colors.orange.shade400
                                      : Colors.white,
                                ),
                              )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Big Mad Burger",
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "njbchyusdc bhdbcgyusdg cuygcyugsd ycsyducg sdyuc sdc hcsh sacy gcbcysbc bcys bnj.",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "choose addition",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Required",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(color: Colors.grey.shade400),
                    child: Icon(Icons.keyboard_arrow_up),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = index;
                                  });
                                },
                                child: Container(
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Icon(
                                    Icons.check,
                                    size: 15,
                                    color: selected == index
                                        ? Colors.black
                                        : Colors.transparent,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Potato Wedges"),
                                  index == 0
                                      ? Text(
                                          "Recommeded",
                                          style:
                                              TextStyle(color: Colors.orange),
                                        )
                                      : SizedBox(),
                                ],
                              )
                            ],
                          ),
                        )),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () {},
                height: 50,
                minWidth: double.infinity,
                color: Colors.black,
                child: Text(
                  "Add (1) to cart - 12.90",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: IconButton(
          onPressed: () {
            setState(() {
              selected = !selected;
            });
          },
          icon: selected == false
              ? Icon(
                  Icons.favorite,
                  color: Colors.orange.shade400,
                )
              : Icon(
                  Icons.favorite_outline,
                  color: Colors.orange.shade400,
                )),
    );
  }
}
