package yrc.zcc.jh.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yrc.zcc.jh.ssm.customer.CstGm;
import yrc.zcc.jh.ssm.mapper.GmMapper;
import yrc.zcc.jh.ssm.pojo.Gm;
import yrc.zcc.jh.ssm.pojo.GmExample;
import yrc.zcc.jh.ssm.pojo.GmExample.Criteria;

@Service("gmServiceImp")
public class GmServiceImp implements GmService {

	@Autowired
	private GmMapper gmMapper;
	@Override
	public Gm findGmByGid(String gid) throws Exception {
		return gmMapper.selectByPrimaryKey(gid);
	}
	@Override
	public Gm hasGm(CstGm gm) throws Exception {
		GmExample example = new GmExample();
		Criteria criteria = example.createCriteria();
		criteria.andNameEqualTo(gm.getUsername());
		criteria.andPasswordEqualTo(gm.getPwd());
		List<Gm> gmList =  gmMapper.selectByExample(example);
		if(gmList !=null && (gmList.size()==1)) {
			return gmList.get(0);
		}
		return null;	
	}
	@Override
	public Gm updateGmInfo(Gm oldgm, CstGm newGm) throws Exception {
		
		oldgm.setName(newGm.getName());
		oldgm.setEmail(newGm.getEmail());
		oldgm.setPassword(newGm.getNewPwd());
		int result = gmMapper.updateByPrimaryKey(oldgm);
		System.out.println(result);
		if(result!=0) {
			return oldgm;
		}
		return null;
	}

}
