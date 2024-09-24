import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_template/core/errors/failure.dart';
import 'package:flutter_clean_architecture_template/core/params/params.dart';
import 'package:flutter_clean_architecture_template/features/feature1/domain/entities/template_entity.dart';


abstract class TemplateRepository {
  Future<Either<Failure, TemplateEntity>> getTemplate(
      {required TemplateParams params});
}
