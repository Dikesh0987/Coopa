class UserModel{
  String? uid;
  String? firstname;
  String? secondname;
  String? phone;
  String? address;

  UserModel({this.uid,this.firstname,this.secondname,this.phone, this.address});

  factory UserModel.fromMap(map){
    return UserModel(uid: map['uid'],firstname: map['firstname'],secondname: map['secondname'],phone: map['phone'],address: map['address']);
  }

  Map<String,dynamic> toMap(){
    return {
      'uid': uid,
      'firstname': firstname,
      'secondname': secondname,
      'phone': phone,
      'address': address,
    };
  }
}