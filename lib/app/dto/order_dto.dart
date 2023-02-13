
import 'package:aberturadartweek/app/dto/order_product_dto.dart';

class OrderDto {
  List<OrderProductDto> products;
  String adress;
  String document;
  int paymentMethodId; 
  OrderDto({
    required this.products,
    required this.adress,
    required this.document,
    required this.paymentMethodId,
  });
}
