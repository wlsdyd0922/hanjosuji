package job.bean;

public class AdminDto {
	private int pagedatasize = 10; // 한 페이지당 보여줄 데이터 개수
	private int enddata; // 데이터베이스상 페이지별 첫번째 데이터
	private int startdata; // 데이터 베이스상 페이지별 마지막 데이터
	private int count; // 데이터 베이스내 전체 데이터 개수
	private int pagesize; // 전체 페이지 수
	private int pageblockstart; // 페이지 블록 시작번호
	private int pageblockend; // 페이지 블록 끝번호
	private int pageblocksize; // 페이지 블록 당 페이징 개수
	private int pageno;
	
	public int getPageno() {
		return pageno;
	}
	public void setPageno(int pageno) {
		this.pageno = pageno;
	}
	public int getPagedatasize() {
		return pagedatasize;
	}
	public void setPagedatasize(int pagedatasize) {
		this.pagedatasize = pagedatasize;
	}
	public int getEnddata() {
		return enddata;
	}
	public void setEnddata(int enddata) {
		this.enddata = enddata;
	}
	public int getStartdata() {
		return startdata;
	}
	public void setStartdata(int startdata) {
		this.startdata = startdata;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getPageblockstart() {
		return pageblockstart;
	}
	public void setPageblockstart(int pageblockstart) {
		this.pageblockstart = pageblockstart;
	}
	public int getPageblockend() {
		return pageblockend;
	}
	public void setPageblockend(int pageblockend) {
		this.pageblockend = pageblockend;
	}
	public int getPageblocksize() {
		return pageblocksize;
	}
	public void setPageblocksize(int pageblocksize) {
		this.pageblocksize = pageblocksize;
	}
}
