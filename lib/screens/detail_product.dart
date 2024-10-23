import 'package:flutter/material.dart';

void main() => runApp(const DetailProduct());

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Detail Product",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.favorite_border_outlined))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      'https://koen.vn/wp-content/uploads/2023/03/sdfad.jpg',
                      width: 300,
                      height: 300)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      'https://koen.vn/wp-content/uploads/2023/03/sdfad.jpg',
                      width: 70,
                      height: 70),
                  SizedBox(width: 20),
                  Image.network(
                      'https://koen.vn/wp-content/uploads/2023/03/giuongsofa_ldp_04-01_10-20230225045207-v0eqm-600x769.png',
                      width: 70,
                      height: 70),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.red),
                  SizedBox(width: 5),
                  Text("4.8",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                      shape: RoundedRectangleBorder(
                        side: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      "145 reviews",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Leset Galant",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Row(
                    children: [
                      CircleAvatar(radius: 8, backgroundColor: Colors.blueGrey),
                      SizedBox(width: 10),
                      CircleAvatar(
                          radius: 8, backgroundColor: Colors.greenAccent),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Expanded(
                    child: Text(
                        softWrap: true,
                        maxLines: null,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                        "The inspiration for the design of this chair comes from "
                        "the industrial style of the first half of the last century, which is complemented by the most modern features."),
                  )
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$64.00",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: (Colors.black),
                      padding:
                          EdgeInsets.symmetric(horizontal: 65, vertical: 13),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Add to cart",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
