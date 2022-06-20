import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/AuthFirebaseInterfaces.dart';

class DefaultSignUpEntity extends SignUpService{
  @override
  Future<Map<String, dynamic>> signUp({required Map<String, dynamic> bodyParameters}) {
   return apiService.getDataFromPostRequest(bodyParameters: bodyParameters, url: endpoint);
  }


}