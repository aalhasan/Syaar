import 'package:Syaar/entities/Trip.dart';
import 'package:Syaar/entities/enums/TripStatus.dart';
import 'package:Syaar/entities/utils/Labels.dart';
import 'package:Syaar/entities/utils/MockupUtilities.dart';
import 'package:flutter/material.dart';

class SyaarPage extends StatelessWidget {
  final List<Trip> trips;

  SyaarPage({Key key, this.trips}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: buildAppBar(),
          body: buildBody(),
          floatingActionButton: buildFloatingActionButton(),
        ));
  }


  // Building the app bar
  Widget buildAppBar() {
    return AppBar(
          title: Text(Labels.appScreenHeader),
          bottom: TabBar(
            labelColor: Colors.white70,
            isScrollable: true,
            tabs: [
              _tab(Labels.currentMashaweer),
              _tab(Labels.oldMashaweer),
            ],
          ),
        );
  }


  /// Building the body part of the tap
  Widget buildBody(){

    return TabBarView(
        children: [
        _tabViewer(Labels.currentMashaweer, trips: this.trips, status : TripStatus.New),
        _tabViewer(Labels.oldMashaweer, trips: this.trips, status:  TripStatus.Cancelled)
    ]
    );

  }

  //Title for the tab
  Tab _tab(String s) {
    return Tab(child: Text(s),);
  }

//builder
  Widget _tabViewer(String s, {List<Trip> trips, TripStatus status}) {
    var  t = MockupUtilities.filterTrips(trips, status);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
      Padding(child: Text(Labels.currentMashaweer),
          padding: EdgeInsets.only(top: 16.0)),
        Expanded(child: ListView.builder(
        physics: BouncingScrollPhysics(),
            itemCount: trips.length,
            itemBuilder: (BuildContext context, int index){
              final trip  = trips[index];
              return Card(
                key: ValueKey(trip.uuid),
                  margin: EdgeInsets.symmetric(vertical: 10.0,
                      horizontal: 25.0),
                child: Padding(
                  child: Column(
                    children: <Widget>[
                      _itemHeader(trip),
                      Text (trip.customer.toString()),
                      _itemFooter(trip)
                    ]
                  ),
                  padding: EdgeInsets.all(8.0),
                )
              );
            },

        )
        )

      ],

    );
  }


  //builder
  Widget buildFloatingActionButton() {
    return FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text(Labels.getMishware)
    );
  }

  /**
   * Creates the Footer
   */
 Widget _itemHeader(Trip trip) {

    return Row(
      children:<Widget> [
        CircleAvatar(
            backgroundImage: NetworkImage(
              'https://www.iconsdb.com/icons/preview/black/car-xxl.png',
            ),
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(trip.toString()),
            )
        )
      ],
    );
 }

  /**
   * Creates the header
   */
  Widget _itemFooter(Trip trip) {
      return Container(
        margin: EdgeInsets.only(top: 8.0),
        alignment: Alignment.centerRight,
        child: Chip(label: Text(trip.tripStatus.toString()),)
      );

  }

}
