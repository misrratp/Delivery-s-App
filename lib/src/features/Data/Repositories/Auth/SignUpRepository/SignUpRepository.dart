
import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/AuthFirebaseInterfaces.dart';
import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/Decodables/SignUpDecodable.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/ResultType.dart';

import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SignUpRepository/SignUpRepositoryParameters.dart';

import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/SignUpAuthServices.dart';

import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';

import '../../../../presentation/Domain//Interfaces/Interfaces.dart';

class DefaultSignUpRepository extends SignUpRepository{

  //Dependencias
  SignUpService _signUpService;

  DefaultSignUpRepository({SignUpService? signUpService }) 
  : _signUpService = signUpService ?? DefaultSignUpService();

  @override
  Future<Result<SignUpDecodable, Failure>> singUp({required SignUpRepositoryParameters params}) async {
   
   try{
     final result = await _signUpService.signUp(bodyParameters: params.toMap());
     SignUpDecodable decodable = SignUpDecodable.fromMap(result);
     return Result.success(decodable);
   } on Failure catch(f){
     return Result.failure(Failure.getFirebaseAuthErrorMessage(error: f.error));

     }
   }
}