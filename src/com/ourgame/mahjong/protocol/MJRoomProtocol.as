package com.ourgame.mahjong.protocol
{
	
	/**
	 * 麻将房间消息协议
	 * @author SiaoLeon
	 */
	public class MJRoomProtocol
	{
		/**
		 * 房间基础值
		 */
		private static const OGID_ROOM_MESSAGE:int = 200;
		
		/**
		 * 客户端
		 */
		public static const CLIENT:int = 0;
		
		/**
		 * 服务器
		 */
		public static const SERVER:int = 1;
		
		// --------------------------------------------------------------------------------------------------------
		
		/**
		 * 房间列表
		 */
		public static const OGID_ROOM_LIST:int = OGID_ROOM_MESSAGE + 1;
		
		/**
		 * 进入房间
		 */
		public static const OGID_ROOM_ENTER:int = OGID_ROOM_MESSAGE + 11;
		
		/**
		 * 离开房间
		 */
		public static const OGID_ROOM_LEAVE:int = OGID_ROOM_MESSAGE + 13;
		
		/**
		 * 桌子列表
		 */
		public static const OGID_TABLE_LIST:int = OGID_ROOM_MESSAGE + 15;
		
		/**
		 * 进入桌子
		 */
		public static const OGID_TABLE_ENTER:int = OGID_ROOM_MESSAGE + 17;
		
		/**
		 * 离开桌子
		 */
		public static const OGID_TABLE_LEAVE:int = OGID_ROOM_MESSAGE + 19;
		
		/**
		 * 准备
		 */
		public static const OGID_STAND_BY:int = OGID_ROOM_MESSAGE + 25;
		
		/**
		 * 桌子人数变更
		 */
		public static const OGID_TABLE_PLAYER_COUNT:int = OGID_ROOM_MESSAGE + 41;
		
		/**
		 * 有桌子解散
		 */
		public static const OGID_TABLE_DISMISS:int = OGID_ROOM_MESSAGE + 43;
		
		/**
		 * 有桌子创建
		 */
		public static const OGID_TABLE_CREATE:int = OGID_ROOM_MESSAGE + 45;
		
		/**
		 * 快速开始
		 */
		public static const OGID_QUICK_START:int = OGID_ROOM_MESSAGE + 51;
		
		/**
		 * 更新房间用户数
		 */
		public static const OGID_PLAYER_COUNT:int = OGID_ROOM_MESSAGE + 69;
		
		/**
		 * 获取桌子信息
		 */
		public static const OGID_TABLE_INFO:int = OGID_ROOM_MESSAGE + 77;
		
		/**
		 * 邀请进入桌子
		 */
		public static const OGID_TABLE_INVITE:int = OGID_ROOM_MESSAGE + 79;
	
	}
}
