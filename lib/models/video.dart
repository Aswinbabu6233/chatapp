import 'package:chatapp/models/user.dart';

class Video {
  final String videoUrl;
  final User postedBy;
  final String caption;
  final String audioName;
  final String likes;
  final String comments;
  final String UserImg;

  Video(this.videoUrl, this.postedBy, this.caption, this.audioName, this.likes,
      this.comments, this.UserImg);
}
