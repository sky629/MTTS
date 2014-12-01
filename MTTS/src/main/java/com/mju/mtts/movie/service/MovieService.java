package com.mju.mtts.movie.service;

import java.util.List;

import com.mju.mtts.vo.admin.AdminInfo;

public interface MovieService {
	List<AdminInfo> getAdminAll(String seq);
}