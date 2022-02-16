import 'package:cohora_mvvm/helper/style.dart';
import 'package:cohora_mvvm/viewmodels/comments_list_vm.dart';
import 'package:cohora_mvvm/viewmodels/posts_list_vm.dart';
import 'package:cohora_mvvm/viewmodels/profile_list_vm.dart';
import 'package:cohora_mvvm/viewmodels/selectedchip.dart';
import 'package:cohora_mvvm/widgets/choicechip.dart';
import 'package:cohora_mvvm/widgets/commentslist.dart';
import 'package:cohora_mvvm/widgets/postslist.dart';
import 'package:cohora_mvvm/widgets/profilelist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final commentsvm = Provider.of<CommentsListVM>(context);
    final chip = Provider.of<SelectedChip>(context);
    final profilevm = Provider.of<ProfileListVM>(context);
    final postvm = Provider.of<PostsListVM>(context);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: size.width > 500 ? 500 : size.width,
            padding: const EdgeInsets.all(10),
            height: size.height,
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _controller.clear();
                      },
                      child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          )),
                    ),
                    Expanded(
                      child: Container(
                        height: 45,
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(17)),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          controller: _controller,
                          onSubmitted: (value) {
                            if (value.isNotEmpty) {
                              commentsvm.fetchComments(value);
                              profilevm.fetchProfiles(value);
                              postvm.fetchPosts(value);
                            }
                          },
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {
                                if (_controller.text.isNotEmpty) {
                                  commentsvm.fetchComments(_controller.text);
                                  profilevm.fetchProfiles(_controller.text);
                                  postvm.fetchPosts(_controller.text);
                                }
                              },
                              child: const Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                            hintText: "Enter Search",
                            hintStyle: const TextStyle(color: Colors.black),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: svgSearchIcon("assets/icons/filter_icon.svg")),
                    ),
                  ],
                ),
                const ChoiceChipSelector(),
                Expanded(
                  child: Builder(builder: ((context) {
                    switch (chip.selectedChip) {
                      case "Top":
                        return PostsList(posts: postvm.post);
                      case "Latest":
                        return CommentsList(comments: commentsvm.comment);
                      case "People":
                        return ProfileList(profiles: profilevm.profile);
                      case "Comments":
                        return CommentsList(comments: commentsvm.comment);
                      case "Photos":
                        return PostsList(posts: postvm.post);
                      case "Videos":

                      case "Shopbuzz":

                      default:
                        return Container();
                    }
                  })),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
