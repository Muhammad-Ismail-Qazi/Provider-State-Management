import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_stateanagement/favourite_app/favourite_provider.dart';
import 'package:provider_stateanagement/favourite_app/my_favourite.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");
    final favouriteProvider = Provider.of<FavouriteProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("favourite"),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const MyFavouriteView(),));
          }, icon:const Icon(Icons.favorite))

        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Consumer<FavouriteProvider>(builder: (context, value, child) {
            return ListTile(
                onTap: () {
                  if(value.selectedItems.contains(index)){
                    value.removeItems(index);
                  }
                  else{
                    favouriteProvider.addItems(index);
                  }

                },
                title: Text(index.toString()),
                trailing:Icon(value.selectedItems.contains(index)
                    ? Icons.favorite
                    : Icons.favorite_border_outlined)
            );
          },);
        },
      ),
    );
  }
}