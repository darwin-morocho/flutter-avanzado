class Crypto {
  final String id;
  final String symbol;
  final double price;

  Crypto({
    required this.id,
    required this.symbol,
    required this.price,
  });

  Crypto copyWith({
    String? id,
    String? symbol,
    double? price,
  }) {
    return Crypto(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      price: price ?? this.price,
    );
  }

  @override
  int get hashCode => symbol.hashCode ^ price.hashCode ^ id.hashCode;

  @override
  bool operator ==(Object other) {
    if (other is Crypto) {
      return symbol == other.symbol && price == other.price && id == other.id;
    }
    return false;
  }
}
