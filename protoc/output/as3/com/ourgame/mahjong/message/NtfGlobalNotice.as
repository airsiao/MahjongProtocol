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
	public dynamic final class NtfGlobalNotice extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MSGTYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.NtfGlobalNotice.msgType", "msgType", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var msgType:uint;

		/**
		 *  @private
		 */
		public static const CONTENT:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("com.ourgame.mahjong.message.NtfGlobalNotice.content", "content", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var content:String;

		/**
		 *  @private
		 */
		public static const SENDER:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("com.ourgame.mahjong.message.NtfGlobalNotice.sender", "sender", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var sender:UInt64;

		/**
		 *  @private
		 */
		public static const RECEIVER:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("com.ourgame.mahjong.message.NtfGlobalNotice.receiver", "receiver", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var receiver$field:UInt64;

		public function clearReceiver():void {
			receiver$field = null;
		}

		public function get hasReceiver():Boolean {
			return receiver$field != null;
		}

		public function set receiver(value:UInt64):void {
			receiver$field = value;
		}

		public function get receiver():UInt64 {
			return receiver$field;
		}

		/**
		 *  @private
		 */
		public static const SENDERNAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("com.ourgame.mahjong.message.NtfGlobalNotice.senderName", "senderName", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var senderName$field:String;

		public function clearSenderName():void {
			senderName$field = null;
		}

		public function get hasSenderName():Boolean {
			return senderName$field != null;
		}

		public function set senderName(value:String):void {
			senderName$field = value;
		}

		public function get senderName():String {
			return senderName$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.msgType);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.content);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.sender);
			if (hasReceiver) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, receiver$field);
			}
			if (hasSenderName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, senderName$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var msgType$count:uint = 0;
			var content$count:uint = 0;
			var sender$count:uint = 0;
			var receiver$count:uint = 0;
			var senderName$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (msgType$count != 0) {
						throw new flash.errors.IOError('Bad data format: NtfGlobalNotice.msgType cannot be set twice.');
					}
					++msgType$count;
					this.msgType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (content$count != 0) {
						throw new flash.errors.IOError('Bad data format: NtfGlobalNotice.content cannot be set twice.');
					}
					++content$count;
					this.content = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (sender$count != 0) {
						throw new flash.errors.IOError('Bad data format: NtfGlobalNotice.sender cannot be set twice.');
					}
					++sender$count;
					this.sender = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 4:
					if (receiver$count != 0) {
						throw new flash.errors.IOError('Bad data format: NtfGlobalNotice.receiver cannot be set twice.');
					}
					++receiver$count;
					this.receiver = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 5:
					if (senderName$count != 0) {
						throw new flash.errors.IOError('Bad data format: NtfGlobalNotice.senderName cannot be set twice.');
					}
					++senderName$count;
					this.senderName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
