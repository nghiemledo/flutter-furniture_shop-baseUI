import 'package:flutter/material.dart';

void main() => runApp(ProductDetail());

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: const Icon(Icons.arrow_back,
                        color: Colors.black),
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       padding: const EdgeInsets.all(10),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(22),
                       ),
                       child: const Icon(Icons.favorite,
                           color: Colors.pinkAccent),
                     ),
                     SizedBox(width: 10,),
                     Container(
                       padding: const EdgeInsets.all(10),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(22),
                       ),
                       child: const Icon(Icons.upload_outlined,
                           color: Colors.black),
                     ),
                   ],
                 )
                ],
              ),
              SizedBox(height: 15,),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Image
                      AspectRatio(
                        aspectRatio:  4/3,
                        child: Container(
                          color: Colors.grey[200],
                          child: Center(
                            child: Image.network(
                              'https://bizweb.dktcdn.net/thumb/1024x1024/100/202/418/products/nintendo-switch-v2-neol-bachtungps-01.jpg?v=1695444659803',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Nintendo Switch, Gray',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.star_purple500_sharp, color: Colors.lightBlueAccent, size: 20),
                                      SizedBox(width: 2,),
                                      const Text('4.8'),
                                      SizedBox(width: 5,),
                                      const Text('117 reviews', style: TextStyle(fontSize: 11, color: Colors.grey),),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.file_download_done_rounded, color: Colors.lightGreen, size: 20),
                                      SizedBox(width: 5,),
                                      const Text('94%', style: TextStyle(fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.question_answer_rounded, color: Colors.grey, size: 20),
                                      SizedBox(width: 5,),
                                      const Text('8', style: TextStyle(fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("\$169.00", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
                                      SizedBox(width: 15,),
                                      Text("from \$14 per month", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w200, color: Colors.black),),
                                    ],
                                  ),
                                  Icon(Icons.info_outline)
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'The Nintendo Switch gaming console is a compact device that can be taken everywhere. This portable super device is also equipped with 2 gamepads. ',
                                    style: TextStyle(color: Colors.black, fontSize: 15),
                                  ),
                                  TextSpan(
                                    text: 'Read more',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15), // Bôi đen và định dạng cho chữ "Read more"
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          
              // Add to Cart Button
              Padding(
                padding: const EdgeInsets.all(14),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
              Center(
                child: Text("Delivery on 26 October"),
              )

            ],
          ),
        ),
      ),
    );
  }
}