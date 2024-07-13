
import 'package:flutter/cupertino.dart';

class SliderProvider with ChangeNotifier{
  double sliderValue=1;

  double  get _sliderValue => sliderValue;

  void setSliderValue(double newValue){
    sliderValue =newValue;
    notifyListeners();
  }
}