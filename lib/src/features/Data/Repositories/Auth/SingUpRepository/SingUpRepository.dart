
import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/AuthFirebaseInterfaces.dart';
import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/Decodables/SignUpDecodable.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/ResultType.dart';

import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SingUpRepository/SingUpRepositoryParameters.dart';

import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/SignUpAuthServices.dart';

import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';

import '../../../../presentation/Domain/UseCases/Interfaces/Interfaces.dart';

class DefaultSingUpRepository extends SingUpRepository{

  //Dependencias
  SignUpService _signUpService;

  DefaultSingUpRepository({SignUpService? signUpService }) 
  : _signUpService = signUpService ?? DefaultSignUpService();

  @override
  Future<Result<DefaultSignUpService, Failure>> singUp({required SingUpRepositoryParameters params}) async {
   
   try{
     final result = await _signUpService.signUp(bodyParameters: params.toMap());
     SignUpDecodable decodable = SignUpDecodable.fromMap(result);
     return Result.success(decodable);
   } on Failure catch(f){
     return Result.failure(Failure.getFirebaseAuthErrorMessage(error: f.error));

     }
   }

}