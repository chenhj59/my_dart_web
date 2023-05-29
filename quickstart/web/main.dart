import 'dart:html';

void main() {
  thingsTodo().forEach(addTodoItem);
}

Iterable<String> thingsTodo() sync* {
  const actions = ['Walk', 'Wash', 'Feed'];
  const pets = ['cats', 'dogs'];

  for (final action in actions) {
    for (final pet in pets) {
      if (pet != 'cats' || action != 'Feed') {
        yield '$action the $pet';
      }
    }
  }
}

void addTodoItem(String item) {
  final listElement = LIElement()..text = item;

  todoList.children.add(listElement);
}

final UListElement todoList = querySelectorAll('#todolist') as UListElement;
