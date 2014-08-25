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
	public dynamic final class SAckUserData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.SAckUserData.money", "money", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var money:uint;

		/**
		 *  @private
		 */
		public static const EXPERIENCE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.SAckUserData.experience", "experience", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var experience$field:uint;

		private var hasField$0:uint = 0;

		public function clearExperience():void {
			hasField$0 &= 0xfffffffe;
			experience$field = new uint();
		}

		public function get hasExperience():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set experience(value:uint):void {
			hasField$0 |= 0x1;
			experience$field = value;
		}

		public function get experience():uint {
			return experience$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.SAckUserData.level", "level", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:uint;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffd;
			level$field = new uint();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set level(value:uint):void {
			hasField$0 |= 0x2;
			level$field = value;
		}

		public function get level():uint {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const MASTERSCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.SAckUserData.masterScore", "masterScore", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var masterScore$field:uint;

		public function clearMasterScore():void {
			hasField$0 &= 0xfffffffb;
			masterScore$field = new uint();
		}

		public function get hasMasterScore():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set masterScore(value:uint):void {
			hasField$0 |= 0x4;
			masterScore$field = value;
		}

		public function get masterScore():uint {
			return masterScore$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.money);
			if (hasExperience) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, experience$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, level$field);
			}
			if (hasMasterScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, masterScore$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var money$count:uint = 0;
			var experience$count:uint = 0;
			var level$count:uint = 0;
			var masterScore$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (money$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckUserData.money cannot be set twice.');
					}
					++money$count;
					this.money = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (experience$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckUserData.experience cannot be set twice.');
					}
					++experience$count;
					this.experience = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckUserData.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (masterScore$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckUserData.masterScore cannot be set twice.');
					}
					++masterScore$count;
					this.masterScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
