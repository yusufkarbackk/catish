part of 'Widgets.dart';

class BreedListWidget extends StatelessWidget {
  final List<Cat> breeds;

  BreedListWidget({required this.breeds});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: breeds.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text('${breeds[index].race}'),
                ),
              );
            }),
      ),
    );
  }
}
