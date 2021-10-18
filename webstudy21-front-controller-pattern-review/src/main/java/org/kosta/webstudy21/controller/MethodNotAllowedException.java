package org.kosta.webstudy21.controller;

public class MethodNotAllowedException extends Exception{
	private static final long serialVersionUID = -1578543632742170795L;
	public MethodNotAllowedException() {
		super("허용되지 않는 Request Method 방식으로 접근하여 서비스 불가");
	}
}
