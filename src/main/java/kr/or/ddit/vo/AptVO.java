package kr.or.ddit.vo;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@AllArgsConstructor
@EqualsAndHashCode(of="aptId")
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
public class AptVO {

	public int aptId;
	public String aptDangi; // 아파트 단지명
	public String aptCate; // 전/월세 구분
	public int aptBigPr; // 보증금/전세
	public int aptMontly; // 월세
	public String aptAddr; // 주소

	@Override
	public String toString() {
		return "AptVO [aptId=" + aptId + ", aptDangi=" + aptDangi + ", aptCate=" + aptCate + ", aptBigPr=" + aptBigPr
				+ ", aptMontly=" + aptMontly + ", aptAddr=" + aptAddr + "]";
	}
	
}
