package com.example.email.app;

import lombok.Data;

@Data
public class EmailRequest {
    private String emailContent;
    private String tone;
   
        public String getTone() {
            return tone;
        }
    }


       