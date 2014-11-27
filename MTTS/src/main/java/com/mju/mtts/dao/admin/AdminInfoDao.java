package com.mju.mtts.dao.admin;

import java.util.List;

import com.mju.mtts.vo.admin.AdminInfo;

public interface AdminInfoDao {
	
	List<AdminInfo> selectAll(AdminInfo param);
}
