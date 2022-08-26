class Customer{
  String address;
  String name;
  Customer({this.address,this.name});

  Map<String,dynamic> toMap(){
    return {"name":name,"address":address};
  }

  Customer.fromMap(dynamic obj) {
    this.name = obj['name'];
    this.address = obj['address'];
  }

  @override
  String toString() {
    return 'Customer{name: $name, address: $address}';
  }
}