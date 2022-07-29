import 'package:http/http.dart' as http;
import 'package:veriislemi3/model.dart';

class HomeServices  {
  
  List<HomeResponse>? productList = [];
  cekilenVeri()async{
var url = Uri.parse('https://reqres.in/api/users?');
var response = await http.post(url);
 

  }

}
