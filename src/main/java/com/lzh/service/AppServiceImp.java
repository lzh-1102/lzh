package com.lzh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageInfo;
import com.lzh.bean.Applicant;
import com.lzh.bean.Job;
import com.lzh.bean.Score;
import com.lzh.mapper.AppMapper;
@Service
@Transactional
public class AppServiceImp implements AppService {

	@Autowired
	private AppMapper mapper;
	@Override
	public PageInfo<Applicant> getlist(Applicant applicant) {
		List<Applicant> list = mapper.getlist(applicant);
		return new PageInfo<Applicant>(list);
	}
	@Override
	public Applicant getone(Integer id) {
		// TODO Auto-generated method stub
		return mapper.getone(id);
	}
	@Override
	public int addscore(Score score) {
		// TODO Auto-generated method stub
		Integer a=null;
		Integer aid = score.getAid();
		List<Score> getappscore = mapper.getappscore(aid);
		for (Score score2 : getappscore) {
			Integer jid = score2.getJid();
			if(score.getJid()==jid) {
				mapper.deljobscore(score2);
			}
		}
		return mapper.addscore(score);
	}
	@Override
	public List<Job> getjob(Applicant applicant) {
		// TODO Auto-generated method stub
		return mapper.getjob(applicant);
	}
	@Override
	public int delscore(Integer aid) {
		mapper.delapplicant(aid);
		return mapper.delscore(aid);
	}
	@Override
	public int upapplicant(Applicant applicant) {
		// TODO Auto-generated method stub
		return mapper.upapplicant(applicant);
	}
	

}
