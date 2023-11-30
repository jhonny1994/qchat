import 'package:supabase/supabase.dart';

class MessageRepository {
  MessageRepository(this.client);

  final SupabaseClient client;
  void createMessage() {
    throw UnimplementedError();
  }

  Future<List<Map<String, dynamic>>> fetchMessages(String chatRoomId) async {
    try {
      return await client.from('messages').select<PostgrestList>().eq('chat_room_id', chatRoomId);
    } catch (e) {
      throw Exception(e);
    }
  }
}
