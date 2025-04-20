class MobilePhone {
  final String brand;
  final String model;
  final int? storage;     // In GB units
  final double price;     // In USD.
  final String serialNumber;

  MobilePhone.Default() : 
    this.brand = "Samsung", 
    this.model = "S7",
    this.storage = 128, 
    this.price = 500, 
    this.serialNumber = "123456789";

  MobilePhone({
    required this.brand,
    required this.model,
    int? storage,
    this.price = 500.0,
    required this.serialNumber,
  }) : storage = storage ?? 128;
  
  const MobilePhone.constant({
    required this.brand,
    required this.model,
    this.storage,
    this.price = 500.0,
    required this.serialNumber,
  });

  @override
  String toString() {
    return 'MobilePhone[Brand=${brand}, Model=${model}, Storage=${storage ?? "N/A"}GB, Price=${price}\$, Serial=${serialNumber}]';
  }

  MobilePhone copyWith({
    String? brand,
    String? model,
    int? storage,
    double? price,
    String? serialNumber,
  }) {
    return MobilePhone(
      brand: brand ?? this.brand,
      model: model ?? this.model,
      storage: storage ?? this.storage,
      price: price ?? this.price,
      serialNumber: serialNumber ?? this.serialNumber,
    );
  }
}