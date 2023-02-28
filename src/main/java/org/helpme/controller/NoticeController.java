package org.helpme.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import org.apache.commons.lang3.StringUtils;
import org.helpme.domain.NoticeVO;
import org.helpme.domain.PageMaker;
import org.helpme.domain.SearchCriteria;

import org.helpme.service.NoticeService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.JsonObject;

import java.io.IOException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@Controller
@RequiredArgsConstructor
@Slf4j
@RequestMapping("/notice/*")
public class NoticeController {

	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@Inject
	private  NoticeService service;


	@RequestMapping(value = "/list", method = RequestMethod.GET)
	
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		System.out.println("cri = " + cri );
		// model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("list", service.listSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		// pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(service.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)

	public void read(@RequestParam("noticeId") int noticeId, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute(service.read(noticeId));
	}

	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	
	public String remove(@RequestParam("noticeId") int noticeId, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		service.remove(noticeId);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/notice/list";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)

	public void modifyGET(int noticeId, @ModelAttribute("cri") SearchCriteria cri,  Model model) throws Exception {

		model.addAttribute(service.read(noticeId));
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)

	public String modifyPOST(NoticeVO notice,  SearchCriteria cri, RedirectAttributes rttr) throws Exception {


		logger.info(cri.toString());
		service.modify(notice);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());

		return "redirect:/notice/list";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	
	public void registGET() throws Exception {

		logger.info("regist get ...........");
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)

	public String registPOST(NoticeVO notice,  @RequestParam(name = "fileupload", required = false) MultipartFile file, RedirectAttributes rttr, HttpServletResponse res,
							 HttpServletRequest req) throws Exception {

		logger.info("regist post ...........");
		logger.info(notice.toString());

		service.create(notice);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/notice/list";
	}
	
	@ResponseBody
	@RequestMapping(value = "fileupload")
    public void communityImageUpload(HttpServletRequest req, HttpServletResponse resp, MultipartHttpServletRequest multiFile) throws Exception{
		JsonObject jsonObject = new JsonObject();
		PrintWriter printWriter = null;
		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");
		
		if(file != null) {
			if(file.getSize() >0 && StringUtils.isNotBlank(file.getName())) {
				if(file.getContentType().toLowerCase().startsWith("image/")) {
				    try{
				    	 
			            String fileName = file.getOriginalFilename();
			            byte[] bytes = file.getBytes();
			           
			            String uploadPath = req.getSession().getServletContext().getRealPath("/resources/ckeditor/ckimage"); //저장경로
			            System.out.println("uploadPath:"+uploadPath);

			            File uploadFile = new File(uploadPath);
			            if(!uploadFile.exists()) {
			            	uploadFile.mkdir();
			            }
			            String fileName2 = UUID.randomUUID().toString();
			            uploadPath = uploadPath + "/" + fileName2 +fileName;
			            
			            out = new FileOutputStream(new File(uploadPath));
			            out.write(bytes);
			            
			            printWriter = resp.getWriter();
			            String fileUrl = req.getContextPath() + "/resources/ckeditor/ckimage/" +fileName2 +fileName; //url경로
			            System.out.println("fileUrl :" + fileUrl);
			            JsonObject json = new JsonObject();
			            json.addProperty("uploaded", 1);
			            json.addProperty("fileName", fileName);
			            json.addProperty("url", fileUrl);
			            printWriter.print(json);
			            System.out.println(json);
			 
			        }catch(IOException e){
			            e.printStackTrace();
			        } finally {
			            if (out != null) {
		                    out.close();
		                }
		                if (printWriter != null) {
		                    printWriter.close();
		                }
			        }
				}

			
			}
		}
	}
}
		
	
	











