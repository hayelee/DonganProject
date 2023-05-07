package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
public class PGMStatusVO {
	private int gid;
	private String fcltySe;
	private int sggCd;
	private String fcltyNm;
	private String adres;
	private int ctprvnCd;
	private int objtId;
	private String rnAdres;
	private int emdCd;
	private int x;
	private int y;
}
