import 'package:flutter/material.dart';
import 'package:kanban_test_task/generated/l10n.dart';

class TextCardWidget extends StatelessWidget {
  final int id;
  final String text;
  const TextCardWidget({Key? key, required this.id, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: ListTile(
          minVerticalPadding: 10,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${S.of(context).text_card_id}: $id',
                style: TextStyle(fontSize: 12, color: Colors.white70),
              ),
              SizedBox(
                height: 8,
              ),
              Text('$text'),
            ],
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
