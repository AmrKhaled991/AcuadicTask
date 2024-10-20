// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aquadic_task/core/GlobalUtils/appRouter.dart';
import 'package:aquadic_task/features/UserPackges/data/models/user_bundles_response/user_s_bundle.dart';
import 'package:aquadic_task/features/UserPackges/presentation/view/utils/CustomSelectorRow.dart';
import 'package:aquadic_task/features/UserPackges/presentation/view/utils/CustomUserpackges.dart';
import 'package:flutter/material.dart';

import 'package:aquadic_task/core/GlobalUtils/CustomBottunPayPackage.dart';
import 'package:go_router/go_router.dart';

class UserPackagesState extends StatefulWidget {
  List<UserSBundle>? userBundles;
  UserPackagesState({
    Key? key,
    required this.userBundles,
  }) : super(key: key);

  @override
  State<UserPackagesState> createState() => _UserPackagesStateState();
}

class _UserPackagesStateState extends State<UserPackagesState> {
  late PageController pageController;
  int page = 0;
  late int maxsize;
  @override
  void initState() {
    maxsize = widget.userBundles!.length;
    pageController = PageController();
    pageController.addListener(() {
      page = pageController.page!.round();

      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CustomUserpackges(
                    pageController: pageController,
                    userBundles: widget.userBundles),
              ),
              SliverToBoxAdapter(
                child: CustomSelectorRow(
                  size: maxsize,
                  page: page,
                  ontapl: () {
                    if (page < maxsize) {
                      page = ++page;
                      print("left$page");
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.linear);
                    }
                  },
                  ontapr: () {
                    if (page != maxsize) {
                      page = --page;
                      print("right$page");
                      pageController.previousPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.linear);
                    }
                  },
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 22,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomBottunPayPackage(onTap: () {
                  context.push(Approuter.kaddpackages);
                }),
              ),
            ],
          )),
    );
  }
}
