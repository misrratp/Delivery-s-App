
import 'package:deliver_app_yt/src/Base/ApiService/Constans/ErrorMessage.dart';
import 'package:deliver_app_yt/src/Services/FirebaseServices/RealtimeDatabaseService/Interfaces/Interfaces.dart';
import 'package:deliver_app_yt/src/Services/FirebaseServices/RealtimeDatabaseService/Services/RealtimeDataBaseService.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SignUpRepository/Decodables/User/UserDecodable.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SignUpRepository/User/UserBodyParameters.dart';
import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/Decodables/SignUpDecodable.dart';
import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/Interfaces/Interfaces.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/ResultType.dart';

abstract class _Paths {
  static String userCollection = "users/";
}

class DefaultSaveUserDataRepository extends SaveUserDataRepository{
  
  //Dependencias 
  RealtimeDatabaseService _realtimeDatabaseService;

  DefaultSaveUserDataRepository({RealtimeDatabaseService? realtimeDatabaseService})
              : _realtimeDatabaseService = realtimeDatabaseService ?? DefaultRealtimeDatabaseService();
  
  
  @override
  Future<Result<SignUpDecodable, Failure>> saveUserData({required UserBodyParameters parameters}) async {
    if(parameters.localId == null){
      return Result.failure(Failure.fromMessage(message: AppFailureMessages.unExpectedErrorMessage));
          }
          //Creamos el Path
          var path = _Paths.userCollection + parameters.localId!;
  
    try{
      final result = await _realtimeDatabaseService.putData(bodyParameters: parameters.toMap(), path: path);
      UserDecodable decodable = UserDecodable.fromMap(result);
      return Result.success(decodable);
    } on Failure catch(f){
      return Result.failure(f);
    }
  
  }

}