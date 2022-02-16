import 'package:cohora_mvvm/models/profile.dart';

class ProfileViewModel {
  final Profiles profile;

  ProfileViewModel({required this.profile});

  String get nickname {
    return profile.nickname.toString();
  }

  String get email {
    return profile.email.toString();
  }

  String get photoUrl {
    return profile.photoUrl.toString();
  }

  String get qrcode {
    return profile.qrCode.toString();
  }
}
