class GenreDM{
  String title;
  String id;
  String imagePath;
  GenreDM({required this.title,required this.id,required this.imagePath});

  static List<GenreDM> getGenres(){
    return [
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
      GenreDM(title: 'Action', id: 'action', imagePath: 'assets/images/category_image.png'),
    ];
  }
}