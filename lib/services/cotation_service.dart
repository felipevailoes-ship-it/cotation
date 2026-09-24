import 'dart:convert';
import 'package:cotation/models/list_currencies_model.dart';
import 'package:http/http.dart' as http;

class CotationService {
  String url = "https://blockchain.info/ticker";
  dynamic _response;
  CotationService(){
    _response="";
  }

  Future<ListCurrencies> fecthListCurrencies() async{
    _response = await http.get(Uri.parse(url));
    if(_response.statusCode == 200){
      Map<String, dynamic> returned= json.decode(_response.body);
      return ListCurrencies.fromJson(returned);
    }else{
      throw Exception('Falhou ao carregar');
    }
  }

}