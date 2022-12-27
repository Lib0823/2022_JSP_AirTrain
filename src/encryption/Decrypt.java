package encryption;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Decrypt {

	public static String decodeSha256(String Id, String Pw) {
		String id = Id;		// 사용자가 입력한 아이디
		String pwd = Pw; 	// 사용자가 입력한 비밀번호
		String pwd2 = ""; 	// 저장되어있는 비밀번호
		String result = "";
		
		try{ // 저장되어있는 비밀번호 가져옴
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false", "root", "1234");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select pw from user where id='"+id+"'");
			while(rs.next()) {
				pwd2 = rs.getString("pw");
				System.out.println(pwd2);
			}
			stmt.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		//salt 추출
		String salt = pwd2.substring(pwd2.length()-10, pwd2.length());
		
		//최종 pwd생성
		String res = getEncrypt(pwd, salt);
		
		if((res+salt).equals(pwd2)) {
			result = "ok";
		}else {
			result = "no";
		}
		return result;	
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









