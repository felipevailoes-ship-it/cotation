import 'cotation_model.dart';

class ListCurrencies {

  final List<Cotation> listCurrencies;
  ListCurrencies(this.listCurrencies);

  ListCurrencies.fromJson(Map<String, dynamic> json) :
      listCurrencies = List.from(json.values).map((item) => Cotation.fromJson(item)).toList();

}