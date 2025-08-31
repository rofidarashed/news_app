class NewsModel {
  final String? image;
  final String title;
  final String description;
  final String language;
  final List<String>? author;
  final String url;
  const NewsModel({
    required this.image,
    required this.title,
    required this.description,
    required this.language,
    required this.author,
    required this.url,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      image: json['image_url'],
      title: json['title'],
      description: json['description'],
      language: json['language'],
      author: (json['creator'] as List?)?.map((e) => e.toString()).toList() ??
          ['Unknown Author'],
      url: json['link'],
    );
  }
}
