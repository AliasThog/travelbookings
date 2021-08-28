package spring.ojt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import spring.ojt.model.EmailDTO;

@PropertySource("classpath:common.properties")
@Service
public class SendMailService {
	
	
	@Autowired
	private JavaMailSender emailSender;
	
	@Value("${common.mail.from}")
	private String mailFrom;
	
	public void sendSimpleMessage(EmailDTO emaildto) {
		
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom(mailFrom);
		message.setTo(emaildto.getTo());
		message.setSubject(emaildto.getSubject());
		message.setText(emaildto.getText());
		this.emailSender.send(message);
		System.out.println("Sent message successfully....");		
		

	}
}
