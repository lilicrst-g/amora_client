class BasketDto {
  final String id;
  final String name;
  final double price;
  final String description;
  final String? photoId;

  const BasketDto({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    this.photoId,
  });

  factory BasketDto.fromJson(dynamic json) {
    return BasketDto(
      id: json['id'] as String,      
      name: json['name'] as String,      
      price: (json['price'] as num).toDouble(),       
      description: json['description'] as String,     
      photoId: json['photoId'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'photoId': photoId,
    };
  }
}

