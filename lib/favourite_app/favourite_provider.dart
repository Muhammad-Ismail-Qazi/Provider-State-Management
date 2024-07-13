import 'package:flutter/foundation.dart';

class FavouriteProvider with ChangeNotifier{

  List<int> selectedItems =[];



  List get selectedItem => selectedItems;

  void addItems (int index){
    selectedItems.add(index);
    notifyListeners();
  }
  void removeItems (int index){
    selectedItems.remove(index);
    notifyListeners();
  }
}