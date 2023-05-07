package kr.or.ddit.vo;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@AllArgsConstructor
@EqualsAndHashCode(of="daId")
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
public class DasedeVO {
	
	public int daId;
	public String daCate;
	public int daBigPri;
	public int daMontly_;
	public String daBuildN; // 건물 이름
	public String daAddr;
	
	@Override
	public String toString() {
		return "DasedeVO [daCate=" + daCate + ", daBigPri=" + daBigPri + ", daMontly_=" + daMontly_ + ", daBuildN="
				+ daBuildN + ", daAddr=" + daAddr + "]";
	}
	
}
