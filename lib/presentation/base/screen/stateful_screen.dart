import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/base_bloc.dart';
import '../state/listenable_state.dart';
import 'screen_mixin.dart';

abstract class StatefulScreen<B extends BaseBloc> extends StatefulWidget {
  const StatefulScreen({Key? key}) : super(key: key);
}

abstract class ScreenState<B extends BaseBloc> extends State<StatefulScreen<B>>
    with ScreenMixin {
  late B bloc;
  @override
  void initState() {
    super.initState();
    bloc = context.read<B>();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => BlocListener(
        bloc: context.read<B>(),
        listenWhen: listenCondition,
        listener: (context, state) {
          handleState(context, state);
        },
        child: buildScreen(context),
      ),
    );
  }

  Widget buildScreen(BuildContext context);
  bool listenCondition(Object? previous, Object? current) {
    return current is ListenableState;
  }

  void onListenableState(BuildContext context, Object? state) async {}

  void handleState(BuildContext context, Object? state) {
    onListenableState(context, state);
  }
}

abstract class AliveScreenState<B extends BaseBloc>
    extends State<StatefulScreen<B>>
    with ScreenMixin, AutomaticKeepAliveClientMixin {
  late B bloc;
  @override
  void initState() {
    super.initState();
    bloc = context.read<B>();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Builder(
      builder: (context) => BlocListener(
        bloc: context.read<B>(),
        listenWhen: listenCondition,
        listener: (context, state) {
          handleState(context, state);
        },
        child: buildScreen(context),
      ),
    );
  }

  Widget buildScreen(BuildContext context);
  bool listenCondition(Object? previous, Object? current) {
    return current is ListenableState;
  }

  void onListenableState(BuildContext context, Object? state) async {}

  void handleState(BuildContext context, Object? state) {
    onListenableState(context, state);
  }
}
