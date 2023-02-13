
import 'package:aberturadartweek/app/dto/order_dto.dart';
import 'package:aberturadartweek/app/models/payment_type_model.dart';

abstract class OrderRepository {
Future<List<PaymentTypeModel>> getAllPaymentsType();
Future<void> saveOrder(OrderDto order);
}