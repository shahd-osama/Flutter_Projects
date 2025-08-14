class ArticleModel {
  final String? image;
  final String? title;
  final String? subtitle;
  const ArticleModel({this.image, this.title, this.subtitle});

  factory ArticleModel.fromJson(json){
    return ArticleModel(
          image: json['urlToImage'], //?? '',
          title: json['title'], //?? 'No Title',
          subtitle: json['description'], ) ;
  } 
  @override
  String toString() {
     return 'ArticleModel(title: $title, image: $image, subtitle: $subtitle)' ; 
  }
}
