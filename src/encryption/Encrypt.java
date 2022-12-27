package encryption;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class Encrypt {

	public static String encodeSha256(String source) {
		String pwd = source;
		
		//Salt 생성
			//1. Random, byte 객체 생성
			SecureRandom r = new SecureRandom();
			byte[] sugar = new byte[20];
				
			//2. 난수 생성
			r.nextBytes(sugar);
			
			//3. byte To String(10진수의 문자열로 변경)
			StringBuffer sb = new StringBuffer();
			for(byte b : sugar) {
				sb.append(String.format("%02x", b));
			}
		String salt = sb.toString();
		salt = salt.substring(0, 10); //salt의 길이를 제한
		//System.out.println(salt);
		
		//최종 pwd생성
		String res = getEncrypt(pwd, salt);
		
		return res + salt; 
	}
	
	
	public static String getEncrypt(String pwd, String salt) {
		String result = "";
		try {
			//1. SHA256 알고리즘 객체 생성
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			
			//2. pwd와 salt 합친 문자열에 SHA256 적용
			md.update((pwd+salt).getBytes());
			byte[] pwdsalt = md.digest();
			
			//3. byte To String (10진수의 문자열로 변경)
			StringBuffer sb = new StringBuffer();
			for(byte b : pwdsalt) {
				sb.append(String.format("%02x", b));
			}
			result = sb.toString();
			
		}catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}









