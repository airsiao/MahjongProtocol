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
	public dynamic final class NtfInviteGame extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GAMEID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("com.ourgame.mahjong.message.NtfInviteGame.gameId", "gameId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var gameId:UInt64;

		/**
		 *  @private
		 */
		public static const SERVERID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("com.ourgame.mahjong.message.NtfInviteGame.serverId", "serverId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var serverId:UInt64;

		/**
		 *  @private
		 */
		public static const GAMETYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.NtfInviteGame.gameType", "gameType", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var gameType$field:uint;

		private var hasField$0:uint = 0;

		public function clearGameType():void {
			hasField$0 &= 0xfffffffe;
			gameType$field = new uint();
		}

		public function get hasGameType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set gameType(value:uint):void {
			hasField$0 |= 0x1;
			gameType$field = value;
		}

		public function get gameType():uint {
			return gameType$field;
		}

		/**
		 *  @private
		 */
		public static const ROOMID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.NtfInviteGame.roomId", "roomId", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var roomId$field:uint;

		public function clearRoomId():void {
			hasField$0 &= 0xfffffffd;
			roomId$field = new uint();
		}

		public function get hasRoomId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set roomId(value:uint):void {
			hasField$0 |= 0x2;
			roomId$field = value;
		}

		public function get roomId():uint {
			return roomId$field;
		}

		/**
		 *  @private
		 */
		public static const TABLEID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.NtfInviteGame.tableId", "tableId", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var tableId$field:uint;

		public function clearTableId():void {
			hasField$0 &= 0xfffffffb;
			tableId$field = new uint();
		}

		public function get hasTableId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set tableId(value:uint):void {
			hasField$0 |= 0x4;
			tableId$field = value;
		}

		public function get tableId():uint {
			return tableId$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.gameId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.serverId);
			if (hasGameType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, gameType$field);
			}
			if (hasRoomId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, roomId$field);
			}
			if (hasTableId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, tableId$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var gameId$count:uint = 0;
			var serverId$count:uint = 0;
			var gameType$count:uint = 0;
			var roomId$count:uint = 0;
			var tableId$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (gameId$count != 0) {
						throw new flash.errors.IOError('Bad data format: NtfInviteGame.gameId cannot be set twice.');
					}
					++gameId$count;
					this.gameId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 2:
					if (serverId$count != 0) {
						throw new flash.errors.IOError('Bad data format: NtfInviteGame.serverId cannot be set twice.');
					}
					++serverId$count;
					this.serverId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 3:
					if (gameType$count != 0) {
						throw new flash.errors.IOError('Bad data format: NtfInviteGame.gameType cannot be set twice.');
					}
					++gameType$count;
					this.gameType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (roomId$count != 0) {
						throw new flash.errors.IOError('Bad data format: NtfInviteGame.roomId cannot be set twice.');
					}
					++roomId$count;
					this.roomId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (tableId$count != 0) {
						throw new flash.errors.IOError('Bad data format: NtfInviteGame.tableId cannot be set twice.');
					}
					++tableId$count;
					this.tableId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
