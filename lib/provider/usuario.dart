import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:powerfullmind/dtos/response/usuario.dart';


class usuarioProvider extends ChangeNotifier{
  bool isLoading = true;
  final logger = Logger();

  List<usuarioDtos>? _usuarios;

  List<usuarioDtos>? get usuarios => _usuarios;


  Future fethUsuarios() async{ 
    final response = await http 
    .get(Uri.parse('https://powerfulmind.up.railway.app/usuario/searchAll')); 

    if(response.statusCode == 201){
      final json = jsonDecode(response.body);
      logger.d(json);
      final List<dynamic> data = json;
      _usuarios = data.map((e) => usuarioDtos.fromMap(e)).toList();
      isLoading = false;
      notifyListeners();
    }else{
      throw Exception('Falla al traer los usuarios');
    }
  }
}