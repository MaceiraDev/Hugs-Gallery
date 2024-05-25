import 'dart:async';
import 'dart:io';

import 'package:trabalho_api_gallery/config.dart';
import 'package:trabalho_api_gallery/models/cat.dart';
import 'package:trabalho_api_gallery/services/cat_http.dart';

class getCat{
  final _catHtpp = CatHttp();
  Future<List<Cat>> get() async{
    final list = await _catHtpp.getJson(linkApi);
    await Future.delayed(Duration(seconds: 3));
    return list.map((e) => Cat(animeName: e["anime_name"], url: e["url"])).toList();
  }
}