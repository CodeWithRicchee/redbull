import 'package:cached_network_image/cached_network_image.dart';
import 'package:cohora_mvvm/helper/formatter.dart';
import 'package:cohora_mvvm/helper/style.dart';
import 'package:cohora_mvvm/viewmodels/comments_list_vm.dart';
import 'package:cohora_mvvm/viewmodels/comments_vm.dart';
import 'package:cohora_mvvm/viewmodels/post_vm.dart';
import 'package:cohora_mvvm/viewmodels/profile_list_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommentsList extends StatelessWidget {
  const CommentsList({Key? key, required this.comments}) : super(key: key);
  final List<CommentsViewModel> comments;
  @override
  Widget build(BuildContext context) {
    final commentvm = Provider.of<CommentsListVM>(context);
    return commentvm.commentsLoadingStatus == LoadingStatus.empty
        ? const Center(child: Text("No Results Found"))
        : ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: comments.length,
            itemBuilder: (context, index) {
              final comment = comments[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: GestureDetector(
                  onTap: () {
                    launchURL(comment.viewUrl);
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(
                            comment.name,
                            style: boldTitle,
                          ),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(comment.photoUrl),
                          ),
                          subtitle: Text(timeAgo(comment.timeAgo)),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              svgPostIcons("assets/icons/share.svg"),
                              const SizedBox(width: 15),
                              svgPostIcons("assets/icons/three_dots.svg"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          child: Text(
                            parseHtmlString(comment.description),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: CachedNetworkImage(
                                imageUrl: comment.assetUrl,
                                fit: BoxFit.fill,
                                placeholder: (context, url) => const SizedBox(
                                  height: 200,
                                  child: Center(child: Text("Video/GIF")),
                                ),
                                errorWidget: (context, url, error) =>
                                    Image.network(imageUrl),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15)
                      ],
                    ),
                  ),
                ),
              );
            },
          );
  }
}
