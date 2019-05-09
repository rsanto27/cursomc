package br.com.cursomc.config;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

import br.com.cursomc.services.DBService;
import br.com.cursomc.services.EmailService;
import br.com.cursomc.services.MockEmailService;

//Configuração do profile de teste que fica dentro de resources
//Todos os beans aqui instanciados serao efetivos apenas quando o profile de teste estiver ativo
@Configuration
@Profile("test")
public class TestConfig {

	@Autowired
	private DBService dbService;

	// Bean com os inserts e updates gerados para produzir a massa de dados do
	// profile test
	@Bean
	public boolean instantiateDatabase() throws ParseException {
		dbService.instantiateTestDatabase();
		return true;
	}

	@Bean
	public EmailService emailService() {
		return new MockEmailService();
	}

}
