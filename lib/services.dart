import 'package:http/http.dart' as http;
import 'package:mirac_flutter_study2/model.dart';

class HomeServices {
  List<Product>? productList = [];

  veriCekme() async {
    var url = Uri.parse('https://dummyjson.com/products');
    var response = await http.get(url);
    productList = homeResponseFromJson(response.body).products;

    print(productList![0].description);
  }
}
