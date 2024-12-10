import 'package:flutter/material.dart';
import 'package:translate_app/helper/api_helper/api_helper.dart';

class TranslationProvider with ChangeNotifier
{

  Future<void> translateData()
  async {
    APIHELPER helper = APIHELPER();
    String name = await helper.translateAPI('hello world') as  String;
    print(name);
  }

}