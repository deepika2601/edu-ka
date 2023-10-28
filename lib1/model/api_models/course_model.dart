class CourselistModel {
  String? status;
  List<CourselistData>? data;
  String? message;

  CourselistModel({this.status, this.data, this.message});

  CourselistModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <CourselistData>[];
      json['data'].forEach((v) {
        data!.add(new CourselistData.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class CourselistData {
  int? id;
  String? title;
  String? color;
  String? icon;
  List<SubCategories>? subCategories;
  int? webinarsCount;

  CourselistData(
      {this.id,
      this.title,
      this.color,
      this.icon,
      this.subCategories,
      this.webinarsCount});

  CourselistData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
    icon = json['icon'];
    if (json['sub_categories'] != null) {
      subCategories = <SubCategories>[];
      json['sub_categories'].forEach((v) {
        subCategories!.add(new SubCategories.fromJson(v));
      });
    }
    webinarsCount = json['webinars_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    data['icon'] = this.icon;
    if (this.subCategories != null) {
      data['sub_categories'] =
          this.subCategories!.map((v) => v.toJson()).toList();
    }
    data['webinars_count'] = this.webinarsCount;
    return data;
  }
}

class SubCategories {
  int? id;
  String? title;
  String? icon;
  int? webinarsCount;

  SubCategories({this.id, this.title, this.icon, this.webinarsCount});

  SubCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    icon = json['icon'];
    webinarsCount = json['webinars_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['icon'] = this.icon;
    data['webinars_count'] = this.webinarsCount;
    return data;
  }
}
