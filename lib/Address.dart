import 'package:authentication/seeaddress.dart';
import 'package:flutter/material.dart';


import 'global.dart' as global;


class Address extends StatefulWidget {
 final String hno,hname,loc,city,pin;
  Address({this.city,this.hname,this.hno,this.loc,this.pin});

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
var hnocontroller = new TextEditingController(text:"");
var hnamecontroller = new TextEditingController(text:"");
var loccontroller = new TextEditingController(text:"");
var pincontroller = new TextEditingController(text:"");
var citycontroller = new TextEditingController(text:"");


  @override
  Widget build(BuildContext context) {
    
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Address',
          home: Scaffold(
            appBar: AppBar(
              leading: IconButton(icon: Icon(Icons.arrow_back),onPressed:(){Navigator.pop(context);}),
              
              centerTitle: true,
            backgroundColor: Colors.blueAccent,
              title: const Text('Add Address'),
            ),
            body: Column(
             
              children: [
               



                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: hnocontroller,
                      onSaved:(value){setState(() {
                        global.housenumber=value;
                      });} ,
                      onChanged:(value){setState(() {
                        global.housenumber=value;
                      });} ,
               decoration: InputDecoration(
               border : UnderlineInputBorder(),
               hintText: 'House number'
               ),
               ),
                  ),




                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: hnamecontroller,
                      onChanged:(value){setState(() {
                        global.housename=value;
                      });} ,
               decoration: InputDecoration(
               border : UnderlineInputBorder(),
               hintText: 'Road '
               ),
               ),
                  ),



                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: loccontroller,
                      onChanged:(value){setState(() {
                        global.locality=value;
                      });} ,
               decoration: InputDecoration(
               border : UnderlineInputBorder(),
               hintText: 'Locality'
               ),
               ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: citycontroller,
                      onChanged:(value){setState(() {
                        global.city=value;
                      });} ,
               decoration: InputDecoration(
               border : UnderlineInputBorder(),
               hintText: 'City'
               ),
               ),
                  ),

                  Padding(
                    
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: pincontroller,
                      onChanged:(value){setState(() {
                        global.pincode=value;
                      });} ,
               decoration: InputDecoration(
               border : UnderlineInputBorder(),
               hintText: 'Pincode'
               ),
               ),
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => seeaddress(value:Address(hno:hnocontroller.text.toString(),hname:hnamecontroller.text.toString(),
              loc:loccontroller.text.toString(),city:citycontroller.text.toString(),pin: pincontroller.text.toString(),) ),
              ),
            );
                  }, child: Text("Add"))

                 
                ],
            )
            
              
        
      ),
    );
  }
}

