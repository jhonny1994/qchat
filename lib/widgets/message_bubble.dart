import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:qchat/sample.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    required this.message,
    super.key,
  });
  final Message message;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final alignment = (message.senderUserId != user1.id) ? Alignment.centerRight : Alignment.centerLeft;
    final color = (message.senderUserId != user1.id)
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.secondary;
    final textColor = (message.senderUserId != user1.id)
        ? Theme.of(context).colorScheme.onPrimary
        : Theme.of(context).colorScheme.onSecondary;
    return Align(
      alignment: alignment,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(4),
        constraints: BoxConstraints(maxWidth: size.width * 0.66),
        child: Text(
          message.content ?? '',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: textColor),
        ),
      ),
    );
  }
}
