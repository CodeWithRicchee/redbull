import 'package:cohora_mvvm/helper/formatter.dart';
import 'package:cohora_mvvm/models/profile.dart';

class CommentsViewModel {
  final SearchComments comments;

  CommentsViewModel({required this.comments});

  String get assetUrl {
    for (int i = 0; i < comments.post!.assets!.length; i++) {
      return comments.post!.assets![i].url.toString();
    }
    return imageUrl;
  }

  String get name {
    return comments.post!.userInfo!.nickname.toString();
  }

  String get description {
    return comments.post!.text.toString();
  }

  String get photoUrl {
    return comments.post!.userInfo!.photoUrl.toString();
  }

  String get timeAgo {
    return comments.post!.createdAt.toString();
  }

  String get viewUrl {
    return comments.post!.viewUrl.toString();
  }
}
