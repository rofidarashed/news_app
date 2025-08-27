class NewsModel {
  final String? image;
  final String title;
  final String description;
  final String language;
  const NewsModel({
    required this.image,
    required this.title,
    required this.description,
    required this.language,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      image: json['image_url'],
      title: json['title'],
      description: json['description'],
      language: json['language'],
    );
  }
}
