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
	public dynamic final class Table extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TABLEID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.Table.tableId", "tableId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var tableId:uint;

		/**
		 *  @private
		 */
		public static const TABLENAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("com.ourgame.mahjong.message.Table.tableName", "tableName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var tableName:String;

		/**
		 *  @private
		 */
		public static const PLAYERAMOUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.Table.playerAmount", "playerAmount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var playerAmount:uint;

		/**
		 *  @private
		 */
		public static const MAXPLAYERAMOUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.Table.maxPlayerAmount", "maxPlayerAmount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var maxPlayerAmount:uint;

		/**
		 *  @private
		 */
		public static const ENTERBUYIN:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("com.ourgame.mahjong.message.Table.enterBuyin", "enterBuyin", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var enterBuyin:UInt64;

		/**
		 *  @private
		 */
		public static const ENTERSCORE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("com.ourgame.mahjong.message.Table.enterScore", "enterScore", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		public var enterScore:UInt64;

		/**
		 *  @private
		 */
		public static const UNITVALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.Table.unitValue", "unitValue", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		public var unitValue:uint;

		/**
		 *  @private
		 */
		public static const MINSCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.Table.minScore", "minScore", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		public var minScore:uint;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.tableId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.tableName);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.playerAmount);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.maxPlayerAmount);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.enterBuyin);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.enterScore);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.unitValue);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.minScore);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var tableId$count:uint = 0;
			var tableName$count:uint = 0;
			var playerAmount$count:uint = 0;
			var maxPlayerAmount$count:uint = 0;
			var enterBuyin$count:uint = 0;
			var enterScore$count:uint = 0;
			var unitValue$count:uint = 0;
			var minScore$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (tableId$count != 0) {
						throw new flash.errors.IOError('Bad data format: Table.tableId cannot be set twice.');
					}
					++tableId$count;
					this.tableId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (tableName$count != 0) {
						throw new flash.errors.IOError('Bad data format: Table.tableName cannot be set twice.');
					}
					++tableName$count;
					this.tableName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (playerAmount$count != 0) {
						throw new flash.errors.IOError('Bad data format: Table.playerAmount cannot be set twice.');
					}
					++playerAmount$count;
					this.playerAmount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (maxPlayerAmount$count != 0) {
						throw new flash.errors.IOError('Bad data format: Table.maxPlayerAmount cannot be set twice.');
					}
					++maxPlayerAmount$count;
					this.maxPlayerAmount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (enterBuyin$count != 0) {
						throw new flash.errors.IOError('Bad data format: Table.enterBuyin cannot be set twice.');
					}
					++enterBuyin$count;
					this.enterBuyin = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 6:
					if (enterScore$count != 0) {
						throw new flash.errors.IOError('Bad data format: Table.enterScore cannot be set twice.');
					}
					++enterScore$count;
					this.enterScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 7:
					if (unitValue$count != 0) {
						throw new flash.errors.IOError('Bad data format: Table.unitValue cannot be set twice.');
					}
					++unitValue$count;
					this.unitValue = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (minScore$count != 0) {
						throw new flash.errors.IOError('Bad data format: Table.minScore cannot be set twice.');
					}
					++minScore$count;
					this.minScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
