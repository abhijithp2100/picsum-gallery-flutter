class ImageModel {
  final String id;
  final String author;
  final String url;

  ImageModel({
    required this.id,
    required this.author,
    required this.url,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'],
      author: json['author'],
      url: json['download_url'],
    );
  }
}