class Item {
  final num id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String imageBanner;

  Item(this.id, this.name, this.description, this.price, this.color,
      this.imageBanner);
}

class CatalogModel {
  static final items = [
    Item(1, 'Iphone 12 Pro Max', 'Apple Iphone 12th Generation', 999, '#33505a',
        'assets/images/iphone12.jpg')
  ];
}
