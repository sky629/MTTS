package com.mju.mtts.main.service;

import java.util.List;

import com.mju.mtts.vo.admin.AdminInfo;

public interface MainService {
	List<AdminInfo> getAdminAll(String seq);
}