//!DataTable

import 'package:flutter/material.dart';

class Widget076 extends StatelessWidget {
  const Widget076({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle titles = const TextStyle(
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
    );
    return DataTable(
      columns: <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: titles,
          ),
        ),
        DataColumn(
          label: Text(
            'Age',
            style: titles,
          ),
        ),
        DataColumn(
          label: Text(
            'Color',
            style: titles,
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Max')),
            DataCell(Text('21')),
            DataCell(Text('Red')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Jane')),
            DataCell(Text('25')),
            DataCell(Text('Blue')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('William')),
            DataCell(Text('27')),
            DataCell(Text('Yellow')),
          ],
        ),
      ],
    );
  }
}
