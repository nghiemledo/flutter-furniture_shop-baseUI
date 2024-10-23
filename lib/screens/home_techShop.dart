import 'package:flutter/material.dart';

void main() => runApp(TechHome());

class TechHome extends StatelessWidget {
  const TechHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: const Icon(Icons.verified_outlined,
                        color: Colors.black),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const Text(
                          'Delivery address',
                          style: TextStyle(
                              fontWeight: FontWeight.w200, color: Colors.black),
                        ),
                        const Text(
                          '92 High Street, London',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: const Icon(Icons.notifications_outlined,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search the entire shop',
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: const [
                    Text(
                      'Delivery: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('50% cheaper'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Text("See all"),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_right,
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16),

              // Category Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCategoryItem(Icons.phone_android, 'Phones'),
                  _buildCategoryItem(Icons.gamepad, 'Consoles'),
                  _buildCategoryItem(Icons.laptop, 'Laptops'),
                  _buildCategoryItem(Icons.camera_alt, 'Cameras'),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Flash Sale',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          '02:15:33',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("See all"),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_right,
                          ))
                    ],
                  )
                ],
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    _buildProductCard(
                      'Apple iPhone 15 Pro',
                      '£899.00',
                      '£999.00',
                    ),
                    _buildProductCard(
                      'Samsung Galaxy Buds Pro',
                      '£89.00',
                      '£169.00',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor:Colors.lightGreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Catalog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(34),
          ),
          child: Icon(icon),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildProductCard(String title, String price, String originalPrice) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Icon(
                Icons.phone_iphone,
                size: 64,
                color: Colors.grey[700],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      originalPrice,
                      style: TextStyle(
                        color: Colors.grey[600],
                        decoration: TextDecoration.lineThrough,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
