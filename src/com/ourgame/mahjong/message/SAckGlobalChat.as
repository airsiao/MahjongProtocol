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
	public dynamic final class SAckGlobalChat extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RESULT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.SAckGlobalChat.result", "result", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var result$field:uint;

		private var hasField$0:uint = 0;

		public function clearResult():void {
			hasField$0 &= 0xfffffffe;
			result$field = new uint();
		}

		public function get hasResult():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set result(value:uint):void {
			hasField$0 |= 0x1;
			result$field = value;
		}

		public function get result():uint {
			return result$field;
		}

		/**
		 *  @private
		 */
		public static const FAILREASON:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("com.ourgame.mahjong.message.SAckGlobalChat.failReason", "failReason", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var failReason$field:String;

		public function clearFailReason():void {
			failReason$field = null;
		}

		public function get hasFailReason():Boolean {
			return failReason$field != null;
		}

		public function set failReason(value:String):void {
			failReason$field = value;
		}

		public function get failReason():String {
			return failReason$field;
		}

		/**
		 *  @private
		 */
		public static const PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.SAckGlobalChat.price", "price", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var price$field:uint;

		public function clearPrice():void {
			hasField$0 &= 0xfffffffd;
			price$field = new uint();
		}

		public function get hasPrice():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set price(value:uint):void {
			hasField$0 |= 0x2;
			price$field = value;
		}

		public function get price():uint {
			return price$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasResult) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, result$field);
			}
			if (hasFailReason) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, failReason$field);
			}
			if (hasPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, price$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var result$count:uint = 0;
			var failReason$count:uint = 0;
			var price$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (result$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckGlobalChat.result cannot be set twice.');
					}
					++result$count;
					this.result = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (failReason$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckGlobalChat.failReason cannot be set twice.');
					}
					++failReason$count;
					this.failReason = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (price$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckGlobalChat.price cannot be set twice.');
					}
					++price$count;
					this.price = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
