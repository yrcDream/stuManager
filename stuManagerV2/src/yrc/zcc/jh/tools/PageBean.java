package yrc.zcc.jh.tools;

import java.util.List;

public class PageBean<T> {
	//总共的记录数
	private int trcored;
	//当前页
	private int pcode;
	//每页最大容量，默认为10
	private int psize=10;
	//每页的内容
	private String url;
	
	private int tp;
	
	private List<? extends T> beanList;
	public List<? extends T> getBeanList() {
		return beanList;
	}
	public void setBeanList(List<? extends T> beanList) {
		this.beanList = beanList;
	}
	public int getTrcored() {
		return trcored;
	}
	public void setTrcored(int trcored) {
		this.trcored = trcored;
	}
	public int getPcode() {
		return pcode;
	}
	public void setPcode(int pcode) {
		this.pcode = pcode;
	}
	public int getPsize() {
		return psize;
	}
	public void setPsize(int psize) {
		this.psize = psize;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getTp() {
		this.tp = this.trcored/this.psize;
		return (trcored%this.psize==0?tp:tp+1);
	}
	
	
	
	
}
