package kr.or.ddit.vo;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
public class pharmacyVO {
	private int pharmaId;
	private String dutyName;
	private String dutyTel1;
	private String dutyInf;
	private String dutyAddr;
	private String dutyEtc;
	private int num;
	private String dutyWeeken;
	private String dutyMapimg;
	private double lon;
	private double lat;
	private double x;
	private double y;
	
	private String admNm;

	@Override
	public String toString() {
		return "pharmacyVO [pharmaId=" + pharmaId + ", dutyName=" + dutyName + ", dutyTel1=" + dutyTel1 + ", dutyInf="
				+ dutyInf + ", dutyAddr=" + dutyAddr + ", dutyEtc=" + dutyEtc + ", num=" + num + ", dutyWeeken="
				+ dutyWeeken + ", dutyMapimg=" + dutyMapimg + ", lon=" + lon + ", lat=" + lat + ", x=" + x + ", y=" + y
				+ ", admNm=" + admNm + "]";
	}
	
	
}
