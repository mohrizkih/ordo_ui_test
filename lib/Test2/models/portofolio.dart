class Portofolio {
  final String name;
  final String description;
  final double rating;
  final int review;
  final int pesanan;
  final String profileImagePath;
  final List<Customer> listCustomer;

  Portofolio({
    required this.name,
    required this.description,
    required this.rating,
    required this.review,
    required this.pesanan,
    required this.listCustomer,
    required this.profileImagePath,
  });
}

class Customer {
  final String customerName;
  final double rating;
  final String imagePath;

  Customer({required this.customerName, required this.rating, required this.imagePath});
}
