part of 'Widgets.dart';

class PickupLocationWidget extends StatelessWidget {
  const PickupLocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pickup Location', style: kMainText.copyWith(fontSize: 22)),
          SizedBox(
            height: 14,
          ),
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.locationArrow,
                size: 20,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text('Jalan lurus saja no.4, Tangerang Selatan',
                        style: kSeccondText.copyWith(fontSize: 16))
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
