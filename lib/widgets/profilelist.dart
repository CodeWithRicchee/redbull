import 'package:cohora_mvvm/helper/formatter.dart';
import 'package:cohora_mvvm/helper/style.dart';
import 'package:cohora_mvvm/viewmodels/profile_list_vm.dart';
import 'package:cohora_mvvm/viewmodels/profile_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({Key? key, required this.profiles}) : super(key: key);
  final List<ProfileViewModel> profiles;
  @override
  Widget build(BuildContext context) {
    final profilevm = Provider.of<ProfileListVM>(context);

    return profilevm.loadingStatus == LoadingStatus.empty
        ? const Center(child: Text("No Profiles Found"))
        : ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: profiles.length,
            itemBuilder: (context, index) {
              final profile = profiles[index];
              return ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(profile.photoUrl),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30)),
                ),
                title: Text(
                  profile.nickname,
                  style: boldTitle,
                ),
                subtitle: Text(profile.email),
                trailing: ElevatedButton(
                  onPressed: () {
                    launchURL(profile.qrcode);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: const StadiumBorder(),
                      fixedSize: const Size(80, 30)),
                  child: const Text("Follow",
                      style: TextStyle(color: Colors.white)),
                ),
              );
            },
          );
  }
}
