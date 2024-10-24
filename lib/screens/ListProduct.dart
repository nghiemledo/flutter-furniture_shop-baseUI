import 'package:flutter/material.dart';

void main() => runApp(const ListProduct());

class ListProduct extends StatelessWidget {
  const ListProduct({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "List product page",
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.list_rounded)),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person_2_outlined)),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 17),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discover products",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Icon(Icons.filter_list_rounded)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: (Colors.white54),
                        ),
                        child: const Text(
                          "Sofas",
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(width: 7),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: (Colors.black),
                        ),
                        child: const Text(
                          "Chairs",
                          style: TextStyle(color: Colors.white),
                        )),
                    const SizedBox(width: 7),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: (Colors.white54),
                        ),
                        child: const Text(
                          "Tables",
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(width: 7),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: (Colors.white54),
                        ),
                        child: const Text(
                          "Kitchen",
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(width: 7),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  children: [
                    SizedBox(
                      width: 300,
                      height: 200,
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Image.network(
                              'https://img.lovepik.com/bg/20240507/Close-Up-Shot-of-Sofa-and-Mock-Up-Frames-in_10233919_wh860.jpg!/fw/860',
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Soft Element Jack",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('57.50 VND'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 15,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 15,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      shape: BoxShape.circle),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 200,
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Image.network(
                              'https://img.lovepik.com/bg/20240507/Close-Up-Shot-of-Sofa-and-Mock-Up-Frames-in_10233919_wh860.jpg!/fw/860',
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Leset Galant",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('57.50 VND'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 15,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 15,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      shape: BoxShape.circle),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 200,
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Image.network(
                              'https://img.lovepik.com/bg/20240507/Close-Up-Shot-of-Sofa-and-Mock-Up-Frames-in_10233919_wh860.jpg!/fw/860',
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Chester Chair",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('57.50 VND'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 15,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 15,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      shape: BoxShape.circle),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 200,
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Image.network(
                              'https://img.lovepik.com/bg/20240507/Close-Up-Shot-of-Sofa-and-Mock-Up-Frames-in_10233919_wh860.jpg!/fw/860',
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Avrora Chair",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('57.50 VND'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 15,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 15,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      shape: BoxShape.circle),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 200,
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Image.network(
                              'https://img.lovepik.com/bg/20240507/Close-Up-Shot-of-Sofa-and-Mock-Up-Frames-in_10233919_wh860.jpg!/fw/860',
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Chester Chair",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('57.50 VND'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 15,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 15,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      shape: BoxShape.circle),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 200,
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Image.network(
                              'https://img.lovepik.com/bg/20240507/Close-Up-Shot-of-Sofa-and-Mock-Up-Frames-in_10233919_wh860.jpg!/fw/860',
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Avrora Chair",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('57.50 VND'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 15,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 5,
                                  height: 15,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      shape: BoxShape.circle),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_outlined),
                  label: "Favourites"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined), label: "Profile"),
            ]),
      ),
    );
  }
}
