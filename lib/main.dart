import 'package:flutter/material.dart';

class myButton extends StatelessWidget{
  const myButton({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
          left: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
          right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
          bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
        ),
      ),
      child: Container,
    )
  }
}
class FistApp extends StatelessWidget
{

  const FistApp({required this.title, Key? key}): super(key:key);
  final Widget title;
  @override
  Widget build(BuildContext context){
    return Container(
    height: 50.0,
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    decoration: BoxDecoration(color: Colors.blue[500]),
    child: Row(
  children: [
    const IconButton(
    icon: Icon(Icons.menu),
    tooltip: 'Navigation to Menu',
    onPressed: null,
),
Expanded(
child: title,
),
const IconButton(
icon: Icon(Icons.search),
tooltip: 'Search',
onPressed: null,
),
],
),
    );
}
}

class Details extends StatelessWidget{
  const Details({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context)
{
  return Material(
  child: Column(
  children: [
    FistApp(
    title: Text(
    'Example title',
  style: Theme.of(context)
      .primaryTextTheme
      .headline6,
    ),
    ),
const Expanded(
child: Center(
child: Text('Hello World!'),
),
),
],
  ),
  );
}
}

void main()
{
  runApp(
    const MaterialApp(
      title: 'My app',
      home: SafeArea(
        child: Details(),
      ),
    ),

  );
}