import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:hotel_booking/presentation/base/bloc/base_bloc.dart';
import  'package:hotel_booking/presentation/presentation.dart';

part 'overview_event.dart';
part 'overview_state.dart';

@injectable
class OverviewBloc extends BaseBloc<OverviewEvent, OverviewState> {
  OverviewBloc() : super(OverviewInitial());
}
