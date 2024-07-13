import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_stateanagement/slider_app/slider_provider.dart';

class SliderView extends StatelessWidget {
  const SliderView({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");
    final sliderProvider = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider App"),
        centerTitle: true,
      ),
      body:Consumer<SliderProvider>(builder: (context, value, child) {
        return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Slider(

              value: value.sliderValue,
              onChanged: (value) {
                sliderProvider.setSliderValue(value);
              },
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                      color: Colors.green.withOpacity(value.sliderValue),
                      height: 200,
                    )),
                Expanded(
                    child: Container(
                      color: Colors.red.withOpacity(value.sliderValue),
                      height: 200,
                    ))
              ],
            )
          ],
        );
      },),
    );
  }
}