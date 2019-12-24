package com.lzh.mapper;

import java.util.List;

import com.lzh.bean.Applicant;
import com.lzh.bean.Job;
import com.lzh.bean.Score;

public interface AppMapper {

	List<Applicant> getlist(Applicant applicant);
	
	Applicant getone(Integer id);
	
	int addscore(Score score);
	
	List<Job> getjob(Applicant applicant);
	
	int delscore(Integer aid);
	
	int delapplicant(Integer id);
	
	int upapplicant(Applicant applicant);
	
	List<Score> getappscore(Integer aid);
	
	int deljobscore(Score score);
	
}
