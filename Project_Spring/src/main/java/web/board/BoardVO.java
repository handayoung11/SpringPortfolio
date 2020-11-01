package web.board;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardVO {
	private int bidx;
	private String btitle;
	private String bwriter;
	private String bwriterName;
	private String bcontent;
	private String bdate;
	private int bsee;
	
	public String getBwriterName() {
		return bwriterName;
	}
	public void setBwriterName(String bwriterName) {
		this.bwriterName = bwriterName;
	}
	public int getBidx() {
		return bidx;
	}
	public void setBidx(int idx) {
		this.bidx = idx;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = new SimpleDateFormat("yyyy-MM-dd").format(bdate);
	}
	public int getBsee() {
		return bsee;
	}
	public void setBsee(int bstat) {
		this.bsee = bstat;
	}
	
	@Override
	public String toString() {
		return String.format("BoardVO[bidx=%s, btitle=%s, bwriter=%s, bcontent=%s, bdate=%s, bstat=%d]", 
				bidx, btitle, bwriter, bcontent, bdate, bsee);
	}
}
