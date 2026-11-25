
import 'package:material_ui/material_ui.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/pizza.jpg',
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 15,
                      left: 15,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      right: 15,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cheese Pizza',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '₱180.00',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    const Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange),
                        SizedBox(width: 5),
                        Text(
                          '4.8 Rating',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 18),
                        Icon(Icons.access_time, color: Colors.grey),
                        SizedBox(width: 5),
                        Text(
                          '20-30 min',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),

                    const SizedBox(height: 25),

                    const Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Enjoy our delicious cheese pizza made with fresh ingredients, rich tomato sauce, and melted cheese. Perfect for sharing with family and friends.',
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.6,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 25),

                    const Text(
                      'Ingredients',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      'Cheese  •  Tomato Sauce  •  Flour  •  Herbs',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 35),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text(
                          'Add to Cart  •  ₱180.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
