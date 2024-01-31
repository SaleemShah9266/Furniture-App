class CategoryModel {
  String imageUrl, name, price, type, fullName, description;
  Map<String, List<String>> differentImageUrl;
  CategoryModel({
    required this.imageUrl,
    required this.name,
    required this.fullName,
    required this.price,
    required this.type,
    required this.description,
    required this.differentImageUrl,
  });
}

List<CategoryModel> categoriesGrid = [
  CategoryModel(
    name: "Chair",
    fullName: "chair",
    imageUrl: "chair1.png",
    price: '\$20',
    type: "chair",
    description: "contemporary twist on classic mid",
    differentImageUrl: {
      "chair1": ["chair2.png", "chair3.png", "chair4.png"],
      "chair3": ["chair2.png", "chair3.png", "chair4.png"],
      "chair2": [
        "chair2.png",
        "chair3.png",
        "chair4.png",
        "chair1.png",
        "chair2.png",
        "chair3.png",
        "chair4.png",
        "chair6.png",
        "chair5.png"
      ],
    },
  ),
  CategoryModel(
    name: "Floor lamp",
    fullName: "Floor  lamp",
    imageUrl: "lamp1.png",
    price: '\$25.00',
    type: "chair",
    description: "contemporary twist on classic mid",
    differentImageUrl: {
      "lamp1": ["lamp2.png", "lamp3.png", "lamp1.png", "lamp1.png"],
      "lamp2": ["lamp1.png", "lamp2.png", "lamp3.png", "lamp3.png"],
      "lamp3": [
        "lamp2.png",
        "lamp1.png",
        "lamp1.png",
      ],
    },
  ),
  CategoryModel(
    name: "Floor lamp",
    fullName: "Floor  lamp",
    imageUrl: "lamp1.png",
    price: '\$25.00',
    type: "chair",
    description: "contemporary twist on classic mid",
    differentImageUrl: {
      "lamp1": ["lamp2.png", "lamp3.png", "lamp1.png", "lamp1.png"],
      "lamp2": ["lamp1.png", "lamp2.png", "lamp3.png", "lamp3.png"],
      "lamp3": [
        "lamp2.png",
        "lamp1.png",
        "lamp1.png",
      ],
    },
  ),
  CategoryModel(
    name: "Sofa",
    fullName: "Sofa Set",
    imageUrl: "sofa1.png",
    price: '\$25.00',
    type: "sofa",
    description: "contemporary twist on classic mid",
    differentImageUrl: {
      "sofa1": [
        "sofa2.png",
        "sofa2.png",
      ],
      "sofa2": [
        "sofa1.png",
        "sofa2.png",
      ],
      "sofa3": [
        "sofa1.png",
        "sofa2.png",
      ],
    },
  ),
];
