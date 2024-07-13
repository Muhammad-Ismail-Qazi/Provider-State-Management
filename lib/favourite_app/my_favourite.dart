import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_stateanagement/favourite_app/favourite_provider.dart';

class MyFavouriteView extends StatelessWidget {
  const MyFavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Favourite"),
      ),
      body: ListView.builder(
        itemCount: favouriteProvider.selectedItems.length,
        itemBuilder: (context, index) {
          final item = favouriteProvider.selectedItems[index];
          return ListTile(
            title: Text('Item $item'),
          );
        },
      ),
    );
  }
}