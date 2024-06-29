import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
        name: "Classic Cheeseburger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 168.00,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 20),
          Addon(name: "Bacon", price: 40),
          Addon(name: "Avocado", price: 55)
        ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description: "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight.",
      imagePath: "lib/images/burgers/bbq_burger.png",
      price: 270.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 20),
        Addon(name: "Jalapenos", price: 40),
        Addon(name: "Extra BBQ Sauce", price: 55)
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "Savory veggie patty meets crisp veggies in a toasted bun symphony.",
      imagePath: "lib/images/burgers/veg_burger.png",
      price: 120.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "French Fries", price: 60),
        Addon(name: "Soft Drink(300ml)", price: 40)
      ],
    ),
    Food(
      name: "Alpha Burger",
      description: "Alpha Burger: Beef (or veggie) patty bliss with bacon, cheddar & caramelized onions.",
      imagePath: "lib/images/burgers/alpha_burger.png",
      price: 250.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Onion Rings", price: 70),
        Addon(name: "Milk Shake(300ml)", price: 80)
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description: "Fiery blue cheese meets juicy beef in a burger for the adventurous.",
      imagePath: "lib/images/burgers/bluemoon_burger.png",
      price: 320.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Caramelized Onions", price: 50),
        Addon(name: "Spicy Mayo", price: 30),
        Addon(name: "Bacon", price: 70)
      ],
    ),

    //salads
    Food(
        name: "Asian Sesame Salad",
        description: "Rainbow salad bursts with Asian flavors: romaine, julienned veggies galore!",
        imagePath: "lib/images/salads/asiansesame_salad.png",
        price: 220,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Crispy Chicken", price: 80),
          Addon(name: "Wonton Strips", price: 50),
          Addon(name: "Mango Salsa", price: 40),
        ],
    ),
    Food(
      name: "Caesar Salad",
      description: "Classic Caesar: Romaine bathed in creamy anchovy dressing, never fades.",
      imagePath: "lib/images/salads/caesar_salad.png",
      price: 180,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 100),
        Addon(name: "Shrimp", price: 150),
        Addon(name: "Avocado", price: 60),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "Mediterranean medley: Chopped veggies & briny olives on a tomato base. ",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 200,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Halloumi", price: 80),
        Addon(name: "Falafel", price: 60),
        Addon(name: "Grilled Chicken Breast", price: 120),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description: "Quinoa bowl bursts with protein & veggies: fluffy base, fresh crunch. ",
      imagePath: "lib/images/salads/quinoa_salad.png",
      price: 190,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Salmon", price: 150),
        Addon(name: "Roasted Chickpeas", price: 40),
        Addon(name: "Avocado and Mango Salsa", price: 70),
      ],
    ),
    Food(
      name: "South Western Salad",
      description: "Southwest salad fiesta: greens, grilled chicken, black beans, corn.",
      imagePath: "lib/images/salads/southwest_salad.png",
      price: 240,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Crispy Tortilla Strips", price: 30),
        Addon(name: "Spicy Jalapeños", price: 20),
        Addon(name: "Grilled Shrimp", price: 180),
      ],
    ),
    //sides
    Food(
      name: "Garlic Bread",
      description: "Garlic bread symphony: Crispy crust meets soft, buttery heaven.",
      imagePath: "lib/images/sides/garlic_bread.png",
      price: 80,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Melted Cheese", price: 40),
        Addon(name: "Fresh Herbs", price: 20),
        Addon(name: "Sun-dried Tomatoes", price: 50),
      ],
    ),
    Food(
      name: "Loaded Fries",
      description: "Loaded fries: Crispy base, decadent toppings, flavor explosion.",
      imagePath: "lib/images/sides/loaded_fries.png",
      price: 150,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Pulled Pork", price: 100),
        Addon(name: "Chilly Cheese", price: 80),
        Addon(name: "Jalapeno pepper fries", price: 70),
      ],
    ),
    Food(
      name: "Macaroni Pasta",
      description: "Cheesy elbow hugs: Al dente pasta in rich cheddar fondue.",
      imagePath: "lib/images/sides/mac_side.png",
      price: 120,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 80),
        Addon(name: "Broccoli Florets", price: 40),
        Addon(name: "Crispy Bacon Bits", price: 60),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy rings of joy! Thick onions, battered & fried, pure indulgence.",
      imagePath: "lib/images/sides/onion_rings.png",
      price: 80,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Spicy Dipping Sauce", price: 20),
        Addon(name: "Blue Cheese Dip", price: 30),
        Addon(name: "BBQ Ranch Dip", price: 25),
      ],
    ),
    Food(
      name: "Roasted Sweet Potatoes",
      description: "Sweet potato bliss: Roasted wedges, caramelized & herb kissed.",
      imagePath: "lib/images/sides/sweet_potato_side.png",
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Candied Pecans", price: 70),
        Addon(name: "Feta Crumbles & Honey Drizzle", price: 50),
        Addon(name: "Spicy Chipotle Mayo", price: 30),
      ],
    ),
    //desserts
    Food(
      name: "Cheese Cake",
      description: "Classic cheesecake: Creamy dream on a crumbly cookie canvas.",
      imagePath: "lib/images/desserts/cheese_cake.png",
      price: 280,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Seasonal Fruit Compote", price: 80),
        Addon(name: "Chocolate Ganache", price: 70),
        Addon(name: "Caramel Sauce and Toasted Nuts", price: 60),
      ],
    ),
    Food(
      name: "Chocolate Cake",
      description: "Chocoholic's dream: Moist cake in rich cocoa glory.",
      imagePath: "lib/images/desserts/chocolate_cake.png",
      price: 250,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Fresh Berries and Whipped Cream", price: 70),
        Addon(name: "Chocolate Ganache Drizzle and Chocolate Shavings", price: 60),
        Addon(name: "Peanut Butter Frosting and Chopped Peanuts", price: 50),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description: "Sundae bliss: Build your dream with ice cream & toppings! ",
      imagePath: "lib/images/desserts/ice_cream_sundae.png",
      price: 180,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Chopped Nuts", price: 40),
        Addon(name: "Chocolate Chip Cookie Dough", price: 50),
        Addon(name: "Fresh Fruit and Candied Sprinkles", price: 60),
      ],
    ),
    Food(
      name: "Macarons",
      description: "Petite French jewels: Crisp meringue shells, delightful creamy centers. ",
      imagePath: "lib/images/desserts/macarons.png",
      price: 90,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Chopped Nuts", price: 40),
        Addon(name: "Chocolate Chip Cookie Dough", price: 50),
        Addon(name: "Fresh Fruit and Candied Sprinkles", price: 60),
      ],
    ),
    Food(
      name: "Tiramisu: A Coffee-infused Dream",
      description: "Coffee kiss meets creamy bliss: Classic Italian tiramisu. ",
      imagePath: "lib/images/desserts/tiramasu.png",
      price: 250,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Liquor Spike", price: 30),
        Addon(name: "Seasonal Fruit Compote", price: 60),
        Addon(name: "Chocolate Shavings", price: 20),
      ],
    ),
    //drinks
    Food(
      name: "Cocktail",
      description: "Spirits meet mixers in a flavorful cocktail party. ",
      imagePath: "lib/images/drinks/cocktail.png",
      price: 350,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Premium Liquor Upgrade ", price: 70),
        Addon(name: "Fresh-Squeezed Juices", price: 25),
        Addon(name: "Flavored Simple Syrups", price: 15),
      ],
    ),
    Food(
      name: "Coffee",
      description: "Coffee's magic potion: Roasted beans brewed for a stimulating kick.",
      imagePath: "lib/images/drinks/coffee.png",
      price: 115,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Flavored Syrups", price: 30),
        Addon(name: "Whipped Cream", price: 30),
        Addon(name: "Iced Coffee Variations", price: 65),
      ],
    ),
    Food(
      name: "The Classic Coke",
      description: "Fizzy delight: Coke's sweet-tart mystery with caramel & vanilla hints.",
      imagePath: "lib/images/drinks/coke.png",
      price: 80,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Over Ice", price: 10),
        Addon(name: "With a Lime Wedge", price: 10),
        Addon(name: "Cherry Coke", price: 30),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Chilled tea delight: Brewed leaves meet ice for refreshing bliss.",
      imagePath: "lib/images/drinks/iced_tea.png",
      price: 80,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Fresh Fruits", price: 25),
        Addon(name: "Flavored Syrups", price: 15),
        Addon(name: "Herb Sprigs", price: 10),
      ],
    ),
    Food(
      name: "Mojito",
      description: "Cuban mint magic: Mojito's sweet, sour, and refreshing harmony.",
      imagePath: "lib/images/drinks/mojito.png",
      price: 120,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Fruity Twist", price: 30),
        Addon(name: "Sparkling Wine", price: 70),
        Addon(name: "Spiced Rum", price: 100),
      ],
    ),
  ] ;

  final List<CartItem> _cart = [];

  String _deliveryAddress = 'opposite TableTree restaurant' ;

  List<Food> get menu => _menu ;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item){
      bool isSameFood = item.food == food;
      
      bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons) ;
      return isSameFood && isSameAddons ;
    }) ;

    if(cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons
        ),
      );
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex != -1) {
      if(_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0 ;

    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price ;

      for(Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price ;
      }

      total += itemTotal*cartItem.quantity ;
    }

    return total ;
  }

  int getTotalItemCount() {
    int totalItemCount = 0 ;

    for(CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity ;
    }
    return totalItemCount ;
  }

  void clearCart(){
    _cart.clear() ;
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress){
    _deliveryAddress = newAddress ;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart) {
      receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if(cartItem.selectedAddons.isNotEmpty){
        receipt.writeln("    Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString() ;
  }

  String _formatPrice(double price) {
    return "₹${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(", ");
  }
}