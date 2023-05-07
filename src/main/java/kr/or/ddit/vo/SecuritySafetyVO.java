package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
public class SecuritySafetyVO {
	private int gid;
	private String tyNm;
	private int sggCd;
	private String ctprvnCd;
	private int objtId;
	private int grad;
	private int x;
	private int y;

}
