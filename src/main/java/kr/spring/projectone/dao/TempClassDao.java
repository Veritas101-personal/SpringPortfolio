package kr.spring.projectone.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.spring.projectone.vo.TemporaryClassVo;

public interface TempClassDao {

	void submitTempClass(@Param("tempClass")TemporaryClassVo tempClass);

	void updateImage(@Param("tempClass")TemporaryClassVo tempClass);

	TemporaryClassVo getMySubmitClass(@Param("id")String st_id);
	
	void insertImage(@Param("id")String st_id, @Param("image")String file);

	
	// 관리자용

	ArrayList<TemporaryClassVo> getTempClass();

	
	
}
