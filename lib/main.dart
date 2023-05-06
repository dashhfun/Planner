import 'package:flutter/material.dart';
import 'package:planner/plan_provider.dart';
import 'package:planner/views/plan_creator_screen.dart';
import '../views/plan_screen.dart';

void main() => runApp(PlanProvider(child: MasterPlanApp()));
class MasterPlanApp extends StatelessWidget {
  @override

  Widget build(BuildContext context){
    return PlanProvider(
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        home: PlanCreatorScreenState(),
      ),
    );
  }
}