package com.ourgame.mahjong.message {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Room extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ROOMID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.Room.roomId", "roomId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roomId:uint;

		/**
		 *  @private
		 */
		public static const ROOMNAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("com.ourgame.mahjong.message.Room.roomName", "roomName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var roomName:String;

		/**
		 *  @private
		 */
		public static const ROOMTYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.Room.roomType", "roomType", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roomType:uint;

		/**
		 *  @private
		 */
		public static const GAMETYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.Room.gameType", "gameType", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var gameType:uint;

		/**
		 *  @private
		 */
		public static const USERAMOUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.Room.userAmount", "userAmount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var userAmount$field:uint;

		private var hasField$0:uint = 0;

		public function clearUserAmount():void {
			hasField$0 &= 0xfffffffe;
			userAmount$field = new uint();
		}

		public function get hasUserAmount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set userAmount(value:uint):void {
			hasField$0 |= 0x1;
			userAmount$field = value;
		}

		public function get userAmount():uint {
			return userAmount$field;
		}

		/**
		 *  @private
		 */
		public static const ENTERBUYIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.Room.enterBuyIn", "enterBuyIn", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var enterBuyIn$field:uint;

		public function clearEnterBuyIn():void {
			hasField$0 &= 0xfffffffd;
			enterBuyIn$field = new uint();
		}

		public function get hasEnterBuyIn():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set enterBuyIn(value:uint):void {
			hasField$0 |= 0x2;
			enterBuyIn$field = value;
		}

		public function get enterBuyIn():uint {
			return enterBuyIn$field;
		}

		/**
		 *  @private
		 */
		public static const UNITVALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.Room.unitValue", "unitValue", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var unitValue$field:uint;

		public function clearUnitValue():void {
			hasField$0 &= 0xfffffffb;
			unitValue$field = new uint();
		}

		public function get hasUnitValue():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set unitValue(value:uint):void {
			hasField$0 |= 0x4;
			unitValue$field = value;
		}

		public function get unitValue():uint {
			return unitValue$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.roomId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.roomName);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.roomType);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.gameType);
			if (hasUserAmount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, userAmount$field);
			}
			if (hasEnterBuyIn) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, enterBuyIn$field);
			}
			if (hasUnitValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, unitValue$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var roomId$count:uint = 0;
			var roomName$count:uint = 0;
			var roomType$count:uint = 0;
			var gameType$count:uint = 0;
			var userAmount$count:uint = 0;
			var enterBuyIn$count:uint = 0;
			var unitValue$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (roomId$count != 0) {
						throw new flash.errors.IOError('Bad data format: Room.roomId cannot be set twice.');
					}
					++roomId$count;
					this.roomId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (roomName$count != 0) {
						throw new flash.errors.IOError('Bad data format: Room.roomName cannot be set twice.');
					}
					++roomName$count;
					this.roomName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (roomType$count != 0) {
						throw new flash.errors.IOError('Bad data format: Room.roomType cannot be set twice.');
					}
					++roomType$count;
					this.roomType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (gameType$count != 0) {
						throw new flash.errors.IOError('Bad data format: Room.gameType cannot be set twice.');
					}
					++gameType$count;
					this.gameType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (userAmount$count != 0) {
						throw new flash.errors.IOError('Bad data format: Room.userAmount cannot be set twice.');
					}
					++userAmount$count;
					this.userAmount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (enterBuyIn$count != 0) {
						throw new flash.errors.IOError('Bad data format: Room.enterBuyIn cannot be set twice.');
					}
					++enterBuyIn$count;
					this.enterBuyIn = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (unitValue$count != 0) {
						throw new flash.errors.IOError('Bad data format: Room.unitValue cannot be set twice.');
					}
					++unitValue$count;
					this.unitValue = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
