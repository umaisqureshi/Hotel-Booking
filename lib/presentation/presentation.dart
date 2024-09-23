library presentation;

export 'package:flutter/material.dart';

//overview
export 'package:flutter/services.dart';
export 'package:hotel_booking/presentation/module/overview/bloc/overview_bloc.dart';
export 'package:hotel_booking/presentation/extension/context_extension.dart';
export 'package:equatable/equatable.dart';
export 'package:injectable/injectable.dart';
export 'package:hotel_booking/presentation/base/bloc/base_bloc.dart';

//dashboard screen
export 'package:hotel_booking/infrastucture/routing/app_router.gr.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:hotel_booking/presentation/module/dashboard/bloc/dashboard_bloc.dart';
export 'package:auto_route/auto_route.dart';
export 'package:hotel_booking/data/exception/exception.dart';
export 'package:hotel_booking/domain/base/use_case_result.dart';
export 'package:hotel_booking/domain/favorite/add/add_favorite_use_case.dart';
export 'package:hotel_booking/domain/favorite/add/favorite_request.dart';
export 'package:hotel_booking/domain/favorite/get/get_all_favorites_use_case.dart';
export 'package:hotel_booking/domain/favorite/remove/remove_favorite_use_case.dart';
export 'package:hotel_booking/domain/favorite/remove/remove_request.dart';
export 'package:hotel_booking/domain/hotels/get_hotels_use_case.dart';
export 'package:hotel_booking/presentation/base/state/listenable_state.dart';
export 'package:hotel_booking/presentation/base/state/none_equatable_state.dart';
export 'package:hotel_booking/presentation/module/dashboard/bloc/blocdata/dashboard_bloc_data.dart';

//hotels
export 'package:hotel_booking/presentation/module/hotels/components/all_hotels_component.dart';
export 'package:hotel_booking/presentation/utils/app_alerts.dart';
export 'package:hotel_booking/presentation/module/hotels/widgets/hotel_view_screen.dart';
export 'package:hotel_booking/presentation/widget/error_widget.dart';
export 'package:hotel_booking/presentation/base/widget/error_widget_componet.dart';
export 'package:hotel_booking/presentation/widget/loading_indicator.dart';
export 'package:hotel_booking/presentation/module/hotels/widgets/all_hotels_list_widget.dart';
export 'package:hotel_booking/presentation/module/hotels/widgets/hotel_count_widget.dart';
export 'package:hotel_booking/domain/hotels/hotel_entity.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:hotel_booking/presentation/module/hotels/widgets/hotel_detail_widget.dart';
export 'package:hotel_booking/presentation/widget/animated_rating_widget.dart';
export 'package:hotel_booking/presentation/widget/botton_widget.dart';
export 'package:hotel_booking/presentation/widget/cache_network_image.dart';
export 'package:hotel_booking/presentation/module/hotels/widgets/hotal_card_widget.dart';

//Favorite
export 'package:hotel_booking/presentation/module/favorite/component/all_favorites_component.dart';
export 'package:hotel_booking/presentation/module/favorite/widget/favorite_list_widget.dart';
export 'package:hotel_booking/presentation/module/favorite/widget/favorite_card_widget.dart';
export 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
export 'package:hotel_booking/presentation/module/favorite/widget/rating_count_widget.dart';

//Account

export 'package:hotel_booking/presentation/module/account/bloc/account_bloc.dart';
export 'package:hotel_booking/presentation/module/account/widget/account_view_widget.dart';
export 'package:animated_toggle_switch/animated_toggle_switch.dart';
export 'package:hotel_booking/presentation/module/account/widget/animated_toggle_widget.dart';
