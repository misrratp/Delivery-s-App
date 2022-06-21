
import 'package:deliver_app_yt/src/features/presentation/Domain/Entities/Auth/SignUpEntity/User/UserEntity.dart';

class SaveUserDataParameters {
  SaveUserDataParameters({

    this.localId,
    this.role,
    this.username,
    this.email,
    this.phone,
    this.dateOfBirth,
    this.startData,
    this.photo,
    this.shippingAddress,
    this.billingAddress,
    this.idToken

  });

  String? localId;
  UserRole? role;
  String? username;
  String? email;
  String? phone;
  String? dateOfBirth;
  String? startData;
  String? photo;
  String? shippingAddress;
  String? billingAddress;
  String? idToken;

  Map<String, dynamic> toMap() => {
    "localId": localId == null ? null : localId,
    "role": role == null ? null : role,
    "username": username == null ? null : username,
    "email": email == null ? null : email,
    "phone": phone == null ? null : phone,
    "dateOfBirth": dateOfBirth == null ? null : dateOfBirth,
    "startData": startData == null ? null : startData,
    "photo": photo == null ? null : photo,
    "shippingAddress": shippingAddress == null ? null : shippingAddress,
    "billingAddress": billingAddress == null ? null : billingAddress,
    "idToken": idToken == null ? null : idToken,
  };
}