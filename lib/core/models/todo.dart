import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';
part 'todo.g.dart';

@JsonSerializable()
class Todo extends INetworkModel<Todo> {
  Todo({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  int? userId;
  int? id;
  String? title;
  bool? completed;

  @override
  Todo fromJson(Map<String, dynamic> json) => Todo.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$TodoToJson(this);
}
