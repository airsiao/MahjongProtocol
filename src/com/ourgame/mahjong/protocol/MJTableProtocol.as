package com.ourgame.mahjong.protocol
{
	
	/**
	 * 麻将桌子消息协议
	 * @author SiaoLeon
	 */
	public class MJTableProtocol
	{
		/**
		 * 桌子基础值
		 */
		private static const OGID_TABLE_MESSAGE:int = 200;
		
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
		 * 邀请进入游戏
		 */
		public static const OGID_GAME_INVITE:int = OGID_TABLE_MESSAGE + 49;
	
	}
}
