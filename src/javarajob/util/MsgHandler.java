package javarajob.util;

import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.socket.*;
import org.springframework.web.socket.handler.TextWebSocketHandler;

// springweb.z02_util.D02_MsgHandler
@Controller("msgHandler")
public class MsgHandler extends TextWebSocketHandler{

		// websocketsession을 통한 
	private Map<String, WebSocketSession> users= new ConcurrentHashMap<>();
	
	// 접속이 이루어진후 처리..
	public void afterConnectionEstablished(WebSocketSession session)throws Exception{
		log(session.getId()+" 접속");
		users.put(session.getId(), session);
	}
	// 접속을 끊고 처리..
	public void afterConnectionClosed(WebSocketSession session,
			CloseStatus status)throws Exception{
		log(session.getId()+" 접속 종료");
		users.remove(session.getId());
	}
	// 메시지 전달시 처리..
	protected void handleTextMessage(WebSocketSession session,
			TextMessage message)throws Exception{
		//log(session.getId()+" 님: "+message.getPayload());
		for(WebSocketSession s:users.values()){
			s.sendMessage(message);
			log(s.getId()+" 님: "+message.getPayload());
		}
	}

	
	// 에러발생
	public void handleTransportError(WebSocketSession session, 
				Throwable exception)throws Exception{
		log(session.getId()+" 예외 발생: "+ exception.getMessage());
	}
	// 로그처리.
	private void log(String logmsg){
		System.out.println(new Date()+" : "+logmsg);
	}
}
