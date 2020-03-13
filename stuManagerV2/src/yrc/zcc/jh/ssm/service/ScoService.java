package yrc.zcc.jh.ssm.service;

import java.util.List;

import yrc.zcc.jh.ssm.pojo.Score;
import yrc.zcc.jh.ssm.queryInfo.QueryInfoVal;

public interface ScoService {
	
	public List<Score> findScoreByXh(String xh)throws Exception;

}
