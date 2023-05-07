package kr.or.ddit.vo;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
public class MartVO {
	private int martId;
	private String sggNm;
	private String martCate;
	private String martNm;
	private String martAddr;
	private String martAddr2;
	
	private String admNm;
	
	private String fcltyNm;
	private String fcltyTy;
	private String adres;
	private String conId;
	@Override
	public String toString() {
		return "MartVO [martId=" + martId + ", sggNm=" + sggNm + ", martCate=" + martCate + ", martNm=" + martNm
				+ ", martAddr=" + martAddr + ", martAddr2=" + martAddr2 + ", admNm=" + admNm + ", fcltyNm=" + fcltyNm
				+ ", fcltyTy=" + fcltyTy + ", adres=" + adres + ", conId=" + conId + "]";
	}
	
}
