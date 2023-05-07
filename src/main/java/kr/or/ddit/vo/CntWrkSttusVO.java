package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
public class CntWrkSttusVO {
	private int gid;
	private int sggCd;
	private String cntwrkSe;
	private String wrkAdres;
	private int strwrkDe;
	private String balju_name;
	private String wrkAdres2;
	private String agreePro;
	private String pubGenre;
	private int ctprvnCd;
	private int objtId;
	private int competDe;
	private int x;
	private int y;
	
}
