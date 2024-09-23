import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:hotel_booking/presentation/module/hotels/widgets/hotal_card_widget.dart';
import 'package:hotel_booking/presentation/module/dashboard/bloc/dashboard_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MockHotelBloc extends Mock implements DashboardBloc {}

void main() {
  late Hotel hotel;
  late DashboardBloc mockHotelBloc;

  setUp(() {
    mockHotelBloc = MockHotelBloc();
    when(() => mockHotelBloc.state).thenReturn(DashboardInitial());
    when(() => mockHotelBloc.stream)
        .thenAnswer((_) => Stream.value(DashboardInitial()));

    hotel = Hotel(
      name: 'Test Hotel',
      destination: 'Test Location',
      images: [ImageEntity(large: 'https://example.com/hotel.jpg', small: "")],
      ratingInfo: RatingInfo(
          score: 4.5,
          recommendationRate: null,
          reviewsCount: 10,
          scoreDescription: 'Good'),
      analytics: null,
      bestOffer: null,
      category: null,
      hotelId: '',
    );
  });

  Widget createTestWidget(Widget child) {
    return BlocProvider<DashboardBloc>.value(
      value: mockHotelBloc,
      child: MaterialApp(
        home: Scaffold(body: child),
      ),
    );
  }

  testWidgets('renders HotelCardWidget with correct information',
      (WidgetTester tester) async {
    await tester.pumpWidget(createTestWidget(HotelCardWidget(hotel: hotel)));
    expect(find.byType(CachedNetworkImage), findsOneWidget);
    expect(find.byType(SvgPicture), findsOneWidget);
    expect(find.text('Test Hotel'), findsOneWidget);
    expect(find.text('Test Location'), findsOneWidget);
    expect(find.text('Add to Favorite'), findsOneWidget);
  });

  testWidgets('taps Add to Favorite button and triggers event',
      (WidgetTester tester) async {
    await tester.pumpWidget(createTestWidget(HotelCardWidget(hotel: hotel)));
    final addButton = find.text('Add to Favorite');
    await tester.ensureVisible(addButton);
    await tester.tap(addButton);
    await tester.pump();

    verify(() => mockHotelBloc.add(AddToFavoriteEvent(hotel: hotel))).called(1);
  });
}
