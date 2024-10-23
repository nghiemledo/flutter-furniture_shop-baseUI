import 'package:flutter/material.dart';

void main() => runApp(CartPage());

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: '92 High Street, London',
                    border: InputBorder.none,
                    icon: Icon(Icons.location_on_outlined),
                    suffixIcon: Icon(Icons.chevron_right),
                    contentPadding: EdgeInsets.symmetric(vertical: 12),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          color: Colors.lightBlueAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Select all",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.cloud_upload_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      ],
                    )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildCartItem(
                  'Nintendo Switch Lite, White',
                  '£209.00',
                  1,
                ),
                const Divider(),
                _buildCartItem(
                  'The Legend of Zelda: Tears of the Kingdom',
                  '£39.00',
                  1,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total'),
                    Text(
                      '£248.00',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Checkout',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.lightGreen,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Catalog'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
            activeIcon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildCartItem(String name, String price, int quantity) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(
            Icons.check_box,
            color: Colors.lightBlueAccent,
          ),
          SizedBox(width: 10,),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.network(
              'https://th.bing.com/th/id/OIP.wX_UZ7BugxYQk7Wi-YLGFwHaEK?rs=1&pid=ImgDetMain',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {},
              ),
              Text('$quantity'),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
