package com.zking.crm1.util;

import java.io.IOException;
import java.io.OutputStream;


import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.ObjectMapper;



/**
 * json工具类
 * @author 肖庭
 *
 */
public class JsonUtils {

	private static ObjectMapper objectMapper=new ObjectMapper();
	
	
	
	
	public  static void ww(OutputStream os,Object value){	      

	       try {
			JsonGenerator generator = objectMapper.getJsonFactory().createJsonGenerator(os, JsonEncoding.UTF8);
			generator.writeObject(value);
			if(generator!=null){
				generator.flush();
			}if(!generator.isClosed()){
				generator.close();
			}
		} catch (IOException e) {
            throw new RuntimeException(e);
		}

	

	}
	
	/**
	 * json转Java
	 */
	
	public static Object readValue(String json, Class<?> type){
		try {
			return objectMapper.readValue(json, type);
		} catch (Exception e) {
			throw new RuntimeException(e);			}
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
