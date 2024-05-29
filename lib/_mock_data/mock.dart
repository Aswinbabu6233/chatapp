import 'package:chatapp/models/user.dart';
import 'package:chatapp/models/video.dart';

User currentUser = User("stackedList", "assets/images/profile10.jpeg");

User demoUser1 = User("user_1", "assets/images/profile9.jpeg");

User demoUser2 = User("user_2", "assets/images/profile8.jpeg");
User demoUser3 = User("user_3", "assets/images/profile7.jpeg");
User demoUser4 = User("user_4", "assets/images/profile6.jpeg");

final List<Video> videos = [
  Video("assets/videos/video1.mp4", demoUser1, "caption", "audioName", "12.5K",
      "123", demoUser1.profileImageUrl),
  Video("assets/videos/video2.mp4", demoUser2, "caption", "audioName", "15K",
      "136", demoUser2.profileImageUrl),
  Video("assets/videos/video1.mp4", demoUser3, "caption", "audioName", "123",
      "12", demoUser3.profileImageUrl),
  Video("assets/videos/video2.mp4", demoUser4, "caption", "audioName", "2.5K",
      "67", demoUser4.profileImageUrl),
];
