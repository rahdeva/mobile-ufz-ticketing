// To parse this JSON data, do
//
//     final eventDiscovery = eventDiscoveryFromJson(jsonString);

import 'dart:convert';

EventDiscovery eventDiscoveryFromJson(String str) => EventDiscovery.fromJson(json.decode(str));

String eventDiscoveryToJson(EventDiscovery data) => json.encode(data.toJson());

class EventDiscovery {
    Data? data;
    dynamic error;

    EventDiscovery({
        this.data,
        this.error,
    });

    factory EventDiscovery.fromJson(Map<String, dynamic> json) => EventDiscovery(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        error: json["error"],
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "error": error,
    };
}

class Data {
    List<Event>? event;
    Meta? meta;

    Data({
        this.event,
        this.meta,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        event: json["event"] == null ? [] : List<Event>.from(json["event"]!.map((x) => Event.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "event": event == null ? [] : List<dynamic>.from(event!.map((x) => x.toJson())),
        "meta": meta?.toJson(),
    };
}

class Event {
    int? id;
    String? name;
    int? type;
    int? person;
    DateTime? eventDate;
    String? image;

    Event({
        this.id,
        this.name,
        this.type,
        this.person,
        this.eventDate,
        this.image,
    });

    factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        person: json["person"],
        eventDate: json["event_date"] == null ? null : DateTime.parse(json["event_date"]),
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "person": person,
        "event_date": eventDate?.toIso8601String(),
        "image": image,
    };
}

class Meta {
    int? limit;
    int? page;
    int? totalPage;

    Meta({
        this.limit,
        this.page,
        this.totalPage,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        limit: json["limit"],
        page: json["page"],
        totalPage: json["total_page"],
    );

    Map<String, dynamic> toJson() => {
        "limit": limit,
        "page": page,
        "total_page": totalPage,
    };
}
