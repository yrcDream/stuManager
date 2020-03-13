package yrc.zcc.jh.ssm.service;

import java.util.List;

import yrc.zcc.jh.ssm.pojo.Student;
import yrc.zcc.jh.ssm.queryInfo.QueryInfoVal;

public interface StuService {
	
	public List<Student> findStuByQueryInfo(QueryInfoVal queryInfoval)throws Exception;
	public int getItemsCountByQueryInfo(QueryInfoVal queryInfoval)throws Exception;
}
