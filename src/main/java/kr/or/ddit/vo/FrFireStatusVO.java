package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
public class FrFireStatusVO {
	private int gid;
	private int sggCd;
	private int endMt;
	private int occuDe;
	private int endYear;
	private int occuYear;
	private String resn;
	private String adres;
	private int occuTm;
	private int endDe;
	private String occDay;
	private int ar;
	private int occuDate;
	private int endTm;
	private int amount;
	private int occuMt;
	private int ctprvnCd;
	private int objtId;
	private int emdCd;
	private int x;
	private int y;
	
}
