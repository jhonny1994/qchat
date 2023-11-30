import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:qchat/sample.dart';
import 'package:qchat/widgets/avatar.dart';
import 'package:qchat/widgets/message_bubble.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({
    required this.room,
    super.key,
  });

  final ChatRoom room;

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final messageController = TextEditingController();

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentParticipant = chatRoom.participants.firstWhere((user) => user.id == user1.id);
    final otherParticipant = chatRoom.participants.firstWhere((user) => user.id != user1.id);
    final viewInsets = MediaQuery.of(context).viewInsets;
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        title: Text(
          otherParticipant.username,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages.elementAt(index);
                    final isCurrentParticipant = message.senderUserId != currentParticipant.id;
                    return Row(
                      mainAxisAlignment: isCurrentParticipant ? MainAxisAlignment.end : MainAxisAlignment.start,
                      children: [
                        if (!isCurrentParticipant)
                          Avatar(
                            imageUrl: otherParticipant.avatarUrl,
                            radius: 18,
                          ),
                        MessageBubble(message: message),
                      ],
                    );
                  },
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.attach_file),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.primary.withAlpha(100),
                        hintText: 'Type a message',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.send),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (viewInsets.bottom > 0) const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
