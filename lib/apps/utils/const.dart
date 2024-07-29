const linkAsset = 'assets/img/weathers/';

class AssetCustom {
  static String getLinkImg(String name) =>
      '$linkAsset${name.replaceAll(' ', '').toLowerCase()}.png';
}

class MyKey {
  static const String key_token = '7f47140bb0aab531088f5aa9069d18c0';
}
