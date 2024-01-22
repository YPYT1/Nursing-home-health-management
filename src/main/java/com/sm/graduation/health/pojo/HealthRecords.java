package com.sm.graduation.health.pojo;

import com.sm.graduation.dormitory.pojo.DormitoryAllocation;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class HealthRecords {
	/** 编号记录 */
	private Long id;
	/** 姓名 */
	private String name;
	/** 性别 */
	private String sex;
	/** 出生 */
	private String born;
	/** 身高 */
	private Double height;
	/** 体重 */
	private Double weight;
	/** 血型 */
	private String bloodType;
	/** 过敏 */
	private String allergy;
	/** 心率 60～100次/分 */
	private Double heartRate;
	/** 血压 90～139mmHg */
	private Double bloodPressure;
	/** 血糖 3.92～7.0mmol/L */
	private Double bloodSugar;
	/** 吸烟 */
	private String smoke;

	private String createTime;

	private DormitoryAllocation dorm;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBorn() {
		return born;
	}

	public void setBorn(String born) {
		this.born = born;
	}

	public Double getHeight() {
		return height;
	}

	public void setHeight(Double height) {
		this.height = height;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public String getBloodType() {
		return bloodType;
	}

	public void setBloodType(String bloodType) {
		this.bloodType = bloodType;
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}

	public Double getHeartRate() {
		return heartRate;
	}

	public void setHeartRate(Double heartRate) {
		this.heartRate = heartRate;
	}

	public Double getBloodPressure() {
		return bloodPressure;
	}

	public void setBloodPressure(Double bloodPressure) {
		this.bloodPressure = bloodPressure;
	}

	public Double getBloodSugar() {
		return bloodSugar;
	}

	public void setBloodSugar(Double bloodSugar) {
		this.bloodSugar = bloodSugar;
	}

	public String getSmoke() {
		return smoke;
	}

	public void setSmoke(String smoke) {
		this.smoke = smoke;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public DormitoryAllocation getDorm() {
		return dorm;
	}

	public void setDorm(DormitoryAllocation dorm) {
		this.dorm = dorm;
	}
}
