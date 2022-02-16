import 'package:cohora_mvvm/services/apiservices.dart';
import 'package:cohora_mvvm/viewmodels/comments_vm.dart';
import 'package:cohora_mvvm/viewmodels/post_vm.dart';
import 'package:cohora_mvvm/viewmodels/profile_list_vm.dart';

import 'package:flutter/material.dart';

class CommentsListVM extends ChangeNotifier {
  LoadingStatus commentsLoadingStatus = LoadingStatus.empty;
  List<CommentsViewModel> comment = <CommentsViewModel>[];
  int? count;
  Future<void> fetchComments(String keyword) async {
    final results = await SearchApi().fetchComments(keyword);
    commentsLoadingStatus = LoadingStatus.searching;
    notifyListeners();
    comment = results!.map((e) => CommentsViewModel(comments: e)).toList();
    if (comment.isEmpty) {
      commentsLoadingStatus = LoadingStatus.empty;
    } else {
      commentsLoadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
