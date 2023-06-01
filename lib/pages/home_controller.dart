import 'package:flluter_main/repositories/subscriber_repository.dart';

import '../models/subscriber.dart';

class HomeController {
  final SubscriberRepository _subscriberRepository = SubscriberRepository();

  List<Subscriber> get subscribers => _subscriberRepository.subscribers;

  HomeController() {}
}
