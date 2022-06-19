
abstract class BaseRealTimeDatabaseService{
String baseUrl = "https://delivery-app-flutter-f5f87-default-rtdb.firebaseio.com/";
String endUrl = ".json";


 }
 abstract class RealtimeDatabaseService extends BaseRealTimeDatabaseService{
    Future<Map<String,dynamic>> postData({required Map<String,dynamic> bodyParameters,
              required String path});

     Future<Map<String,dynamic>> putData({required Map<String,dynamic> bodyParameters,
              required String path});

     Future<Map<String,dynamic>> getData({ required String path });

 }