package com.sm.graduation.usr.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UsrInfo {
	/** 编号 */
	private Long usrId;
	/** 登录名 */
	private String usrLogin;
	/** 用户名 */
	private String usrName;
	private String usrSex;
	/** 登录密码 */
	private String usrPwd;
	/** 电话 */
	private Long usrTel;
	/** 地址 */
	private String usrAddr;
	private String olderName;

	public Long getUsrId() {
		return usrId;
	}

	public void setUsrId(Long usrId) {
		this.usrId = usrId;
	}

	public String getUsrLogin() {
		return usrLogin;
	}

	public void setUsrLogin(String usrLogin) {
		this.usrLogin = usrLogin;
	}

	public String getUsrName() {
		return usrName;
	}

	public void setUsrName(String usrName) {
		this.usrName = usrName;
	}

	public String getUsrSex() {
		return usrSex;
	}

	public void setUsrSex(String usrSex) {
		this.usrSex = usrSex;
	}

	public String getUsrPwd() {
		return usrPwd;
	}

	public void setUsrPwd(String usrPwd) {
		this.usrPwd = usrPwd;
	}

	public Long getUsrTel() {
		return usrTel;
	}

	public void setUsrTel(Long usrTel) {
		this.usrTel = usrTel;
	}

	public String getUsrAddr() {
		return usrAddr;
	}

	public void setUsrAddr(String usrAddr) {
		this.usrAddr = usrAddr;
	}

	public String getOlderName() {
		return olderName;
	}

	public void setOlderName(String olderName) {
		this.olderName = olderName;
	}
}
