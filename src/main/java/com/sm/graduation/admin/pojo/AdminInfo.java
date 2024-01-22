package com.sm.graduation.admin.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdminInfo {
	/** 管理员编号 */
	private Long adminId;
	/** 登录名 */
	private String adminLogin;
	/** 密码 */
	private String adminPwd;
	/** 用户名 */
	private String adminName;
	private long adminTel;

	private String adminSex;
	private short power;

	public Long getAdminId() {
		return adminId;
	}

	public void setAdminId(Long adminId) {
		this.adminId = adminId;
	}

	public String getAdminLogin() {
		return adminLogin;
	}

	public void setAdminLogin(String adminLogin) {
		this.adminLogin = adminLogin;
	}

	public String getAdminPwd() {
		return adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public long getAdminTel() {
		return adminTel;
	}

	public void setAdminTel(long adminTel) {
		this.adminTel = adminTel;
	}

	public String getAdminSex() {
		return adminSex;
	}

	public void setAdminSex(String adminSex) {
		this.adminSex = adminSex;
	}

	public short getPower() {
		return power;
	}

	public void setPower(short power) {
		this.power = power;
	}
}
