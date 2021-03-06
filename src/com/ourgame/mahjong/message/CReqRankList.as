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
	public dynamic final class CReqRankList extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.CReqRankList.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var type$field:uint;

		private var hasField$0:uint = 0;

		public function clearType():void {
			hasField$0 &= 0xfffffffe;
			type$field = new uint();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set type(value:uint):void {
			hasField$0 |= 0x1;
			type$field = value;
		}

		public function get type():uint {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const PAGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.CReqRankList.page", "page", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var page$field:uint;

		public function clearPage():void {
			hasField$0 &= 0xfffffffd;
			page$field = new uint();
		}

		public function get hasPage():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set page(value:uint):void {
			hasField$0 |= 0x2;
			page$field = value;
		}

		public function get page():uint {
			return page$field;
		}

		/**
		 *  @private
		 */
		public static const SIZE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.CReqRankList.size", "size", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var size$field:uint;

		public function clearSize():void {
			hasField$0 &= 0xfffffffb;
			size$field = new uint();
		}

		public function get hasSize():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set size(value:uint):void {
			hasField$0 |= 0x4;
			size$field = value;
		}

		public function get size():uint {
			return size$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, type$field);
			}
			if (hasPage) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, page$field);
			}
			if (hasSize) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, size$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var page$count:uint = 0;
			var size$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: CReqRankList.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (page$count != 0) {
						throw new flash.errors.IOError('Bad data format: CReqRankList.page cannot be set twice.');
					}
					++page$count;
					this.page = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (size$count != 0) {
						throw new flash.errors.IOError('Bad data format: CReqRankList.size cannot be set twice.');
					}
					++size$count;
					this.size = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
