import 'dart:convert';

OfferModel offerModelFromJson(String str) => OfferModel.fromJson(json.decode(str));
String offerModelToJson(OfferModel data) => json.encode(data.toJson());

class OfferModel {
    OfferModel({
        this.id,
        this.name,
        this.price,
        this.description,
        this.userId,
        this.userName,
        this.status,
        this.addDate,
    });

    int id;
    String name;
    double price;
    String description;
    String userId;
    String userName;
    int status;
    DateTime addDate;

    factory OfferModel.fromJson(Map<String, dynamic> json) => OfferModel(
        id: json["Id"],
        name: json["Name"],
        price: json["Price"],
        description: json["Description"],
        userId: json["UserId"],
        userName: json["UserName"],
        status: json["Status"],
        addDate: DateTime.parse(json["AddDate"]),
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "Name": name,
        "Price": price,
        "Description": description,
        "UserId": userId,
        "UserName": userName,
        "Status": status,
        "AddDate": addDate.toIso8601String(),
    };
}
