package com.ourgame.mahjong.bloodriver.message {
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
	public dynamic final class CReqEnterGame extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GAMEID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("com.ourgame.mahjong.bloodriver.message.CReqEnterGame.gameId", "gameId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var gameId:UInt64;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, this.gameId);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var gameId$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (gameId$count != 0) {
						throw new flash.errors.IOError('Bad data format: CReqEnterGame.gameId cannot be set twice.');
					}
					++gameId$count;
					this.gameId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
