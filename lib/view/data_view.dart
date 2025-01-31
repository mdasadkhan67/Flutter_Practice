import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/data_provider.dart';

class DataView extends StatefulWidget {
  const DataView({super.key});

  @override
  State<DataView> createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Data View'),
      ),
      body: Expanded(
        child: FutureBuilder(
          future: dataProvider.getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              final data = snapshot.data;
              return ListView.builder(
                itemCount: data?.length ?? 0,
                itemBuilder: (context, index) {
                  final dataItem = data?[index];
                  return ListTile(
                    title: Text(dataItem?.name ?? ''),
                    subtitle: Text(dataItem?.email ?? ''),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
