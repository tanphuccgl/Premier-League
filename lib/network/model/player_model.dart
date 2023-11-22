// ignore_for_file: unnecessary_question_mark

class PlayerModel {
  int? id;
  String? name;
  String? height;
  String? weight;
  String? image;
  int? number;
  String? dateOfBirth;
  int? status;
  ClubId? clubId;
  Nationality? nationality;
  PositionId? positionId;

  PlayerModel(
      {this.id,
      this.name,
      this.height,
      this.weight,
      this.image,
      this.number,
      this.dateOfBirth,
      this.status,
      this.clubId,
      this.nationality,
      this.positionId});

  PlayerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    height = json['height'];
    weight = json['weight'];
    image = json['image'];
    number = json['number'];
    dateOfBirth = json['dateOfBirth'];
    status = json['status'];
    clubId =
        json['clubId'] != null ? new ClubId.fromJson(json['clubId']) : null;
    nationality = json['nationality'] != null
        ? new Nationality.fromJson(json['nationality'])
        : null;
    positionId = json['positionId'] != null
        ? new PositionId.fromJson(json['positionId'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['image'] = this.image;
    data['number'] = this.number;
    data['dateOfBirth'] = this.dateOfBirth;
    data['status'] = this.status;
    if (this.clubId != null) {
      data['clubId'] = this.clubId!.toJson();
    }
    if (this.nationality != null) {
      data['nationality'] = this.nationality!.toJson();
    }
    if (this.positionId != null) {
      data['positionId'] = this.positionId!.toJson();
    }
    return data;
  }
}

class ClubId {
  String? codeClub;
  String? name;
  String? image;
  String? logo;
  String? linkclub;
  int? id;
  int? active;

  ClubId(
      {this.codeClub,
      this.name,
      this.image,
      this.logo,
      this.linkclub,
      this.id,
      this.active});

  ClubId.fromJson(Map<String, dynamic> json) {
    codeClub = json['codeClub'];
    name = json['name'];
    image = json['image'];
    logo = json['logo'];
    linkclub = json['linkclub'];
    id = json['id'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codeClub'] = this.codeClub;
    data['name'] = this.name;
    data['image'] = this.image;
    data['logo'] = this.logo;
    data['linkclub'] = this.linkclub;
    data['id'] = this.id;
    data['active'] = this.active;
    return data;
  }
}

class Nationality {
  String? name;
  String? image;
  int? id;

  Nationality({this.name, this.image, this.id});

  Nationality.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['id'] = this.id;
    return data;
  }
}

class PositionId {
  String? position;
  int? id;

  PositionId({this.position, this.id});

  PositionId.fromJson(Map<String, dynamic> json) {
    position = json['position'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['position'] = this.position;
    data['id'] = this.id;
    return data;
  }
}
