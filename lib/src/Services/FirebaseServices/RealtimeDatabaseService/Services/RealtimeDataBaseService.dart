import 'package:deliver_app_yt/src/Base/ApiService/ApiService.dart';
import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';

import '../Interfaces/Interfaces.dart';

class DefaultRealtimeDatabaseService extends RealtimeDatabaseService{

final ApiService _apiService;

DefaultRealtimeDatabaseService({ApiService? apiService}) :  _apiService = apiService ?? DefaultApiService();

  @override
  Future<Map<String, dynamic>> getData({required String path}) async {
   var endpoint = baseUrl + path + endUrl;

    try{
final result = await _apiService.getDataFromGetRequest(url: endpoint);
return result;
    } on Failure catch(f){
return f.error;
    }
  }

  @override
  Future<Map<String, dynamic>> postData({required Map<String, dynamic> bodyParameters, required String path}) async{
    var endpoint = baseUrl + path + endUrl;

try{
final result = await _apiService.getDataFromPostRequest(bodyParameters: bodyParameters, url: endpoint); 
return result;

    } on Failure catch(f){
return f.error;
    }
  }



  @override
  Future<Map<String, dynamic>> putData({required Map<String, dynamic> bodyParameters, required String path}) async{
      var endpoint = baseUrl + path + endUrl;
try{
final result = await _apiService.getDataFromPutRequest(bodyParameters: bodyParameters, url: endpoint);
return result;
}on Failure catch(f){
return f.error;

  }
}
}