package yrc.zcc.jh.ssm.service;

import yrc.zcc.jh.ssm.customer.CstGm;
import yrc.zcc.jh.ssm.pojo.Gm;

public interface GmService {
	
	public Gm findGmByGid(String gid)throws Exception;
	public Gm hasGm(CstGm gm)throws Exception;
	
	public Gm updateGmInfo(Gm oldgm,CstGm newGm)throws Exception;

}
