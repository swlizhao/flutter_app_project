import 'package:flutter/material.dart';
import '../pages/models/tableUserModel_page.dart';

class CategoryControllerPage extends StatefulWidget {
  CategoryControllerPage({Key key}) : super(key: key);
  @override
  _CategoryControllerPageState createState() => _CategoryControllerPageState();
}

class _CategoryControllerPageState extends State<CategoryControllerPage> {
  List <TableUserModel> _data = [];
 @override
  void initState() {
    List.generate(100, (index) {
      this._data.add(TableUserModel('叶潇$index', index % 50, index % 2 == 0 ? '男' : '女'));
    });
    super.initState();
  }
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("分类"),
      ),
      body: PaginatedDataTable(
          header: Text("用户注册表"),
          columns: <DataColumn>[
            DataColumn(label: Text('姓名')),
            DataColumn(label: Text('性别')),
            DataColumn(label: Text('年龄')),
            DataColumn(label: Text('籍贯')),
            DataColumn(label: Text('毕业院校')),
            DataColumn(label: Text('学历')),
          ],
          source: CustomDataTableSource(this._data)),
    );
  }
}

class CustomDataTableSource extends DataTableSource {
  final List<TableUserModel> data;
  CustomDataTableSource(this.data);

  @override
  DataRow getRow(int index) {
    //处理越界操作
    if (index >= this.data.length) {
      return null;
    }
    return DataRow.byIndex(index: index, cells: <DataCell>[
      DataCell(Text('${data[index].name}')),
      DataCell(Text('${data[index].sex}')),
      DataCell(Text('${data[index].age}')),
      DataCell(Text('山西运城')),
      DataCell(Text('南昌大学')),
      DataCell(Text('本科')),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
