// ignore_for_file: unnecessary_question_mark

class MatchModel {
  int? id;
  Null? matchCode;
  ClubHome? clubHome;
  ClubHome? clubAway;
  String? matchDay;
  String? matchTime;
  Season? season;
  int? roundmatch;
  String? leg;
  Null? resultClubHome;
  Null? resultClubAway;
  Stadiumid? stadiumId;
  Null? referees;
  int? active;

  MatchModel(
      {this.id,
      this.matchCode,
      this.clubHome,
      this.clubAway,
      this.matchDay,
      this.matchTime,
      this.season,
      this.roundmatch,
      this.leg,
      this.resultClubHome,
      this.resultClubAway,
      this.stadiumId,
      this.referees,
      this.active});

  MatchModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    matchCode = json['matchCode'];
    clubHome = json['clubHome'] != null
        ? new ClubHome.fromJson(json['clubHome'])
        : null;
    clubAway = json['clubAway'] != null
        ? new ClubHome.fromJson(json['clubAway'])
        : null;
    matchDay = json['matchDay'];
    matchTime = json['matchTime'];
    season =
        json['season'] != null ? new Season.fromJson(json['season']) : null;
    roundmatch = json['roundmatch'];
    leg = json['leg'];
    resultClubHome = json['resultClubHome'];
    resultClubAway = json['resultClubAway'];
    stadiumId = json['stadiumId'] != null
        ? new Stadiumid.fromJson(json['stadiumId'])
        : null;
    referees = json['referees'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['matchCode'] = this.matchCode;
    if (this.clubHome != null) {
      data['clubHome'] = this.clubHome!.toJson();
    }
    if (this.clubAway != null) {
      data['clubAway'] = this.clubAway!.toJson();
    }
    data['matchDay'] = this.matchDay;
    data['matchTime'] = this.matchTime;
    if (this.season != null) {
      data['season'] = this.season!.toJson();
    }
    data['roundmatch'] = this.roundmatch;
    data['leg'] = this.leg;
    data['resultClubHome'] = this.resultClubHome;
    data['resultClubAway'] = this.resultClubAway;
    if (this.stadiumId != null) {
      data['stadiumId'] = this.stadiumId!.toJson();
    }
    data['referees'] = this.referees;
    data['active'] = this.active;
    return data;
  }
}

class ClubHome {
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

  ClubHome(
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

  ClubHome.fromJson(Map<String, dynamic> json) {
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
  String? capacity;
  String? address;
  String? pitchSize;
  String? description;
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
