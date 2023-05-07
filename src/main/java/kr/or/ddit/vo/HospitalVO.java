package kr.or.ddit.vo;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
public class HospitalVO {
	private int hosId;
	private String dutyName;
	private String dutyTel;
	private String dutyAddr;
	private String dutyDivNam;
	private int num;
	private String dutyWeeken;
	private int postCdn1;
	private int postCdn2;
	private int x;
	private int y;
	private double lon;
	private double lat;
	
	
	private String admNm;


	@Override
	public String toString() {
		return "HospitalVO [hosId=" + hosId + ", dutyName=" + dutyName + ", dutyTel=" + dutyTel + ", dutyAddr="
				+ dutyAddr + ", dutyDivNam=" + dutyDivNam + ", num=" + num + ", dutyWeeken=" + dutyWeeken
				+ ", postCdn1=" + postCdn1 + ", postCdn2=" + postCdn2 + ", x=" + x + ", y=" + y + ", lon=" + lon
				+ ", lat=" + lat + ", admNm=" + admNm + "]";
	}
	
	
}
