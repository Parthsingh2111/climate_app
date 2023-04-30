import 'dart:io';

void main(){
  performTasks();
}

void performTasks(){
  task1();
  task2();
  task3();
}

void task1(){
  String result1='task 1 data';
  print('Task 1 complete');
}

void task2() {
  Duration threeSeconds = Duration (seconds:3);
  /*
  //this is synchronous method->sleep method
  sleep(threeSeconds);

  String result2 = 'task2 data';
  print ('Task 2 complete');
  */
  //this is asynchronous method->future -> will delay 3 sec still allow other line of code to run.
  Future.delayed(threeSeconds,(){
    String result2 = 'task2 data';
    print ('Task 2 complete');
  });
}
// if task3 relies on input from task 2, it will be executed but with null
//how to fix? we can make our code to wait so we know that future is an asychronous method
//and we allow other code to coninue on and not have to wait for this to finish.
//but in this case, becoz task 3 relies on this second task to complete, what we can do is we can make our code to wait for it to complete before we call the next task. to do this, /we can change performTasks() to async method
//this async is called a modifier and we add it just before the curly brace. By adding that async keyword, we can now have access to the keyword await. We put it right infront of task 2()
//before we call task 2() we're going to wait for it to finish.
void task3(){
  String result3='task 3 data';
  print ('Task 3 complete');
}