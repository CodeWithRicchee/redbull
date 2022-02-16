import 'package:cohora_mvvm/screens/homescreen.dart';
import 'package:cohora_mvvm/viewmodels/comments_list_vm.dart';
import 'package:cohora_mvvm/viewmodels/posts_list_vm.dart';
import 'package:cohora_mvvm/viewmodels/profile_list_vm.dart';
import 'package:cohora_mvvm/viewmodels/selectedchip.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
          textTheme: GoogleFonts.rubikTextTheme(
            Theme.of(context)
                .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
          ),
        ),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider<ProfileListVM>(
                create: (BuildContext context) {
              return ProfileListVM();
            }),
            ChangeNotifierProvider<SelectedChip>(
                create: (BuildContext context) {
              return SelectedChip();
            }),
            ChangeNotifierProvider<PostsListVM>(create: (BuildContext context) {
              return PostsListVM();
            }),
            ChangeNotifierProvider<CommentsListVM>(
                create: (BuildContext context) {
              return CommentsListVM();
            }),
          ],
          child: const HomeScreen(),
        ));
  }
}
