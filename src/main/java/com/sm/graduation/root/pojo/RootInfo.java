package com.sm.graduation.root.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RootInfo {
	/** 超级管理员 */
	private Short id;
	/** 登录名 */
	private String name;
	/** 密码 */
	private String pwd;
	/** 绰号 */
	private String nickName;
	/** 权限 */
	private short power;

	public Short getId() {
		return id;
	}

	public void setId(Short id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public short getPower() {
		return power;
	}

	public void setPower(short power) {
		this.power = power;
	}
}
