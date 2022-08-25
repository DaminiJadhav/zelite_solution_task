import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:zelite_solution_task/model/api_response.dart';

class WebService {


  Future<List<ApiResponse>> getapiResponse(int pagesize,int page,String context) async {
    String apiUrl="https://techcrunch.com/wp-json/wp/v2/posts?per_page="+pagesize.toString()+"&page="+page.toString()+"&context="+context;
    print(apiUrl);

    final response = await http.get(
      Uri.parse(apiUrl),
    );

    print(response.body);
    return apiResponseFromJson(response.body);

  }

}