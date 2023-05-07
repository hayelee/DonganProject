package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
public class TrafficSafetyVO {
	private int gid;
	private int sggCd;
	private int occuDe;
	private int occuYear;
	private String Iclas;
	private int death;
	private int occuTm;
	private String occuDay;
	private int occuDate;
	private String violtCn;
	private int occuMt;
	private int ctprvnCd;
	private int obtjId;
	private int swpsn;
	private int sinjpsn;
	private int emdCd;
	private int xCoord2;
	private int yCoord2;
}
