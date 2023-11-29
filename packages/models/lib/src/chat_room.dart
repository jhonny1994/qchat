import 'package:equatable/equatable.dart';
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';

class ChatRoom extends Equatable {
  const ChatRoom({
    required this.id,
    required this.participants,
    required this.lastMessage,
    required this.unreadCount,
  });

  factory ChatRoom.fromJson(Map<String, dynamic> json) {
    return ChatRoom(
      id: json['id'] as String? ?? const Uuid().v4(),
      participants: (json['participants'] is List)
          ? (json['participants'] as List<Map<String, dynamic>>).map<User>((user) => User.fromJson(user)).toList()
          : [],
      lastMessage: Message.fromJson(json['last_message'] as Map<String, dynamic>? ?? {}),
      unreadCount: json['unread_count'] as int? ?? 0,
    );
  }
  final String id;
  final List<User> participants;
  final Message lastMessage;
  final int unreadCount;

  ChatRoom copyWith({
    String? id,
    List<User>? participants,
    Message? lastMessage,
    int? unreadCount,
  }) {
    return ChatRoom(
      id: id ?? this.id,
      participants: participants ?? this.participants,
      lastMessage: lastMessage ?? this.lastMessage,
      unreadCount: unreadCount ?? this.unreadCount,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'participants': participants,
      'lastMessage': lastMessage.toJson(),
      'unreadCount': unreadCount,
    };
  }

  @override
  List<Object?> get props => [id, participants, lastMessage, unreadCount];
}
