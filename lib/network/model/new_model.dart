class NewModel {
  int? id;
  String? title;
  String? description;
  String? content;
  String? image;
  String? createdAt;
  int? status;
  int? isHome;

  NewModel(
      {this.id,
      this.title,
      this.description,
      this.content,
      this.image,
      this.createdAt,
      this.status,
      this.isHome});

  NewModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    content = json['content'];
    image = json['image'];
    createdAt = json['createdAt'];
    status = json['status'];
    isHome = json['isHome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['content'] = this.content;
    data['image'] = this.image;
    data['createdAt'] = this.createdAt;
    data['status'] = this.status;
    data['isHome'] = this.isHome;
    return data;
  }
}
