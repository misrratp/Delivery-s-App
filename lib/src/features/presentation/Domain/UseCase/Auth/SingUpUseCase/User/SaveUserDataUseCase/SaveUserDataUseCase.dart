
import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';
import 'package:deliver_app_yt/src/Base/ApiService/Constans/ErrorMessage.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SignUpRepository/Decodables/User/SaveUserDataRepository.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SignUpRepository/User/UserBodyParameters.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/Entities/Auth/SignUpEntity/User/UserEntity.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/Interfaces/Interfaces.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/UseCase/Auth/SingUpUseCase/User/SaveUserDataUseCase/SaveDataUseCaseParameters.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/ResultType.dart';

abstract class SaveUserDataUseCase{
  Future<Result<UserEntity, Failure>> execute({ required SaveUserDataParameters parameters});
}

class DefaultSaveUserDataUseCase extends SaveUserDataUseCase{
  
  //dependencias

  final SaveUserDataRepository _saveUserDataRepository;

  DefaultSaveUserDataUseCase({SaveUserDataRepository? saveUserDataRepository})
               : _saveUserDataRepository = saveUserDataRepository ?? DefaultSaveUserDataRepository();
  
  @override
  Future<Result<UserEntity, Failure>> execute({required SaveUserDataParameters parameters}) {
    UserBodyParameters _parameters = UserBodyParameters(
    localId:  parameters.localId,
    role: parameters.role?.toShortString(),
    username: parameters.username,
    email: parameters.email,
    dateOfBirth: parameters.dateOfBirth,
    startData: parameters.startData,
    photo: parameters.photo,
    shippingAddress: parameters.shippingAddress,
    billingAddress: parameters.billingAddress,
    idToken: parameters.idToken
    );

    return _saveUserDataRepository.saveUserData(parameters: _parameters).then((result) {
    switch (result.status){
      
      case ResultStatus.success:
        if(result.value == null){
          return Result.failure(Failure.fromMessage(message: AppFailureMessages.unExpectedErrorMessage));
        } 
        var _entity = UserEntity.fromMap(result.value!.toMap());
        return Result.success(_entity);
      
      case ResultStatus.error:
        return Result.failure(result.error);
    }
    });
  }
  
}