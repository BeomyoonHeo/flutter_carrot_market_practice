import 'package:intl/intl.dart';

String numberPriceFormat(String price) {
  final formatter = NumberFormat("#,###원"); //intl라이브러리 사용
  return formatter
      .format(int.parse(price)); // 문자열을 int 타입으로 변경 - 문자열이 들어오는 것을 대응
}
