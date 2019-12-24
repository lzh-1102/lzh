package com.lzh.service;


import java.util.List;

import com.github.pagehelper.PageInfo;
import com.lzh.bean.Applicant;
import com.lzh.bean.Job;
import com.lzh.bean.Score;

public interface AppService {

	PageInfo<Applicant> getlist(Applicant applicant);
	
	Applicant getone(Integer id);
	
	int addscore(Score score);
	
	List<Job> getjob(Applicant applicant);
	
	int delscore(Integer aid);
	
	int upapplicant(Applicant applicant);
	
	
}
