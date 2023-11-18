// ignore_for_file: unnecessary_question_mark

class ClubModel {
  int? id;
  ClubID? clubID;
  Season? season;
  int? active;

  ClubModel({this.id, this.clubID, this.season, this.active});

  ClubModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clubID =
        json['clubID'] != null ? new ClubID.fromJson(json['clubID']) : null;
    season =
        json['season'] != null ? new Season.fromJson(json['season']) : null;
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.clubID != null) {
      data['clubID'] = this.clubID!.toJson();
    }
    if (this.season != null) {
      data['season'] = this.season!.toJson();
    }
    data['active'] = this.active;
    return data;
  }
}

class ClubID {
  int? id;
  String? codeClub;
  String? name;
  String? image;
  Null? logo;
  int? active;
  Null? linkclub;
  Stadiumid? stadiumid;

  ClubID(
      {this.id,
      this.codeClub,
      this.name,
      this.image,
      this.logo,
      this.active,
      this.linkclub,
      this.stadiumid});

  ClubID.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    codeClub = json['codeClub'];
    name = json['name'];
    image = json['image'];
    logo = json['logo'];
    active = json['active'];
    linkclub = json['linkclub'];
    stadiumid = json['stadiumid'] != null
        ? new Stadiumid.fromJson(json['stadiumid'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['codeClub'] = this.codeClub;
    data['name'] = this.name;
    data['image'] = this.image;
    data['logo'] = this.logo;
    data['active'] = this.active;
    data['linkclub'] = this.linkclub;
    if (this.stadiumid != null) {
      data['stadiumid'] = this.stadiumid!.toJson();
    }
    return data;
  }
}

class Stadiumid {
  String? name;
  String? image;
  int? active;
  Null? capacity;
  Null? address;
  Null? pitchSize;
  Null? description;
  int? id;

  Stadiumid(
      {this.name,
      this.image,
      this.active,
      this.capacity,
      this.address,
      this.pitchSize,
      this.description,
      this.id});

  Stadiumid.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    active = json['active'];
    capacity = json['capacity'];
    address = json['address'];
    pitchSize = json['pitchSize'];
    description = json['description'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['active'] = this.active;
    data['capacity'] = this.capacity;
    data['address'] = this.address;
    data['pitchSize'] = this.pitchSize;
    data['description'] = this.description;
    data['id'] = this.id;
    return data;
  }
}

class Season {
  String? seasonname;
  Null? champion;
  int? active;
  int? activeUI;
  int? id;

  Season({this.seasonname, this.champion, this.active, this.activeUI, this.id});

  Season.fromJson(Map<String, dynamic> json) {
    seasonname = json['seasonname'];
    champion = json['champion'];
    active = json['active'];
    activeUI = json['activeUI'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['seasonname'] = this.seasonname;
    data['champion'] = this.champion;
    data['active'] = this.active;
    data['activeUI'] = this.activeUI;
    data['id'] = this.id;
    return data;
  }
}
