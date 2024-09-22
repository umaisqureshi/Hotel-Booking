library presentation;

export 'package:flutter/material.dart';

//overview
export 'package:flutter/services.dart';
export 'package:hotel_booking/presentation/module/overview/bloc/overview_bloc.dart';
export 'package:hotel_booking/presentation/extension/context_extension.dart';
export 'package:equatable/equatable.dart';
export 'package:injectable/injectable.dart';
export 'package:hotel_booking/presentation/base/bloc/base_bloc.dart';

//main screen
export 'package:hotel_booking/infrastucture/routing/app_router.gr.dart';
export 'package:hotel_booking/presentation/module/favorite/bloc/favorite_bloc.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:auto_route/auto_route.dart';

//hotels
export 'package:hotel_booking/presentation/module/hotels/bloc/hotels_bloc.dart';
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
