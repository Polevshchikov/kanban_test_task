import 'package:flutter/material.dart';
import 'package:kanban_test_task/generated/l10n.dart';
import 'package:kanban_test_task/pages/task/elements/approved_widget.dart';
import 'package:kanban_test_task/pages/task/elements/in_progress_widget.dart';
import 'package:kanban_test_task/pages/task/elements/needs_review_widget.dart';
import 'package:kanban_test_task/pages/task/elements/on_hold_widget.dart';

class TaskPage extends StatelessWidget {
  TaskPage({Key? key, required this.token}) : super(key: key);
  final String token;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.white12,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8.0),
              child: GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(context, '/'),
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            indicatorWeight: 2,
            indicatorColor: Colors.greenAccent,
            unselectedLabelColor: Colors.white54,
            labelColor: Colors.white,
            tabs: [
              Tab(text: S.of(context).tab_bar_tabs_one),
              Tab(text: S.of(context).tab_bar_tabs_two),
              Tab(text: S.of(context).tab_bar_tabs_three),
              Tab(text: S.of(context).tab_bar_tabs_four),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OnHoldWidget(
              token: token,
            ),
            InProgressWidget(
              token: token,
            ),
            NeedsReviewWidget(
              token: token,
            ),
            ApprovedWidget(
              token: token,
            ),
          ],
        ),
      ),
    );
  }
}
