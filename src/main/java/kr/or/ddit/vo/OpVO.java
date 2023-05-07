package kr.or.ddit.vo;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@AllArgsConstructor
@EqualsAndHashCode(of="opId")
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.ANY)
public class OpVO {
	
	public int opId;
	public String opDangi; //오피스텔 이름
	public String opCate;
	public int opBigPri; 
	public int opMontly;
	public String opAddr;
}
