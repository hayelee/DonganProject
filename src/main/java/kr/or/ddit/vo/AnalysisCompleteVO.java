package kr.or.ddit.vo;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@AllArgsConstructor
@EqualsAndHashCode(of="acNo")
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
public class AnalysisCompleteVO {

	public int acNo; 
	public String acLike; //찜
	
	public String admNm; //지역 이름
	
	public int subId; // 지하철id(갯수 세기용)
	public int busId; // 버스id(갯수 세기용)
	public int martId;  // 마트id
	public int conId; // 편의점id
	public int hosId; // 병원id
	
	
	public String sggNm; // 시군구 이름
	//아파트
	public int aptId;
	public String aptDangi; // 아파트 단지명
	public String aptCate; // 전/월세 구분
	public int aptBigPr; // 보증금/전세
	public int aptMontly; // 월세
	public String aptAddr; // 주소
	//다세대
	public int daId;
	public String daCate;
	public int daBigPri;
	public int daMontly_;
	public String daBuildN; // 건물 이름
	public String daAddr;
	//오피스텔
	public int opId;
	public String opDangi; //오피스텔 이름
	public String opCate;
	public int opBigPri; 
	public int opMontly;
	public String opAddr;
	
	
	
	public int seNo; //selectElementVO 요소선택 번호
	public String parkNm; //공원 이름
	public int parkArea; // 공원 크기
	
	
	@Override
	public String toString() {
		return "AnalysisCompleteVO [acNo=" + acNo + ", acLike=" + acLike + ", admNm=" + admNm + ", subId=" + subId
				+ ", busId=" + busId + ", martId=" + martId + ", conId=" + conId + ", sggNm=" + sggNm + ", aptDangi="
				+ aptDangi + ", aptCate=" + aptCate + ", aptBigPr=" + aptBigPr + ", aptMontly=" + aptMontly
				+ ", aptAddr=" + aptAddr + ", daCate=" + daCate + ", daBigPri=" + daBigPri + ", daMontly_=" + daMontly_
				+ ", daBuildN=" + daBuildN + ", daAddr=" + daAddr + ", opDangi=" + opDangi + ", opCate=" + opCate
				+ ", opBigPri=" + opBigPri + ", opMontly=" + opMontly + ", opAddr=" + opAddr + ", seNo=" + seNo
				+ ", parkNm=" + parkNm + ", parkArea=" + parkArea + "]";
	}
	
}
