@echo off
md output\as3
md output\java
call compiler\bin.bat MJCommonMessage
call compiler\bin.bat MJLobbyMessage
call compiler\bin.bat MJRoomMessage
call compiler\bin.bat MJTableMessage
call compiler\bin.bat OGChatProtocol
call compiler\bin.bat OGPositionCommon
PAUSE