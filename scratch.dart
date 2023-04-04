import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String ts2 = await task2();
  //print(task2());
  task3(ts2);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  Duration sec = Duration(seconds: 2);
  //sleep(sec);
  String result = '';
  await Future.delayed(sec, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Code) {
  String result = 'task 3 data';
  print('Task 3 complete $task2Code');
}
