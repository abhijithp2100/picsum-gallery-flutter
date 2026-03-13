import 'package:flutter/material.dart';
import '../models/image_model.dart';
import '../services/api_service.dart';

class ImageProviderModel extends ChangeNotifier {
  List<ImageModel> images = [];
  bool isLoading = false;

  Future<void> fetchImages() async {
    isLoading = true;
    notifyListeners();

    images = await ApiService.fetchImages();

    isLoading = false;
    notifyListeners();
  }
}