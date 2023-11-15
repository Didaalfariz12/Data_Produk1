
import 'package:flutter/material.dart';

void main(){
  runApp(DataProduk());
}

class data_produk{
final String name;
final double price;

  data_produk({required this.name,required this.price});
}
class DataProduk extends StatelessWidget {
 final List<data_produk> products = List.generate(
    10,
    (index) => data_produk (
      name: 'Bando ${index + (1)}',
      price: (index + 1) * 1000),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("DATA PRODUK",
        style:TextStyle(color:Colors.black) ,
        ),
        
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount:10 ,
          itemBuilder:(BuildContext, int index) {
           return ListTile(
            title: Text(products[index].name),
            subtitle:  Text('Price: \$${products[index].price.toString()}'),
            leading: Icon(Icons.ac_unit,color: Colors.blueAccent,),
            trailing: Icon(Icons.delete,color: Colors.red,),
           );
          }
          ),
      ),
    );
    
  }
  
}
