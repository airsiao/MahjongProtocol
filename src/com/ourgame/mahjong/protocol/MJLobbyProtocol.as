package com.ourgame.mahjong.protocol
{
	
	/**
	 * 麻将大厅消息协议
	 * @author SiaoLeon
	 */
	public class MJLobbyProtocol
	{
		/**
		 * 用户基础值
		 */
		private static const OGID_USER_MESSAGE:int = 100;
		
		/**
		 * 客户端
		 */
		public static const CLIENT:int = 0;
		
		/**
		 * 服务器
		 */
		public static const SERVER:int = 1;
		
		/**
		 * 心跳
		 */
		public static const OGID_HEARTBEAT:int = 1;
		
		// --------------------------------------------------------------------------------------------------------
		
		/**
		 * 用户登录
		 */
		public static const OGID_USER_LOGIN:int = OGID_USER_MESSAGE + 1;
		
		/**
		 * 用户登出
		 */
		public static const OGID_USER_LOGOUT:int = OGID_USER_MESSAGE + 5;
		
		/**
		 * 获取排行榜
		 */
		public static const OGID_RANK_DATA:int = OGID_USER_MESSAGE + 7;
		
		/**
		 * 更新用户信息
		 */
		public static const OGID_USER_DATA:int = OGID_USER_MESSAGE + 13;
		
		/**
		 * 全局广播消息
		 */
		public static const OGID_GLOBAL_NOTICE:int = OGID_USER_MESSAGE + 15;
		
		/**
		 * 全局聊天
		 */
		public static const OGID_GLOBAL_CHAT:int = OGID_USER_MESSAGE + 17;
		
		/**
		 * 获取全局在线人数
		 */
		public static const OGID_USER_COUNT:int = OGID_USER_MESSAGE + 19;
	
	}
}
