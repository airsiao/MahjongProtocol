package com.ourgame.mahjong.bloodriver.message {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import com.ourgame.mahjong.bloodriver.message.NtfGameResult.Detail;
	import com.ourgame.mahjong.bloodriver.message.NtfGameResult.Result;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class NtfGameResult extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RESULTS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("com.ourgame.mahjong.bloodriver.message.NtfGameResult.results", "results", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.ourgame.mahjong.bloodriver.message.NtfGameResult.Result; });

		[ArrayElementType("com.ourgame.mahjong.bloodriver.message.NtfGameResult.Result")]
		public var results:Array = [];

		/**
		 *  @private
		 */
		public static const MAXWAIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.bloodriver.message.NtfGameResult.maxWait", "maxWait", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var maxWait:uint;

		/**
		 *  @private
		 */
		public static const DETAILS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("com.ourgame.mahjong.bloodriver.message.NtfGameResult.details", "details", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.ourgame.mahjong.bloodriver.message.NtfGameResult.Detail; });

		[ArrayElementType("com.ourgame.mahjong.bloodriver.message.NtfGameResult.Detail")]
		public var details:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var results$index:uint = 0; results$index < this.results.length; ++results$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.results[results$index]);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.maxWait);
			for (var details$index:uint = 0; details$index < this.details.length; ++details$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.details[details$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var maxWait$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 2:
					this.results.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new com.ourgame.mahjong.bloodriver.message.NtfGameResult.Result()));
					break;
				case 3:
					if (maxWait$count != 0) {
						throw new flash.errors.IOError('Bad data format: NtfGameResult.maxWait cannot be set twice.');
					}
					++maxWait$count;
					this.maxWait = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					this.details.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new com.ourgame.mahjong.bloodriver.message.NtfGameResult.Detail()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
