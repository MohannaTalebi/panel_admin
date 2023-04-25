List<Support> getAllSupports(data) =>
    data.map<Support>((x) => Support.fromMap(x)).toList();

class Support {
  bool? loading;
  dynamic id;
  int? user_id;
  String? title;
  String? slug;
  int? status;
  String? type;
  int? time_create;
  Map<String, dynamic>? body;
  Map<String, dynamic>? meta;

  Support({
    this.loading,
    this.id,
    this.user_id,
    this.title,
    this.slug,
    this.status,
    this.type,
    this.time_create,
    this.body,
    this.meta,
  });

  factory Support.fromMap(Map<String, dynamic> json) => Support(
    loading: false,
    id: json["id"],
    user_id: json["user_id"],
    title: json["title"],
    slug: json["slug"],
    status: json["status"],
    type: json["type"],
    time_create: json["time_create"],
    body: json["body"],
    meta: json["meta"],
  );

  Support.fromJson(Map<String, dynamic> json) {
    loading = false;
    id = json['id'];
    user_id = json['user_id'];
    title = json['title'];
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    time_create = json['time_create'];
    // body = json['body'] != null ? SupportBody.fromJson(json['body']) : null;
    body = json['body'] != null ? json['body'] : null;
    meta = json['meta'] != null ? json['meta'] : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loading'] = false;
    data['id'] = id;
    data['user_id'] = user_id;
    data['title'] = title;
    data['slug'] = slug;
    data['status'] = status;
    data['type'] = type;
    data['time_create'] = time_create;
    if (body != null) {
      // data['body'] = body!.toJson();
      data['body'] = body;
      data['meta'] = meta;
    }
    return data;
  }
}
