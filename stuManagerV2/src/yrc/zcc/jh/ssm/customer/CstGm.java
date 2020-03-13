package yrc.zcc.jh.ssm.customer;

import yrc.zcc.jh.ssm.pojo.Gm;

public class CstGm extends Gm {
	private Gm gm;
	private String pwd;
	private String yzm;
	private String newPwd;
	
	public String getNewPwd() {
		return newPwd;
	}

	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}
	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getYzm() {
		return yzm;
	}

	public void setYzm(String yzm) {
		this.yzm = yzm;
	}

	public Gm getGm() {
		return gm;
	}

	public void setGm(Gm gm) {
		this.gm = gm;
	}

	@Override
	public String toString() {
		return "CstGm [gm=" + gm + ", pwd=" + pwd + ", yzm=" + yzm + ", newPwd=" + newPwd + "]";
	}

	
}
