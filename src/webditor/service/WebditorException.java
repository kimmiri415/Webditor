package webditor.service;

public class WebditorException extends Exception{
	public WebditorException(){
		super();
	}
	public WebditorException(String message){
		super(message);
	}
	public WebditorException(Throwable cause){
		super(cause);
	}
	public WebditorException(String message, Throwable cause){
		super(message,cause);
	}
	

}
