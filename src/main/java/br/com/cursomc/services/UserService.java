package br.com.cursomc.services;

import org.springframework.security.core.context.SecurityContextHolder;

import br.com.cursomc.security.UserSS;
//CLASSE QUE OBTEM O USUARIO LOGADO
public class UserService {
	
	public static UserSS authenticated() {
		try {
			return (UserSS) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		}
		catch (Exception e) {
			return null;
		}
	}
}
