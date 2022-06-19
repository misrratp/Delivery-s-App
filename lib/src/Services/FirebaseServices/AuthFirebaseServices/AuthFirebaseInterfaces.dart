import 'package:deliver_app_yt/src/Base/ApiService/ApiService.dart';

abstract class BaseFirebaseService{


ApiService apiService = DefaultApiService();
static String BaseUrl = "https://identitytoolkit.googleapis.com/v1/";
static String signUpEndPoint = "accounts:signUp?key=";
static String signInEndPoint = "accounts:signInWithPassword?key=";
static String adminToken = "AIzaSyDuHKkwHBcdhH6J8ao_v_NfI_nO3kzVTkI";
}

abstract class SignUpService extends BaseFirebaseService {
String endpoint = BaseFirebaseService.BaseUrl + BaseFirebaseService.signUpEndPoint + BaseFirebaseService.adminToken;
Future<Map<String,dynamic>> signUp({ required Map<String,dynamic> bodyParameters});

}

abstract class SignInService extends BaseFirebaseService {
String endpoint = BaseFirebaseService.BaseUrl + BaseFirebaseService.signInEndPoint + BaseFirebaseService.adminToken;
Future<Map<String,dynamic>> signIn({ required Map<String,dynamic> bodyParameters});

}