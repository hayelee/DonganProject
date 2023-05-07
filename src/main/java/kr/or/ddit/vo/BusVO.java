package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
public class BusVO {
	private int busId;
	private String sggNm;
	private String busstNm;
	private String busstEnm;
	private int bsst_num;
	private double lat;
	private double lon;
}
