package pojos;

public class Users {
	int userId;
	String name;
	String email;
	String password;
	String mobile;
	String branch;
	String year;
	String college;
	
	public Users() {
		this.userId = 0;
		this.name = new String();
		this.mobile = new String();
		this.email = new String();
		this.password = new String();
		this.branch = new String();
		this.year = new String();
		this.college = new String();
	}
	
	public Users(int userId,String name, String mobile, String email, String password, String branch, String year, String college) {
		super();
		this.userId = 0;
		this.name = name;
		this.mobile = mobile;
		this.email = email;
		this.password = password;
		this.branch = branch;
		this.year = year;
		this.college = college;
	}

	public int getUserId() {
		return userId;
	}
	
	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	@Override
	public String toString() {
		return "Users [userId=" + userId + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", mobile=" + mobile + ", branch=" + branch + ", year=" + year + ", college=" + college + "]";
	}
	
	
	
}
