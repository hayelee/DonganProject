package kr.or.ddit.vo;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="seNo")
@Data
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
public class SelectElementVO {
	private int seNo;
	private String seDwlling;
	private int seBigPrice;
	private int seMonthlyPrice;
	private String seDongNm;
	private String seInflu;
	
	
	public String admNm; //지역 이름
	
	public int subId; // 지하철id(갯수 세기용)
	public int busId; // 버스id(갯수 세기용)
	public int martId;  // 마트id
	public int conId; // 편의점id
	public int parkId; //공원id
	
	public String sggNm; // 시군구 이름
	
	//구분
	public String aptGubun;
	public String opGubun;
	public String daGubun;
	//아파트
	public String aptDangi; // 아파트 단지명
	public String aptCate; // 전/월세 구분
	public int aptBigPr; // 보증금/전세
	public int aptMontly; // 월세
	public String aptAddr; // 주소
	//다세대
	public String daCate;
	public int daBigPri;
	public int daMontly;
	public String daBuildN; // 건물 이름
	public String daAddr;
	//오피스텔
	public String opDangi; //오피스텔 이름
	public String opCate;
	public int opBigPri; 
	public int opMontly;
	public String opAddr;
	
	
	
	public String parkNm; //공원 이름
	public int parkArea; //공원면적
	@Override
	public String toString() {
		return "SelectElementVO [seNo=" + seNo + ", seDwlling=" + seDwlling + ", seBigPrice=" + seBigPrice
				+ ", seMonthlyPrice=" + seMonthlyPrice + ", seDongNm=" + seDongNm + ", seInflu=" + seInflu + ", admNm="
				+ admNm + ", subId=" + subId + ", busId=" + busId + ", martId=" + martId + ", conId=" + conId
				+ ", parkId=" + parkId + ", sggNm=" + sggNm + ", aptGubun=" + aptGubun + ", opGubun=" + opGubun
				+ ", daGubun=" + daGubun + ", aptDangi=" + aptDangi + ", aptCate=" + aptCate + ", aptBigPr=" + aptBigPr
				+ ", aptMontly=" + aptMontly + ", aptAddr=" + aptAddr + ", daCate=" + daCate + ", daBigPri=" + daBigPri
				+ ", daMontly_=" + daMontly + ", daBuildN=" + daBuildN + ", daAddr=" + daAddr + ", opDangi=" + opDangi
				+ ", opCate=" + opCate + ", opBigPri=" + opBigPri + ", opMontly=" + opMontly + ", opAddr=" + opAddr
				+ ", parkNm=" + parkNm + ", parkArea=" + parkArea + "]";
	}


	
	
}
