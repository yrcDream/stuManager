package yrc.zcc.jh.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import yrc.zcc.jh.ssm.mapper.ScoreMapper;
import yrc.zcc.jh.ssm.pojo.Score;
import yrc.zcc.jh.ssm.pojo.ScoreExample;
import yrc.zcc.jh.ssm.pojo.ScoreExample.Criteria;

public class ScoServiceImp implements ScoService{
	
	@Autowired	
	private ScoreMapper scoreMapper;
	
	@Override
	public List<Score> findScoreByXh(String xh) {
		ScoreExample example = new ScoreExample();
		Criteria criteria = example.createCriteria();
		criteria.andXhEqualTo(xh);
		return scoreMapper.selectByExample(example);
	}

}
