import 'package:flutter/foundation.dart';
import '../repositories/repository.dart';

class Task{
  final int id;
  String? description;
  bool? complete;
  Task({
    this.complete = false,
    this.description = '',
  });

  Task.fromModel(Model model)
  : id = model.id,
  description = model.data['description'],
  complete = model.data['complete'];

  Model toModel() =>
  Model (id:id, data: {'description': description, 'complete': complete});
}