import 'dart:convert';

import 'package:flutter_clean_architecture_template/core/databases/cache/cache_helper.dart';
import 'package:flutter_clean_architecture_template/core/errors/exceptions.dart';
import 'package:flutter_clean_architecture_template/features/feature1/data/models/template_model.dart';


class TemplateLocalDataSource {
  final CacheHelper cache;
  final String key = "CachedTemplate";
  TemplateLocalDataSource({required this.cache});

  cacheTemplate(TemplateModel? templateToCache) {
    if (templateToCache != null) {
      cache.saveData(
        key: key,
        value: json.encode(
          templateToCache.toJson(),
        ),
      );
    } else {
      throw CacheException(errorMessage: "No Internet Connection");
    }
  }

  Future<TemplateModel> getLastTemplate() {
    final jsonString = cache.getDataString(key: key);

    if (jsonString != null) {
      return Future.value(TemplateModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException(errorMessage: "No Internet Connection");
    }
  }
}
