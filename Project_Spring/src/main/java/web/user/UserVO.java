package web.user;

public class UserVO {
	private int idx;
	private String uname;
	private String userID;
	private String userpw;
	private String uemail;
	private int ustat;
	private int uauth;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userid) {
		this.userID = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public int getUstat() {
		return ustat;
	}
	public void setUstat(int ustat) {
		this.ustat = ustat;
	}
	public int getUauth() {
		return uauth;
	}
	public void setUauth(int uauth) {
		this.uauth = uauth;
	}
	@Override
	public String toString() {
		return "UserVO [idx=" + idx + ", uname=" + uname + ", userid=" + userID + ", userpw=" + userpw + ", uemail="
				+ uemail + ", ustat=" + ustat + ", uauth=" + uauth + "]";
	}
}
