package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of="likeNo")
@Data
public class LikeListVO {
	private int likeNo;
}
