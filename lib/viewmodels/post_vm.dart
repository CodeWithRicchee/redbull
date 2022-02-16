import 'package:cohora_mvvm/helper/formatter.dart';
import 'package:cohora_mvvm/models/profile.dart';

class PostViewModel {
  final Posts posts;

  PostViewModel({required this.posts});

  String get assetUrl {
    for (int i = 0; i < posts.assets!.length; i++) {
      return posts.assets![i].url.toString();
    }
    return imageUrl;
  }

  String get name {
    return posts.userInfo!.nickname.toString();
  }

  String get description {
    return posts.text.toString();
  }

  String get photoUrl {
    return posts.userInfo!.photoUrl.toString();
  }

  String get timeAgo {
    return posts.createdAt.toString();
  }

  String get viewUrl {
    return posts.viewUrl.toString();
  }
}
