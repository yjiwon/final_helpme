package org.helpme.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.helpme.domain.*;
import org.helpme.service.AdminMemberService;
import org.helpme.service.CommunityService;
import org.helpme.service.NoticeService;
import org.helpme.service.ServiceService;
import org.helpme.domain.SearchCriteria;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
@RequestMapping(value = "/admin/*")
public class AdminMemeberController {

	private static final Logger logger = LoggerFactory.getLogger(AdminMemeberController.class);

	@Inject
	private AdminMemberService adminMemberService;
	@Inject
	private CommunityService CommunityService;
	@Inject
	private ServiceService ServiceService;
	@Inject
	private NoticeService NoticeService;

	// 관리자 화면

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void getIndex() throws Exception {
		logger.info("/index");
	}

	// 01. 회원목록보기
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	
	public void getMemberList(Model model) throws Exception {
		logger.info("get member list");
		//	logger.info(cri.toString());

		List<MemberVO> list = adminMemberService.memberList();

		//	model.addAttribute("list", adminMemberService.listSearchCriteria(cri));
		model.addAttribute("list", list);  // 변수 list의 값을 list 세션에 부여

		//	  PageMaker pageMaker = new PageMaker();
		//	    pageMaker.setCri(cri);

		// pageMaker.setTotalCount(service.listCountCriteria(cri));
		//    pageMaker.setTotalCount(adminMemberService.listSearchCount(cri));

		//    model.addAttribute("pageMaker", pageMaker);

	}

	//03. 회원 상세 조회하기(굳이..)
	@RequestMapping(value = "/memberView", method = RequestMethod.GET)

	public void viewMember(@RequestParam("userId") String userId, Model model) throws Exception {
		logger.info("get member view");

		MemberVO member = adminMemberService.viewMember(userId);
		model.addAttribute("member", member);

	}


	//04. 회원 정보 수정하기
	@RequestMapping(value = "/updateMember", method = RequestMethod.GET)

	public void getUpdateMember(@RequestParam("userId") String userId, Model model) throws Exception {
		// @RequestParam("id")으로 인해, URL주소에 있는 id의 값을 가져와 저장

		logger.info("get member update");

		MemberVO member = adminMemberService.viewMember(userId);
		model.addAttribute("member", member);

	}

	@RequestMapping(value = "/updateMember", method = RequestMethod.POST)

	public String updateMemberPOST(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post member modify");

		vo.setUserId(vo.getUserId().substring(0, vo.getUserId().indexOf(",")));

		adminMemberService.updateMember(vo);
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/admin/memberList";

	}

	//05. 회원 정보 삭제하기
	@RequestMapping(value = "/deleteMember", method = RequestMethod.GET)

	public String deleteMember(@RequestParam("userId") String userId, RedirectAttributes rttr) throws Exception {
		// @RequestParam("id")으로 인해, URL주소에 있는 id의 값을 가져와 userId에 저장

		logger.info("post member delete");

		adminMemberService.deleteMember(userId);
		rttr.addFlashAttribute("msg", "SUCCESS");


		return "redirect:/admin/memberList";
	}

	@RequestMapping(value = "/admin/adminComm", method = RequestMethod.GET)

	public void getAdminComm(Model model) throws Exception {
		logger.info("get community list");

		List<CommunityVO> list = CommunityService.list();

		model.addAttribute("list", list);  // 변수 list의 값을 list 세션에 부여
	}





	@RequestMapping(value = "/admin/adminNotice", method = RequestMethod.GET)

	public void getAdminNotice(Model model) throws Exception {
		logger.info("get Notice list");

		List<NoticeVO> list = NoticeService.listAll();

		model.addAttribute("list", list);  // 변수 list의 값을 list 세션에 부여

	}

	@RequestMapping(value = "/admin/adminSvc", method = RequestMethod.GET)

	public void getAdminSvc(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("get Notice list");

		List<ServiceVO> list = ServiceService.listSearchCriteria(cri);

		model.addAttribute("list", list);  // 변수 list의 값을 list 세션에 부여
	}


	@RequestMapping(value = "/deleteBoard")
	public String deleteBoard(HttpServletRequest request) throws Exception {

		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for(int i=0; i<size; i++) {
			CommunityService.remove(Integer.valueOf(ajaxMsg[i]));
		}
		return "redirect:adminComm";
	}

	@RequestMapping(value = "/deleteSvc")
	public String deleteSvc(HttpServletRequest request) throws Exception {

		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for(int i=0; i<size; i++) {
			ServiceService.remove(Integer.valueOf(ajaxMsg[i]));
		}
		return "redirect:adminSvc";
	}

	@RequestMapping(value = "/remove", method = RequestMethod.GET)

	public String remove(@RequestParam("noticeId") int noticeId, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		NoticeService.remove(noticeId);


		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:adminNotice";
	}
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	
	public void modifyGET(int noticeId, @ModelAttribute("cri") SearchCriteria cri,  Model model) throws Exception {

		model.addAttribute(NoticeService.read(noticeId));
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	
	public String modifyPOST(NoticeVO notice,  SearchCriteria cri, RedirectAttributes rttr) throws Exception {


		logger.info(cri.toString());
		NoticeService.modify(notice);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());

		return "redirect:adminNotice";
	}

}





