import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Screen extends StatelessWidget {
  Widget SingleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 170,
      decoration: BoxDecoration(
        color: Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              "assets/palak-removebg-preview.png",
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Text(
                "Fresh palak",
                style: GoogleFonts.workSans(
                    fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(
                "50\$/50 Gram",
                style:
                    GoogleFonts.workSans(color: Colors.grey[700], fontSize: 17),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "50 Gram",
                          style: GoogleFonts.workSans(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.remove_circle_outline,
                            size: 17,
                            color: Colors.red,
                          ),
                          Text(
                            " 1 ",
                            style: GoogleFonts.workSans(
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.add,
                            size: 17,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }

  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              gradient: LinearGradient(
                  colors: [(Colors.yellow), (Colors.yellow)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
        title: Text(
          "Home",
          style: GoogleFonts.workSans(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.amber[500],
            child: Icon(Icons.search, size: 25, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.amber[500],
              child: Icon(Icons.shop, size: 25, color: Colors.black),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/R.jpg")),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 140, bottom: 10),
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xffd1ad17),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Vegi",
                                    style: GoogleFonts.workSans(
                                        fontSize: 20,
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.green,
                                              blurRadius: 10,
                                              offset: Offset(5, 5))
                                        ]),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "30% Off",
                              style: GoogleFonts.workSans(
                                  color: Colors.green[100],
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "On All Vegitables products",
                                style: GoogleFonts.workSans(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(child: Container()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Seasoning Herbs",
                    style: GoogleFonts.workSans(fontSize: 17),
                  ),
                  Text(
                    "View All",
                    style:
                        GoogleFonts.workSans(color: Colors.grey, fontSize: 17),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProducts(),
                  SingleProducts(),
                  SingleProducts(),
                  SingleProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Seasoning Herbs",
                    style: GoogleFonts.workSans(fontSize: 17),
                  ),
                  Text(
                    "View All",
                    style:
                        GoogleFonts.workSans(color: Colors.grey, fontSize: 17),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProducts(),
                  SingleProducts(),
                  SingleProducts(),
                  SingleProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
