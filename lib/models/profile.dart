class Search {
  List<Posts>? posts;
  List<SearchComments>? searchComments;
  List<Profiles>? profiles;

  Search({this.posts, this.searchComments, this.profiles});

  Search.fromJson(Map<String, dynamic> json) {
    if (json['posts'] != null) {
      posts = <Posts>[];
      json['posts'].forEach((v) {
        posts!.add(new Posts.fromJson(v));
      });
    }
    if (json['searchComments'] != null) {
      searchComments = <SearchComments>[];
      json['searchComments'].forEach((v) {
        searchComments!.add(new SearchComments.fromJson(v));
      });
    }
    if (json['profiles'] != null) {
      profiles = <Profiles>[];
      json['profiles'].forEach((v) {
        profiles!.add(new Profiles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.posts != null) {
      data['posts'] = this.posts!.map((v) => v.toJson()).toList();
    }
    if (this.searchComments != null) {
      data['searchComments'] =
          this.searchComments!.map((v) => v.toJson()).toList();
    }
    if (this.profiles != null) {
      data['profiles'] = this.profiles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? postType;
  String? name;
  UserInfo? userInfo;
  List<ShareLinks>? shareLinks;
  List<PostComments>? postComments;
  String? liked;
  LikesCount? likesCount;
  List<Likes>? likes;
  List<ContestPrizes>? contestPrizes;
  List<ActionButtons>? actionButtons;
  List<Assets>? assets;
  String? publishAt;
  bool? canEdit;
  bool? canDelete;
  bool? futureDated;
  bool? pinned;
  String? reward;
  String? viewUrl;
  String? activityType;
  UserInfo? activityUserInfo;
  String? text;
  int? favouriteCounter;
  String? deadlineAt;
  String? tcUrl;
  bool? canEnter;
  String? quizState;
  String? status;
  int? totalQuestions;
  int? completedQuestions;
  int? successRate;

  Posts(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.postType,
      this.name,
      this.userInfo,
      this.shareLinks,
      this.postComments,
      this.liked,
      this.likesCount,
      this.likes,
      this.contestPrizes,
      this.actionButtons,
      this.assets,
      this.publishAt,
      this.canEdit,
      this.canDelete,
      this.futureDated,
      this.pinned,
      this.reward,
      this.viewUrl,
      this.activityType,
      this.activityUserInfo,
      this.text,
      this.favouriteCounter,
      this.deadlineAt,
      this.tcUrl,
      this.canEnter,
      this.quizState,
      this.status,
      this.totalQuestions,
      this.completedQuestions,
      this.successRate});

  Posts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    postType = json['postType'];
    name = json['name'];
    userInfo = json['userInfo'] != null
        ? new UserInfo.fromJson(json['userInfo'])
        : null;
    if (json['shareLinks'] != null) {
      shareLinks = <ShareLinks>[];
      json['shareLinks'].forEach((v) {
        shareLinks!.add(new ShareLinks.fromJson(v));
      });
    }
    if (json['postComments'] != null) {
      postComments = <PostComments>[];
      json['postComments'].forEach((v) {
        postComments!.add(new PostComments.fromJson(v));
      });
    }
    liked = json['liked'];
    likesCount = json['likesCount'] != null
        ? new LikesCount.fromJson(json['likesCount'])
        : null;
    if (json['likes'] != null) {
      likes = <Likes>[];
      json['likes'].forEach((v) {
        likes!.add(new Likes.fromJson(v));
      });
    }
    if (json['contestPrizes'] != null) {
      contestPrizes = <ContestPrizes>[];
      json['contestPrizes'].forEach((v) {
        contestPrizes!.add(new ContestPrizes.fromJson(v));
      });
    }
    if (json['actionButtons'] != null) {
      actionButtons = <ActionButtons>[];
      json['actionButtons'].forEach((v) {
        actionButtons!.add(new ActionButtons.fromJson(v));
      });
    }
    if (json['assets'] != null) {
      assets = <Assets>[];
      json['assets'].forEach((v) {
        assets!.add(new Assets.fromJson(v));
      });
    }
    publishAt = json['publishAt'];
    canEdit = json['canEdit'];
    canDelete = json['canDelete'];
    futureDated = json['futureDated'];
    pinned = json['pinned'];
    reward = json['reward'];
    viewUrl = json['viewUrl'];
    activityType = json['activityType'];
    activityUserInfo = json['activityUserInfo'] != null
        ? new UserInfo.fromJson(json['activityUserInfo'])
        : null;
    text = json['text'];
    favouriteCounter = json['favouriteCounter'];
    deadlineAt = json['deadlineAt'];
    tcUrl = json['tcUrl'];
    canEnter = json['canEnter'];
    quizState = json['quizState'];
    status = json['status'];
    totalQuestions = json['totalQuestions'];
    completedQuestions = json['completedQuestions'];
    successRate = json['successRate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['postType'] = this.postType;
    data['name'] = this.name;
    if (this.userInfo != null) {
      data['userInfo'] = this.userInfo!.toJson();
    }
    if (this.shareLinks != null) {
      data['shareLinks'] = this.shareLinks!.map((v) => v.toJson()).toList();
    }
    if (this.postComments != null) {
      data['postComments'] = this.postComments!.map((v) => v.toJson()).toList();
    }
    data['liked'] = this.liked;
    if (this.likesCount != null) {
      data['likesCount'] = this.likesCount!.toJson();
    }
    if (this.likes != null) {
      data['likes'] = this.likes!.map((v) => v.toJson()).toList();
    }
    if (this.contestPrizes != null) {
      data['contestPrizes'] =
          this.contestPrizes!.map((v) => v.toJson()).toList();
    }
    if (this.actionButtons != null) {
      data['actionButtons'] =
          this.actionButtons!.map((v) => v.toJson()).toList();
    }
    if (this.assets != null) {
      data['assets'] = this.assets!.map((v) => v.toJson()).toList();
    }
    data['publishAt'] = this.publishAt;
    data['canEdit'] = this.canEdit;
    data['canDelete'] = this.canDelete;
    data['futureDated'] = this.futureDated;
    data['pinned'] = this.pinned;
    data['reward'] = this.reward;
    data['viewUrl'] = this.viewUrl;
    data['activityType'] = this.activityType;
    if (this.activityUserInfo != null) {
      data['activityUserInfo'] = this.activityUserInfo!.toJson();
    }
    data['text'] = this.text;
    data['favouriteCounter'] = this.favouriteCounter;
    data['deadlineAt'] = this.deadlineAt;
    data['tcUrl'] = this.tcUrl;
    data['canEnter'] = this.canEnter;
    data['quizState'] = this.quizState;
    data['status'] = this.status;
    data['totalQuestions'] = this.totalQuestions;
    data['completedQuestions'] = this.completedQuestions;
    data['successRate'] = this.successRate;
    return data;
  }
}

class UserInfo {
  String? id;
  bool? guest;
  String? photoUrl;
  String? nickname;
  String? name;
  String? surname;
  String? type;
  String? displayName;

  UserInfo(
      {this.id,
      this.guest,
      this.photoUrl,
      this.nickname,
      this.name,
      this.surname,
      this.type,
      this.displayName});

  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    guest = json['guest'];
    photoUrl = json['photoUrl'];
    nickname = json['nickname'];
    name = json['name'];
    surname = json['surname'];
    type = json['type'];
    displayName = json['displayName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['guest'] = this.guest;
    data['photoUrl'] = this.photoUrl;
    data['nickname'] = this.nickname;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['type'] = this.type;
    data['displayName'] = this.displayName;
    return data;
  }
}

class ShareLinks {
  String? name;
  String? icon;
  String? shareUrl;

  ShareLinks({this.name, this.icon, this.shareUrl});

  ShareLinks.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    icon = json['icon'];
    shareUrl = json['shareUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['shareUrl'] = this.shareUrl;
    return data;
  }
}

class PostComments {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? text;
  UserInfo? userInfo;
  String? liked;
  LikesCount? likesCount;
  List<Likes>? likes;
  bool? display;
  String? type;

  PostComments(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.text,
      this.userInfo,
      this.liked,
      this.likesCount,
      this.likes,
      this.display,
      this.type});

  PostComments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    text = json['text'];
    userInfo = json['userInfo'] != null
        ? new UserInfo.fromJson(json['userInfo'])
        : null;
    liked = json['liked'];
    likesCount = json['likesCount'] != null
        ? new LikesCount.fromJson(json['likesCount'])
        : null;
    if (json['likes'] != null) {
      likes = <Likes>[];
      json['likes'].forEach((v) {
        likes!.add(new Likes.fromJson(v));
      });
    }
    display = json['display'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['text'] = this.text;
    if (this.userInfo != null) {
      data['userInfo'] = this.userInfo!.toJson();
    }
    data['liked'] = this.liked;
    if (this.likesCount != null) {
      data['likesCount'] = this.likesCount!.toJson();
    }
    if (this.likes != null) {
      data['likes'] = this.likes!.map((v) => v.toJson()).toList();
    }
    data['display'] = this.display;
    data['type'] = this.type;
    return data;
  }
}

class LikesCount {
  int? additionalProp1;
  int? additionalProp2;
  int? additionalProp3;

  LikesCount(
      {this.additionalProp1, this.additionalProp2, this.additionalProp3});

  LikesCount.fromJson(Map<String, dynamic> json) {
    additionalProp1 = json['additionalProp1'];
    additionalProp2 = json['additionalProp2'];
    additionalProp3 = json['additionalProp3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['additionalProp1'] = this.additionalProp1;
    data['additionalProp2'] = this.additionalProp2;
    data['additionalProp3'] = this.additionalProp3;
    return data;
  }
}

class Likes {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  UserInfo? userInfo;
  String? emotion;

  Likes(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.userInfo,
      this.emotion});

  Likes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    userInfo = json['userInfo'] != null
        ? new UserInfo.fromJson(json['userInfo'])
        : null;
    emotion = json['emotion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    if (this.userInfo != null) {
      data['userInfo'] = this.userInfo!.toJson();
    }
    data['emotion'] = this.emotion;
    return data;
  }
}

class ContestPrizes {
  String? id;
  int? position;
  String? place;
  int? count;
  String? description;

  ContestPrizes(
      {this.id, this.position, this.place, this.count, this.description});

  ContestPrizes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    position = json['position'];
    place = json['place'];
    count = json['count'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['position'] = this.position;
    data['place'] = this.place;
    data['count'] = this.count;
    data['description'] = this.description;
    return data;
  }
}

class ActionButtons {
  String? actionUrl;
  String? actionDescription;
  String? actionTextColor;
  String? actionBackgroundColor;

  ActionButtons(
      {this.actionUrl,
      this.actionDescription,
      this.actionTextColor,
      this.actionBackgroundColor});

  ActionButtons.fromJson(Map<String, dynamic> json) {
    actionUrl = json['actionUrl'];
    actionDescription = json['actionDescription'];
    actionTextColor = json['actionTextColor'];
    actionBackgroundColor = json['actionBackgroundColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['actionUrl'] = this.actionUrl;
    data['actionDescription'] = this.actionDescription;
    data['actionTextColor'] = this.actionTextColor;
    data['actionBackgroundColor'] = this.actionBackgroundColor;
    return data;
  }
}

class Assets {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? url;
  String? bucket;
  String? type;
  String? mimeType;
  int? filesize;
  int? width;
  int? height;
  int? durationSeconds;
  String? profileId;
  String? description;
  List<Thumbnails>? thumbnails;

  Assets(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.url,
      this.bucket,
      this.type,
      this.mimeType,
      this.filesize,
      this.width,
      this.height,
      this.durationSeconds,
      this.profileId,
      this.description,
      this.thumbnails});

  Assets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    url = json['url'];
    bucket = json['bucket'];
    type = json['type'];
    mimeType = json['mimeType'];
    filesize = json['filesize'];
    width = json['width'];
    height = json['height'];
    durationSeconds = json['durationSeconds'];
    profileId = json['profileId'];
    description = json['description'];
    if (json['thumbnails'] != null) {
      thumbnails = <Thumbnails>[];
      json['thumbnails'].forEach((v) {
        thumbnails!.add(new Thumbnails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['url'] = this.url;
    data['bucket'] = this.bucket;
    data['type'] = this.type;
    data['mimeType'] = this.mimeType;
    data['filesize'] = this.filesize;
    data['width'] = this.width;
    data['height'] = this.height;
    data['durationSeconds'] = this.durationSeconds;
    data['profileId'] = this.profileId;
    data['description'] = this.description;
    if (this.thumbnails != null) {
      data['thumbnails'] = this.thumbnails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Thumbnails {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? type;
  String? url;
  String? mimeType;
  int? filesize;
  int? width;
  int? height;
  int? durationSeconds;

  Thumbnails(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.type,
      this.url,
      this.mimeType,
      this.filesize,
      this.width,
      this.height,
      this.durationSeconds});

  Thumbnails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    type = json['type'];
    url = json['url'];
    mimeType = json['mimeType'];
    filesize = json['filesize'];
    width = json['width'];
    height = json['height'];
    durationSeconds = json['durationSeconds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['type'] = this.type;
    data['url'] = this.url;
    data['mimeType'] = this.mimeType;
    data['filesize'] = this.filesize;
    data['width'] = this.width;
    data['height'] = this.height;
    data['durationSeconds'] = this.durationSeconds;
    return data;
  }
}

class SearchComments {
  PostComments? postComment;
  PostComments? entryComment;
  Posts? post;
  ContestEntry? contestEntry;

  SearchComments(
      {this.postComment, this.entryComment, this.post, this.contestEntry});

  SearchComments.fromJson(Map<String, dynamic> json) {
    postComment = json['postComment'] != null
        ? new PostComments.fromJson(json['postComment'])
        : null;
    entryComment = json['entryComment'] != null
        ? new PostComments.fromJson(json['entryComment'])
        : null;
    post = json['post'] != null ? new Posts.fromJson(json['post']) : null;
    contestEntry = json['contestEntry'] != null
        ? new ContestEntry.fromJson(json['contestEntry'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.postComment != null) {
      data['postComment'] = this.postComment!.toJson();
    }
    if (this.entryComment != null) {
      data['entryComment'] = this.entryComment!.toJson();
    }
    if (this.post != null) {
      data['post'] = this.post!.toJson();
    }
    if (this.contestEntry != null) {
      data['contestEntry'] = this.contestEntry!.toJson();
    }
    return data;
  }
}

class ContestEntry {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  UserInfo? userInfo;
  String? text;
  String? imageUrl;
  bool? winner;
  int? position;
  String? prizePlace;
  String? liked;
  LikesCount? likesCount;
  List<Likes>? likes;
  // List<EntryComments>? entryComments;
  String? contestUrl;
  bool? canDelete;

  ContestEntry(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.userInfo,
      this.text,
      this.imageUrl,
      this.winner,
      this.position,
      this.prizePlace,
      this.liked,
      this.likesCount,
      this.likes,
      // this.entryComments,
      this.contestUrl,
      this.canDelete});

  ContestEntry.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    userInfo = json['userInfo'] != null
        ? new UserInfo.fromJson(json['userInfo'])
        : null;
    text = json['text'];
    imageUrl = json['imageUrl'];
    winner = json['winner'];
    position = json['position'];
    prizePlace = json['prizePlace'];
    liked = json['liked'];
    likesCount = json['likesCount'] != null
        ? new LikesCount.fromJson(json['likesCount'])
        : null;
    if (json['likes'] != null) {
      likes = <Likes>[];
      json['likes'].forEach((v) {
        likes!.add(new Likes.fromJson(v));
      });
    }
    if (json['entryComments'] != null) {
      // entryComments = <EntryComments>[];
      json['entryComments'].forEach((v) {
        // entryComments!.add(new EntryComments.fromJson(v));
      });
    }
    contestUrl = json['contestUrl'];
    canDelete = json['canDelete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    if (this.userInfo != null) {
      data['userInfo'] = this.userInfo!.toJson();
    }
    data['text'] = this.text;
    data['imageUrl'] = this.imageUrl;
    data['winner'] = this.winner;
    data['position'] = this.position;
    data['prizePlace'] = this.prizePlace;
    data['liked'] = this.liked;
    if (this.likesCount != null) {
      data['likesCount'] = this.likesCount!.toJson();
    }
    if (this.likes != null) {
      data['likes'] = this.likes!.map((v) => v.toJson()).toList();
    }
    // if (this.entryComments != null) {
    //   data['entryComments'] =
    //       this.entryComments!.map((v) => v.toJson()).toList();
    // }
    data['contestUrl'] = this.contestUrl;
    data['canDelete'] = this.canDelete;
    return data;
  }
}

class Profiles {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  bool? guest;
  String? displayName;
  String? nickname;
  String? name;
  String? surname;
  String? photoUrl;
  String? phone;
  bool? phoneVerified;
  String? email;
  bool? emailVerified;
  String? gender;
  String? birthdate;
  String? preferredLanguage;
  String? qrCode;
  String? referralCode;
  String? usedReferralCode;
  UserInfo? referralUserInfo;
  bool? marketingConsent;

  Profiles(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.guest,
      this.displayName,
      this.nickname,
      this.name,
      this.surname,
      this.photoUrl,
      this.phone,
      this.phoneVerified,
      this.email,
      this.emailVerified,
      this.gender,
      this.birthdate,
      this.preferredLanguage,
      this.qrCode,
      this.referralCode,
      this.usedReferralCode,
      this.referralUserInfo,
      this.marketingConsent});

  Profiles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    guest = json['guest'];
    displayName = json['displayName'];
    nickname = json['nickname'];
    name = json['name'];
    surname = json['surname'];
    photoUrl = json['photoUrl'];
    phone = json['phone'];
    phoneVerified = json['phoneVerified'];
    email = json['email'];
    emailVerified = json['emailVerified'];
    gender = json['gender'];
    birthdate = json['birthdate'];
    preferredLanguage = json['preferredLanguage'];
    qrCode = json['qrCode'];
    referralCode = json['referralCode'];
    usedReferralCode = json['usedReferralCode'];
    referralUserInfo = json['referralUserInfo'] != null
        ? new UserInfo.fromJson(json['referralUserInfo'])
        : null;
    marketingConsent = json['marketingConsent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['guest'] = this.guest;
    data['displayName'] = this.displayName;
    data['nickname'] = this.nickname;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['photoUrl'] = this.photoUrl;
    data['phone'] = this.phone;
    data['phoneVerified'] = this.phoneVerified;
    data['email'] = this.email;
    data['emailVerified'] = this.emailVerified;
    data['gender'] = this.gender;
    data['birthdate'] = this.birthdate;
    data['preferredLanguage'] = this.preferredLanguage;
    data['qrCode'] = this.qrCode;
    data['referralCode'] = this.referralCode;
    data['usedReferralCode'] = this.usedReferralCode;
    if (this.referralUserInfo != null) {
      data['referralUserInfo'] = this.referralUserInfo!.toJson();
    }
    data['marketingConsent'] = this.marketingConsent;
    return data;
  }
}
