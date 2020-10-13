import 'dart:io';

import 'package:flutter/material.dart';
import 'package:place_app/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(String title, File pickedImage) {
    final newPlace = Place(
        id: DateTime.now().toString(),
        title: title,
        location: null,
        image: pickedImage);

    _items.add(newPlace);
    notifyListeners();
  }
}
