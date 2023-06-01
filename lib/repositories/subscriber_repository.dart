import 'package:flluter_main/models/subscriber.dart';

class SubscriberRepository {
  final List<Subscriber> _subscribers = [];

  get subscribers => _subscribers;

  SubscriberRepository() {
    _subscribers.add(Subscriber(id: 1, name: 'teste', type: 'Participante'));
  }

  void addSubscriber({required String name, required String type}) {
    _subscribers.add(Subscriber(id: _getNextId(), name: name, type: type));
  }

  void removeSubscriber({required int id}) {
    _subscribers.removeAt(id);
  }

  void editSubscriber(
      {required int id, required String name, required String type}) {
    Subscriber subscriber =
        _subscribers.firstWhere((element) => (element.id == id));

    int index = _subscribers.indexOf(subscriber);

    subscriber.name = name;
    subscriber.type = type;

    _subscribers[index] = subscriber;
  }

  int _getNextId() {
    int result = 1;
    for (Subscriber subs in _subscribers) {
      if (subs.id >= result) {
        result = subs.id + 1;
      }
    }

    return result;
  }
}
