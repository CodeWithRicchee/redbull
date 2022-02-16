import 'package:cohora_mvvm/services/apiservices.dart';
import 'package:cohora_mvvm/viewmodels/post_vm.dart';
import 'package:cohora_mvvm/viewmodels/profile_list_vm.dart';

import 'package:flutter/material.dart';

class PostsListVM extends ChangeNotifier {
  LoadingStatus postLoadingStatus = LoadingStatus.empty;
  List<PostViewModel> post = <PostViewModel>[];
  int? count;
  Future<void> fetchPosts(String keyword) async {
    final results = await SearchApi().fetchPosts(keyword);
    postLoadingStatus == LoadingStatus.searching;
    notifyListeners();
    post = results!.map((e) => PostViewModel(posts: e)).toList();
    if (post.isEmpty) {
      postLoadingStatus = LoadingStatus.empty;
    } else {
      postLoadingStatus = LoadingStatus.completed;
    }

    notifyListeners();
  }
}
