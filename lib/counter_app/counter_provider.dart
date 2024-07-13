import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier{

  int count =0;

  int get countGetter => count;

  void incrementer() {
    count++;
    notifyListeners();
  }


}