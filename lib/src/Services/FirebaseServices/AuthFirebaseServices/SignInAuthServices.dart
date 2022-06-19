import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/AuthFirebaseInterfaces.dart';

class DefaultSignInService extends SignInService{
  @override
  Future<Map<String, dynamic>> signIn({required Map<String, dynamic> bodyParameters}) {
   return apiService.getDataFromPostRequest(bodyParameters: bodyParameters, url: endpoint);
  }


}