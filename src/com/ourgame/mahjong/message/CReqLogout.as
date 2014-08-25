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
	public dynamic final class CReqLogout extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SESSIONKEY:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("com.ourgame.mahjong.message.CReqLogout.sessionKey", "sessionKey", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var sessionKey$field:String;

		public function clearSessionKey():void {
			sessionKey$field = null;
		}

		public function get hasSessionKey():Boolean {
			return sessionKey$field != null;
		}

		public function set sessionKey(value:String):void {
			sessionKey$field = value;
		}

		public function get sessionKey():String {
			return sessionKey$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasSessionKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, sessionKey$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var sessionKey$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (sessionKey$count != 0) {
						throw new flash.errors.IOError('Bad data format: CReqLogout.sessionKey cannot be set twice.');
					}
					++sessionKey$count;
					this.sessionKey = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
