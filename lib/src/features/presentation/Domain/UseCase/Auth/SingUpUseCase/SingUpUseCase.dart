
import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';
import 'package:deliver_app_yt/src/Base/ApiService/Constans/ErrorMessage.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SignUpRepository/SignUpRepository.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SignUpRepository/SignUpRepositoryParameters.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/Entities/Auth/SignUpEntity/SignUpEntity.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/Entities/Auth/SignUpEntity/User/UserEntity.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/Interfaces/Interfaces.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/UseCase/Auth/SingUpUseCase/SingUpUseCaseParameters.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/UseCase/Auth/SingUpUseCase/User/SaveUserDataUseCase/SaveDataUseCaseParameters.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/UseCase/Auth/SingUpUseCase/User/SaveUserDataUseCase/SaveUserDataUseCase.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/Dates/DateHelpers.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/ResultType.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/UserPhotos/UserPhotoHelper.dart';

abstract class SignUpUseCase {
  Future<Result<SignUpEntity, Failure>>execute({ required SingUpUseCaseParameters params});
}

class DefaultSignUpUseCase extends SignUpUseCase {

  SignUpRepository _signUpRepository; 
  SaveUserDataUseCase _saveUserDataUseCase;

  DefaultSignUpUseCase({SignUpRepository? signUpRepository, SaveUserDataUseCase? saveUserDataUseCase})
              : _signUpRepository = signUpRepository ?? DefaultSignUpRepository(),
               _saveUserDataUseCase = saveUserDataUseCase ?? DefaultSaveUserDataUseCase();



  @override
  Future<Result<SignUpEntity, Failure>> execute({required SingUpUseCaseParameters params}) {
    return _signUpRepository.singUp(params: SignUpRepositoryParameters(email: params.email, password: params.password)).then( (result) {
    switch(result.status){
      
      case ResultStatus.success:
        // Null Check
        if(result.value == null){
          return Result.failure(Failure.fromMessage(message: AppFailureMessages.unExpectedErrorMessage));
        }
        SignUpEntity entity = SignUpEntity.fromMap(result.value!.toMap());
        
        return saveUserDataInDataBase(params: params, 
                                      entity: entity);
      case ResultStatus.error:
        return Result.failure(result.error);
       }
    });
  }
}

extension on DefaultSignUpUseCase{
  Future<Result<SignUpEntity, Failure>> saveUserDataInDataBase({required SingUpUseCaseParameters params,
                                                                required SignUpEntity entity}){

    SaveUserDataParameters _params = SaveUserDataParameters(
    localId: entity.localId,
    role: UserRole.user,
    username: params.username,
    phone: params.phone,
    dateOfBirth: params.date,
    startData: DateHelpers.getStartData(),
    photo: UserPhotoHelper.defaultUserPhoto,
    shippingAddress: '',
    billingAddress: '',
    idToken: entity.idToken
    );

    return _saveUserDataUseCase.execute(parameters: _params).then((result) {
    switch(result.status){
      
      case ResultStatus.success:
        return Result.success(entity);
      case ResultStatus.error:
        return Result.failure(result.error);
    }
    });
  }
}