package spring.ojt.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;


@ControllerAdvice //để đối phó với các ngoại lệ
public class ExceptionHandle {
	
	// xu li loi trung id
	@ExceptionHandler
	public final ResponseEntity<Object> handleTourIdException(TourIdException ex, WebRequest request){
		TourIdExceptionRes exceptionResponse = new TourIdExceptionRes(ex.getMessage());
			return new ResponseEntity(exceptionResponse,HttpStatus.BAD_REQUEST);
	}
}
