class Product {
  int? id;
  int? year;
  String? title;
  String? handle;
  String? publisher;
  String? isbn;
  int? page;
  Product({
    this.id,
    this.year,
    this.title,
    this.handle,
    this.publisher,
    this.isbn,
    this.page,
  });
  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    year = json['Year'];
    title = json['Title'];
    handle = json['handle'];
    publisher = json['Publisher'];
    isbn = json['ISBN'];
    page = json['Pages'];
  }
}
