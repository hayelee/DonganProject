package kr.or.ddit.vo;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@AllArgsConstructor
@EqualsAndHashCode(of="gid")
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
public class DonganVO {
	private int gid;
	private String baseDate;
	private String admCd;
	private String admNm;
	private double x;
	private double y;
	
	private int hosId;
	private int pharmaId;
	private int martId;
	private int parkId;
	private int conId;
	private int subId;
	private int busId;
	@Override
	public String toString() {
		return "DonganVO [admNm=" + admNm + ", hosId=" + hosId + ", pharmId=" + pharmaId + ", martId=" + martId
				+ ", parkId=" + parkId + ", conId=" + conId + ", subId=" + subId + ", busId=" + busId + "]";
	}
	
	
	
	

}
