import 'package:new_applicaton/models/catalog.dart';

class CartModel{
  static final cartModel = CartModel.internal();

  CartModel.internal();

  factory CartModel() => cartModel;

  late Medicine _catalog;

  final List<int> _itemIds=[];

  Medicine get catalog => _catalog;

  set catalog(Medicine newCatalog){
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice => items.fold(0, (total, current) => total + current.price);

  void add(Item item){
    _itemIds.add(item.id);
  }

  void remove(Item item){
    _itemIds.remove(item.id);
  }


}