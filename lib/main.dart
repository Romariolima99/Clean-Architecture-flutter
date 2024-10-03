import 'package:clean_arquiteture/core/inject/inject.dart';
import 'package:clean_arquiteture/layers/presentatiton/UI/pages/carro_page.dart';
import 'package:flutter/material.dart';

void main() {
  Inject.init();
  runApp(MaterialApp(
    home: CarroPage(),
  ));
}
