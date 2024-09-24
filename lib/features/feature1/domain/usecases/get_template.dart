import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_template/core/errors/failure.dart';
import 'package:flutter_clean_architecture_template/core/params/params.dart';
import 'package:flutter_clean_architecture_template/features/feature1/domain/entities/template_entity.dart';
import 'package:flutter_clean_architecture_template/features/feature1/domain/repositories/template_repository.dart';



class GetTemplate {
  final TemplateRepository repository;

  GetTemplate({required this.repository});

  Future<Either<Failure, TemplateEntity>> call(
      {required TemplateParams params}) {
    return repository.getTemplate(params: params);
  }
}
