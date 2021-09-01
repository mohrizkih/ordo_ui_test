class DetailOrder {
  final String senderName;
  final String platNumber;
  final String status;
  final String address;
  final String pesananNotes;
  final List<Pesanan> listPesanan;

  DetailOrder({
    required this.senderName,
    required this.platNumber,
    required this.status,
    required this.address,
    required this.pesananNotes,
    required this.listPesanan,
  });
}

class Pesanan {
  final String name;
  final double weight;
  final int quantity;
  final int price;
  final String imagePath;
  final String notes;
  Pesanan(
      {required this.name,
      required this.weight,
      required this.quantity,
      required this.price,
      required this.imagePath,
      required this.notes});
}
