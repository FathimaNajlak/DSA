void main() {
  List<int> queue = [];

  //enqueue (add)
  queue.add(5);
  queue.add(7);
  queue.add(4);
  queue.add(6);
  queue.add(3);

  print('elements in the queue : $queue');

  //dequeue(remove first element)
  int elementRemoved = queue.removeAt(0);
  print('removed element : $elementRemoved');
  print('queue after deletion : $queue');

  //checking isEmpty
  bool isEmpty = queue.isEmpty;
  print('empty? : $isEmpty');

  //retrieveing front ele
  int frontElement = queue.first;
  print('front element : $frontElement');

  //get size
  int size = queue.length;
  print('size of the queue : $size');

  queue.removeAt(0);
  print('queue after deletion : $queue');
  int size2 = queue.length;
  print('size after deletion : $size2');
}
