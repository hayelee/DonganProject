package kr.or.ddit.vo;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
public class ConvenienceVO {
	private int conId;
	private int fcltyCd;
	private int sggCd;
	private String fcltyNm;
	private String adres;
	private String rnAdres;
	private int objtId;
	private String fcltyTy;
	private int emdCd;
	private int x;
	private int y;
	
	private int martId;
	private String sggNm;
	private String martCate;
	private String martNm;
	private String martAddr;
	private String martAddr2;
	
	private String admNm;

	@Override
	public String toString() {
		return "ConvenienceVO [conId=" + conId + ", fcltyCd=" + fcltyCd + ", sggCd=" + sggCd + ", fcltyNm=" + fcltyNm
				+ ", adres=" + adres + ", rnAdres=" + rnAdres + ", objtId=" + objtId + ", fcltyTy=" + fcltyTy
				+ ", emdCd=" + emdCd + ", x=" + x + ", y=" + y + ", martId=" + martId + ", sggNm=" + sggNm
				+ ", martCate=" + martCate + ", martNm=" + martNm + ", martAddr=" + martAddr + ", martAddr2="
				+ martAddr2 + ", admNm=" + admNm + "]";
	}
	
	
	
}
