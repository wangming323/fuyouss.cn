package com.team323.common.exp;


import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

//异常集中处理
@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(RuntimeException.class)
    @ResponseBody
    public String doHandleRuntimeException(
            RuntimeException e
    ) {
        e.printStackTrace();
        return e.getMessage();
    }
}
