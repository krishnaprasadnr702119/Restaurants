class Category {
  final String? strCategory;
  final String? strCategoryThumb;
  final String? strCategoryDescription;

  Category({this.strCategory, this.strCategoryThumb, this.strCategoryDescription});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      strCategory: json['strCategory'],
      strCategoryThumb: json['strCategoryThumb'],
      strCategoryDescription: json['strCategoryDescription'],
    );
  }
}
