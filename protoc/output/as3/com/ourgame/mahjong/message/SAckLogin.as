package com.ourgame.mahjong.message {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import com.ourgame.mahjong.message.GameInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class SAckLogin extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RESULT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.SAckLogin.result", "result", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var result:uint;

		/**
		 *  @private
		 */
		public static const FAILREASON:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("com.ourgame.mahjong.message.SAckLogin.failReason", "failReason", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const OURGAMEID:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("com.ourgame.mahjong.message.SAckLogin.ourgameId", "ourgameId", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var ourgameId$field:String;

		public function clearOurgameId():void {
			ourgameId$field = null;
		}

		public function get hasOurgameId():Boolean {
			return ourgameId$field != null;
		}

		public function set ourgameId(value:String):void {
			ourgameId$field = value;
		}

		public function get ourgameId():String {
			return ourgameId$field;
		}

		/**
		 *  @private
		 */
		public static const SESSIONKEY:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("com.ourgame.mahjong.message.SAckLogin.sessionKey", "sessionKey", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const USERID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("com.ourgame.mahjong.message.SAckLogin.userId", "userId", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var userId$field:UInt64;

		public function clearUserId():void {
			userId$field = null;
		}

		public function get hasUserId():Boolean {
			return userId$field != null;
		}

		public function set userId(value:UInt64):void {
			userId$field = value;
		}

		public function get userId():UInt64 {
			return userId$field;
		}

		/**
		 *  @private
		 */
		public static const MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.SAckLogin.money", "money", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money$field:uint;

		private var hasField$0:uint = 0;

		public function clearMoney():void {
			hasField$0 &= 0xfffffffe;
			money$field = new uint();
		}

		public function get hasMoney():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set money(value:uint):void {
			hasField$0 |= 0x1;
			money$field = value;
		}

		public function get money():uint {
			return money$field;
		}

		/**
		 *  @private
		 */
		public static const EXPERIENCE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.SAckLogin.experience", "experience", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var experience$field:uint;

		public function clearExperience():void {
			hasField$0 &= 0xfffffffd;
			experience$field = new uint();
		}

		public function get hasExperience():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set experience(value:uint):void {
			hasField$0 |= 0x2;
			experience$field = value;
		}

		public function get experience():uint {
			return experience$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.SAckLogin.level", "level", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:uint;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffb;
			level$field = new uint();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set level(value:uint):void {
			hasField$0 |= 0x4;
			level$field = value;
		}

		public function get level():uint {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const MASTERSCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.SAckLogin.masterScore", "masterScore", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var masterScore$field:uint;

		public function clearMasterScore():void {
			hasField$0 &= 0xfffffff7;
			masterScore$field = new uint();
		}

		public function get hasMasterScore():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set masterScore(value:uint):void {
			hasField$0 |= 0x8;
			masterScore$field = value;
		}

		public function get masterScore():uint {
			return masterScore$field;
		}

		/**
		 *  @private
		 */
		public static const GAMES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("com.ourgame.mahjong.message.SAckLogin.games", "games", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.ourgame.mahjong.message.GameInfo; });

		[ArrayElementType("com.ourgame.mahjong.message.GameInfo")]
		public var games:Array = [];

		/**
		 *  @private
		 */
		public static const ROLEID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.ourgame.mahjong.message.SAckLogin.roleId", "roleId", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var roleId$field:uint;

		public function clearRoleId():void {
			hasField$0 &= 0xffffffef;
			roleId$field = new uint();
		}

		public function get hasRoleId():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set roleId(value:uint):void {
			hasField$0 |= 0x10;
			roleId$field = value;
		}

		public function get roleId():uint {
			return roleId$field;
		}

		/**
		 *  @private
		 */
		public static const NEWBIE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("com.ourgame.mahjong.message.SAckLogin.newbie", "newbie", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var newbie$field:Boolean;

		public function clearNewbie():void {
			hasField$0 &= 0xffffffdf;
			newbie$field = new Boolean();
		}

		public function get hasNewbie():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set newbie(value:Boolean):void {
			hasField$0 |= 0x20;
			newbie$field = value;
		}

		public function get newbie():Boolean {
			return newbie$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.result);
			if (hasFailReason) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, failReason$field);
			}
			if (hasOurgameId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, ourgameId$field);
			}
			if (hasSessionKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, sessionKey$field);
			}
			if (hasUserId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, userId$field);
			}
			if (hasMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, money$field);
			}
			if (hasExperience) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, experience$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, level$field);
			}
			if (hasMasterScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, masterScore$field);
			}
			for (var games$index:uint = 0; games$index < this.games.length; ++games$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.games[games$index]);
			}
			if (hasRoleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, roleId$field);
			}
			if (hasNewbie) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, newbie$field);
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
			var ourgameId$count:uint = 0;
			var sessionKey$count:uint = 0;
			var userId$count:uint = 0;
			var money$count:uint = 0;
			var experience$count:uint = 0;
			var level$count:uint = 0;
			var masterScore$count:uint = 0;
			var roleId$count:uint = 0;
			var newbie$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (result$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckLogin.result cannot be set twice.');
					}
					++result$count;
					this.result = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (failReason$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckLogin.failReason cannot be set twice.');
					}
					++failReason$count;
					this.failReason = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (ourgameId$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckLogin.ourgameId cannot be set twice.');
					}
					++ourgameId$count;
					this.ourgameId = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (sessionKey$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckLogin.sessionKey cannot be set twice.');
					}
					++sessionKey$count;
					this.sessionKey = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (userId$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckLogin.userId cannot be set twice.');
					}
					++userId$count;
					this.userId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 6:
					if (money$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckLogin.money cannot be set twice.');
					}
					++money$count;
					this.money = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (experience$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckLogin.experience cannot be set twice.');
					}
					++experience$count;
					this.experience = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckLogin.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (masterScore$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckLogin.masterScore cannot be set twice.');
					}
					++masterScore$count;
					this.masterScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					this.games.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new com.ourgame.mahjong.message.GameInfo()));
					break;
				case 11:
					if (roleId$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckLogin.roleId cannot be set twice.');
					}
					++roleId$count;
					this.roleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (newbie$count != 0) {
						throw new flash.errors.IOError('Bad data format: SAckLogin.newbie cannot be set twice.');
					}
					++newbie$count;
					this.newbie = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
