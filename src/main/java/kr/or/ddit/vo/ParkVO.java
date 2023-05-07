package kr.or.ddit.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
public class ParkVO {
	private int parkId;
	private String parkNm;
	private String parkCate;
	private String parkAddr;
	private String parkAddr2;
	private double lat;
	private double lon;
	private int parkArea;
	private Date parkDate;
	private String parkTel;
	
	private String admNm;

	@Override
	public String toString() {
		return "ParkVO [parkId=" + parkId + ", parkNm=" + parkNm + ", parkCate=" + parkCate + ", parkAddr=" + parkAddr
				+ ", parkAddr2=" + parkAddr2 + ", lat=" + lat + ", lon=" + lon + ", parkArea=" + parkArea
				+ ", parkDate=" + parkDate + ", parkTel=" + parkTel + ", admNm=" + admNm + "]";
	}
	
	
}
