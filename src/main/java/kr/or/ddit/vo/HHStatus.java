package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
public class HHStatus {
	private int gid;
	private String entrpsNm;
	private int sggCd;
	private int bsum;
	private String adres;
	private int ctprvnCd;
	private int objtId;
	private String rnAdres;
	private String indutyNm;
	private int emdCd;
	private int x;
	private int y;
}
