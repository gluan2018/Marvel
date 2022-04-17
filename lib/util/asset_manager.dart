import 'package:flutter/material.dart';

const _basePathIcon = 'asset/icon/';
const _basePathImage = 'asset/image/';

enum AssetManager { comic, history, series, error }

extension IconWidget on AssetManager {
  Image get iconImage {
    switch (this) {
      case AssetManager.comic:
        return Image.asset('${_basePathIcon}comic.png');
      case AssetManager.history:
        return Image.asset('${_basePathIcon}history.png');
      case AssetManager.series:
        return Image.asset('${_basePathIcon}series.png');
      case AssetManager.error:
        return Image.asset('${_basePathImage}error.png');
    }
  }
}
