import 'package:models/models.dart';

const user1 = User(
  id: '2bfefd11-127e-490a-a000-9c6c0a143dbc',
  username: 'Wilber Graham',
  phone: '804-234-1811',
  email: 'Kari53@yahoo.com',
  avatarUrl: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1013.jpg',
  status: 'online',
);
const user2 = User(
  id: '52833b73-f2aa-4db4-ac6d-5f7ca13b7d65',
  username: 'Madelynn Lubowitz',
  phone: '480-825-9122',
  email: 'Garnett70@yahoo.com',
  avatarUrl: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/295.jpg',
  status: 'online',
);

final chatRoom = ChatRoom(
  id: '619e721d-478c-4500-bd9a-51eeb4292cc5',
  participants: const [user1, user2],
  lastMessage: Message(
    chatRoomId: '619e721d-478c-4500-bd9a-51eeb4292cc5',
    senderUserId: '2bfefd11-127e-490a-a000-9c6c0a143dbc',
    receiverUserId: '52833b73-f2aa-4db4-ac6d-5f7ca13b7d65',
    createdAt: DateTime(2023, 12, 1, 1),
  ),
  unreadCount: 0,
);

final messages = [
  Message(
    id: 'aa424ec3-b701-47e4-9a75-5591c11442ed',
    chatRoomId: '619e721d-478c-4500-bd9a-51eeb4292cc5',
    senderUserId: user1.id,
    receiverUserId: user2.id,
    createdAt: DateTime(2023, 12, 1, 1, 0, 10),
    content: 'et labore iusto',
  ),
  Message(
    id: '7cc8519b-9c75-4eb2-acd6-ed05280fd642',
    chatRoomId: '619e721d-478c-4500-bd9a-51eeb4292cc5',
    senderUserId: user2.id,
    receiverUserId: user1.id,
    createdAt: DateTime(2023, 12, 1, 1, 0, 30),
    content: 'architecto voluptate neque',
  ),
  Message(
    id: 'ac9ae0af-132e-48e8-a6cd-345bdedc8cce',
    chatRoomId: '619e721d-478c-4500-bd9a-51eeb4292cc5',
    senderUserId: user1.id,
    receiverUserId: user2.id,
    createdAt: DateTime(2023, 12, 1, 1, 0, 20),
    content: 'officiis vero et',
  ),
  Message(
    id: '8c688521-675e-47a0-9aa7-05a87c1c4496',
    chatRoomId: '619e721d-478c-4500-bd9a-51eeb4292cc5',
    senderUserId: user2.id,
    receiverUserId: user1.id,
    createdAt: DateTime(2023, 12, 1, 1, 0, 40),
    content: 'odit nam pariatur',
  ),
];
