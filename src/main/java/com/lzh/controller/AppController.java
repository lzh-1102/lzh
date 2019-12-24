package com.lzh.controller;

import java.util.List;

import javax.validation.Valid;
import javax.xml.ws.BindingType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzh.bean.Applicant;
import com.lzh.bean.Job;
import com.lzh.bean.Score;
import com.lzh.service.AppService;

@Controller
public class AppController {
	
	@Autowired
	private AppService mm;
	
	/**
	 * 查询所有页面
	 * @param model
	 * @param pageNum
	 * @param applicant
	 * @return
	 */
	@RequestMapping("getlist.do")
	private String getlist(Model model,@RequestParam(defaultValue = "1")Integer pageNum,Applicant applicant) {
		PageHelper.startPage(pageNum, 3);
		PageInfo<Applicant> getlist = mm.getlist(applicant);
		model.addAttribute("getlist", getlist);
		return "list";
	}
	
	/**
	 * 去往成绩页面
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping("toscore.do")
	private String toscore(Model model,Integer id) {
		Applicant getone = mm.getone(id);
		List<Job> list = mm.getjob(getone);
		model.addAttribute("list", list);
		model.addAttribute("one", getone);
		return "addscore";
	}
	@RequestMapping("toAdd.do")
	private String toAdd(Model model) {
		Applicant applicant = new Applicant();
		model.addAttribute("applicant", applicant);
		return "add";
	}
	@RequestMapping("add.do")
	private String add(@Valid @ModelAttribute(name = "applicant") Applicant applicant, BindingResult br) {
		if (br.hasErrors()) {
			return "add";
		}
		System.out.println(applicant);
		//mm.addApplicant(applicant);
		return "redirect:getlist.do";
	}
	/**
	 * 添加方法
	 * @param model
	 * @param score
	 * @return
	 */
	@RequestMapping("addscore.do")
	@ResponseBody
	private int addscore(Model model,Score score) {
		int i = mm.addscore(score);
		return i;
	}
	/**
	 * 删除方法
	 * @param aid
	 * @return
	 */
	@RequestMapping("del.do")
	@ResponseBody
	private int del(Integer aid) {
		int i = mm.delscore(aid);
		return i;
	}
	@RequestMapping("toupdate.do")
	private String toupdate(Model model,Integer id) {
		Applicant getone = mm.getone(id);
		model.addAttribute("one", getone);
		return "update";
	}
	@RequestMapping("upapplicant.do")
	@ResponseBody
	private int upapplicant(Model model,Applicant applicant) {
		int i = mm.upapplicant(applicant);
		return i;
	}
}
