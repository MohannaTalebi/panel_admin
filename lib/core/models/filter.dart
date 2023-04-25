import 'package:flutter/cupertino.dart';

class Filter {
  String? id;
  int? user_id;
  String? token;
  String? mode;
  int? limit;
  int? page;
  int? total;
  String? sort;
  String? sortType;
  String? key;
  String? action;
  String? options;
  DateTime? startDate;
  DateTime? endDate;
  double? lat;
  double? long;
  String? categoryId;
  String? role;
  String? title;
  String? description;
  String? type;
  String? slug;
  int? score;
  int? count_total;
  String? item_id;
  String? code;

  Filter({
    this.id,
    this.user_id,
    this.mode,
    this.token,
    this.limit,
    this.page,
    this.sort,
    this.sortType,
    this.key,
    this.action,
    this.options,
    this.startDate,
    this.endDate,
    this.lat,
    this.long,
    this.categoryId,
    this.role,
    this.title,
    this.description,
    this.type,
    this.slug,
    this.score,
    this.count_total,
    this.item_id,
    this.code,
  });

  factory Filter.fromJson(Map<String, dynamic> json) {
    return Filter(
        id: json['id'],
        user_id: json['user_id'],
        mode: json['mode'],
        token: json['token'],
        limit: json['limit'],
        page: json['page'],
        sortType: json['sortType'],
        sort: json['sort'],
        key: json['key'],
        action: json['action'],
        options: json['options'],
        startDate: json['startDate'],
        endDate: json['endDate'],
        categoryId: json['categoryId'],
        lat: json['lat'],
        long: json['long'],
        role: json['role'],
        title: json['title'],
        description: json['description'],
        type: json['type'],
        slug: json['slug'],
        score: json['score'],
        item_id: json['item_id'],
        code: json['code'],
        count_total: json['count_total']);
  }

  @override
  String toString() {
    return '{ '
        '"id" : ${this.id}, '
        '"user_id" : ${this.user_id}, '
        '"mode" : "${this.mode}" ,'
        '"token" : "${this.token}" ,'
        '"page" : ${this.page} , '
        '"limit" : ${this.limit} , '
        '"key" : "${this.key}" , '
        '"options" :"${this.options}" , '
        '"action" : "${this.action}", '
        '"categoryId" : "${this.categoryId}", '
        '"sort" : "${this.sort}" ,'
        '"startDate" : ${this.startDate} ,'
        '"endDate" : ${this.endDate} ,'
        '"sortType" :  ${this.sortType} ,'
        '"lat" :  ${this.lat} ,'
        '"long" :  ${this.long} ,'
        '"role" :  "${this.role}" ,'
        '"title" :  "${this.title}", '
        '"description" :  "${this.description}", '
        '"type" :  "${this.type}", '
        '"slug" :  "${this.slug}", '
        '"score" :  ${this.score}, '
        '"item_id" :  ${this.item_id}, '
        '"code" : " ${this.code}", '
        '"count_total" :  ${this.count_total} '
        '}';
  }
}
