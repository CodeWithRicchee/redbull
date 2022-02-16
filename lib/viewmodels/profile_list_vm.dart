import 'package:cohora_mvvm/services/apiservices.dart';
import 'package:cohora_mvvm/viewmodels/profile_vm.dart';
import 'package:flutter/material.dart';

enum LoadingStatus {
  completed,
  searching,
  empty,
}

class ProfileListVM extends ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.empty;
  List<ProfileViewModel> profile = <ProfileViewModel>[];

  Future<void> fetchProfiles(String keyword) async {
    final results = await SearchApi().fetchProfiles(keyword);
    
    loadingStatus = LoadingStatus.searching;
    notifyListeners();
    profile = results!.map((e) => ProfileViewModel(profile: e)).toList();

    if (profile.isEmpty) {
      loadingStatus = LoadingStatus.empty;
    } else {
      loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
