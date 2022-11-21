import 'package:carrot_market_ui/util/my_number_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/product.dart';
import '../../../theme.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title, style: textTheme().bodyText1),
          const SizedBox(height: 4.0),
          Text('${product.address} • ${product.publishedAt}'),
          const SizedBox(height: 4.0),
          Text(
            '${numberPriceFormat(product.price)}',
            style: textTheme().headline2,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildIcons(
                count: product.commentsCount,
                iconData: CupertinoIcons.chat_bubble_2,
              ),
              const SizedBox(width: 8.0),
              _buildIcons(
                  iconData: CupertinoIcons.heart, count: product.heartCount),
            ],
          )
        ],
      ),
    );
  }

  String numberFormat(String price) {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(price));
  }

  Widget _buildIcons({required int count, required IconData iconData}) {
    return Visibility(
      visible: count > 0,
      child: Row(
        children: [
          Icon(iconData, size: 14.0),
          const SizedBox(width: 4.0),
          Text('${count}'),
        ],
      ),
    );
  }
}
