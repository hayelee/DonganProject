package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="gid")
@Data
public class SubwayVO {
	private int subId;
	private String line;
	private String name;
	private int code;
	private double lat;
	private double lon;
}
