import 'package:flutter/material.dart';
import '../models/data_layer.dart';

class PlanProvider extends InheritedWidget{
  final _controller = PlanController();
  final _plans = <Plan> [];
  PlanProvider({Key? key, Widget? child}) : super(key: key, child: child!);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
  static List<Plan> of(BuildContext context){
      final provider =  context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    return provider!._plans;
  }

  static PlanController of(BuildContext context){
    PlanProvider provider = context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    return provider,_controller;
  }
}

