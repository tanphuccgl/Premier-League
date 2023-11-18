// ignore_for_file: unnecessary_question_mark

class TableModel {
  int? id;
  int? position;
  ClubName? clubName;
  Null? played;
  int? won;
  int? draw;
  int? lose;
  int? points;
  Null? nextmatch;
  int? season;
  int? clubid;
  int? active;
  int? gf;
  int? ga;
  int? gd;

  TableModel(
      {this.id,
      this.position,
      this.clubName,
      this.played,
      this.won,
      this.draw,
      this.lose,
      this.points,
      this.nextmatch,
      this.season,
      this.clubid,
      this.active,
      this.gf,
      this.ga,
      this.gd});

  TableModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    position = json['position'];
    clubName = json['clubName'] != null
        ? new ClubName.fromJson(json['clubName'])
        : null;
    played = json['played'];
    won = json['won'];
    draw = json['draw'];
    lose = json['lose'];
    points = json['points'];
    nextmatch = json['nextmatch'];
    season = json['season'];
    clubid = json['clubid'];
    active = json['active'];
    gf = json['gf'];
    ga = json['ga'];
    gd = json['gd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['position'] = this.position;
    if (this.clubName != null) {
      data['clubName'] = this.clubName!.toJson();
    }
    data['played'] = this.played;
    data['won'] = this.won;
    data['draw'] = this.draw;
    data['lose'] = this.lose;
    data['points'] = this.points;
    data['nextmatch'] = this.nextmatch;
    data['season'] = this.season;
    data['clubid'] = this.clubid;
    data['active'] = this.active;
    data['gf'] = this.gf;
    data['ga'] = this.ga;
    data['gd'] = this.gd;
    return data;
  }
}

class ClubName {
  int? id;
  String? codeClub;
  String? name;
  String? image;
  Null? logo;
  int? active;
  Null? linkclub;
  Stadiumid? stadiumid;

  ClubName(
      {this.id,
      this.codeClub,
      this.name,
      this.image,
      this.logo,
      this.active,
      this.linkclub,
      this.stadiumid});

  ClubName.fromJson(Map<String, dynamic> json) {
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
