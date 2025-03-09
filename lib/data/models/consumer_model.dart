class ConsumerModel {
  String? uid;
  String? creditorId;
  String? name;
  String? pix;
  String? phone;
  String? photoURL;
  String? email;
  DateTime? creationTime;
  DateTime? updateTime;
  bool? active;
  String? address;

  ConsumerModel({
    this.uid,
    this.creditorId,
    this.name,
    this.pix,
    this.phone,
    this.photoURL,
    this.email,
    this.creationTime,
    this.updateTime,
    this.active,
    this.address,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'creditorId': creditorId,
      'name': name,
      'pix': pix,
      'phone': phone,
      'photoURL': photoURL,
      'email': email,
      'creationTime': creationTime?.toIso8601String(),
      'updateTime': updateTime?.toIso8601String(),
      'active': active,
      'address': address,
    };
  }

  factory ConsumerModel.fromMap({required Map<String, dynamic> map}) {
    return ConsumerModel(
      uid: map['uid'],
      name: map['name'],
      creditorId: map['creditorId'],
      pix: map['pix'],
      phone: map['phone'],
      photoURL: map['photoURL'],
      email: map['email'],
      creationTime: map['creationTime'] != null
          ? DateTime.parse(map['creationTime'])
          : null,
      updateTime:
          map['updateTime'] != null ? DateTime.parse(map['updateTime']) : null,
      active: map['active'],
      address: map['address'],
    );
  }
}
