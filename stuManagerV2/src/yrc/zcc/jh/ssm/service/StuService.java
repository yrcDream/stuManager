package yrc.zcc.jh.ssm.service;

import java.util.List;

import yrc.zcc.jh.ssm.customer.CstStudent;
import yrc.zcc.jh.ssm.queryInfo.QueryInfoVal;

public interface StuService {
	
	public List<CstStudent> findStuByQueryInfo(QueryInfoVal queryInfoval)throws Exception;
	public int getItemsCountByQueryInfo(QueryInfoVal queryInfoval)throws Exception;
}
