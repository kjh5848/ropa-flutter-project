class PopularUserPhotos {
  final int photoId;
  final int creatorId;
  final String name;
  final String path;
  final String sort;

  const PopularUserPhotos({
    required this.photoId,
    required this.creatorId,
    required this.name,
    required this.path,
    required this.sort,
  });

  factory PopularUserPhotos.fromJson(Map<String, dynamic> json) {
    return PopularUserPhotos(
      photoId: json["photoId"],
      creatorId: json["creatorId"],
      name: json["name"],
      path: json["path"],
      sort: json["sort"],
    );
  }
//

//
}
