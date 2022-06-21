import 'dart:convert';

class SignInEntity {
  SignInEntity({
    this.kind,
    this.localId,
    this.email,
    this.displayName,
    this.idToken,
    this.registered,
  });

  String? kind;
  String? localId;
  String? email;
  String? displayName;
  String? idToken;
  bool? registered;

  factory SignInEntity.fromJson(String str) =>
      SignInEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SignInEntity.fromMap(Map<String, dynamic> json) => SignInEntity(
        kind: json["kind"] == null ? null : json["kind"],
        localId: json["localId"] == null ? null : json["localId"],
        email: json["email"] == null ? null : json["email"],
        displayName: json["displayName"] == null ? null : json["displayName"],
        idToken: json["idToken"] == null ? null : json["idToken"],
        registered: json["registered"] == null ? null : json["registered"],
      );

  Map<String, dynamic> toMap() => {
        "kind": kind == null ? null : kind,
        "localId": localId == null ? null : localId,
        "email": email == null ? null : email,
        "displayName": displayName == null ? null : displayName,
        "idToken": idToken == null ? null : idToken,
        "registered": registered == null ? null : registered,
      };
}
