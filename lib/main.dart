
import 'package:material_ui/material_ui.dart';
import 'screens/food_details_screen.dart';

void main() {
  runApp(const FoodToGoApp());
}

class FoodToGoApp extends StatelessWidget {
  const FoodToGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodToGo',
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        scaffoldBackgroundColor: const Color(0xFFFFF8F0),
        fontFamily: 'Arial',
      ),
      home: const FoodDetailsScreen(),
    );
  }
}
