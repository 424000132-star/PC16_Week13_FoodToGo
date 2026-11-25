import 'package:material_ui/material_ui.dart';
void main() {
  runApp(const FoodToGoApp());
}

// Root widget
class FoodToGoApp extends StatelessWidget {
  const FoodToGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodToGo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

// Main screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F2),

      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF8F2),
        title: const Text(
          'FoodToGo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Discover delicious food today!',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              const Text(
                'What would you like to eat today?',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),

              const SizedBox(height: 20),

              // Search bar
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      'Search for food...',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Categories
              const Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  categoryItem(Icons.fastfood, 'Fast Food'),
                  categoryItem(Icons.local_pizza, 'Pizza'),
                  categoryItem(Icons.coffee, 'Drinks'),
                ],
              ),

              const SizedBox(height: 25),

              // Popular food section
              const Text(
                'Popular Foods',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              foodCard('Cheeseburger', '₱120.00', Icons.lunch_dining),

              const SizedBox(height: 12),

              foodCard('Pepperoni Pizza', '₱250.00', Icons.local_pizza),
            ],
          ),
        ),
      ),
    );
  }

  // Category widget
  Widget categoryItem(IconData icon, String label) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30, color: Colors.deepOrange),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  // Food card widget
  Widget foodCard(String name, String price, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFFFFE5D5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 35, color: Colors.deepOrange),
          ),

          const SizedBox(width: 15),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                price,
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
