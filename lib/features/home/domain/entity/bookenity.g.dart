// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookenity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class bookentityAdapter extends TypeAdapter<bookentity> {
  @override
  final int typeId = 1;

  @override
  bookentity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return bookentity(
      rate: fields[0] as num,
      img: fields[1] as String,
      titel: fields[2] as String,
      price: fields[3] as num,
      authoname: fields[4] as String,
      bookid: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, bookentity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.rate)
      ..writeByte(1)
      ..write(obj.img)
      ..writeByte(2)
      ..write(obj.titel)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.authoname)
      ..writeByte(5)
      ..write(obj.bookid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is bookentityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
