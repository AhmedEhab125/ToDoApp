import 'package:moor_flutter/moor_flutter.dart';

part 'tasks_database.g.dart';

class TasksTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  TextColumn get description => text()();

  TextColumn get state => text()();
}

@UseMoor(tables: [TasksTable])
class TasksDataBase extends _$TasksDataBase {
  TasksDataBase()
      : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite'));

  @override
  int get schemaVersion => 1;

  Future<List<TasksTableData>> getAllTasks() => select(tasksTable).get();

  Future<int> insertTask(TasksTableData task) => into(tasksTable).insert(task);
  Future updateTaske(TasksTableData task) => update(tasksTable).replace(task);
}