package com.sm.graduation.accident.dao;

import com.sm.graduation.accident.pojo.AccidentRecord;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

@Mapper
public interface AccidentRecordMapper {


	List<AccidentRecord> listAll(Map map);

	@Select("select id,accident,detail,acc_time,loss from accident_record where id=#{id}")
	AccidentRecord getById(Long id);

	@Insert("insert into accident_record(accident,detail,acc_time,loss) values(#{accident},#{detail},#{accTime},#{loss})")
	int insert(AccidentRecord accidentRecord);

	@Update("update accident_record set accident=#{accident},detail=#{detail}, acc_time=#{accTime}, loss=#{loss} where id=#{id}")
	int update(AccidentRecord accidentRecord);

	@Delete("delete from accident_record where id=#{id}")
	int delete(Integer id);

}
