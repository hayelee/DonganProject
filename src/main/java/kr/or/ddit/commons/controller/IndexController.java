package kr.or.ddit.commons.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.dao.MyHomeDAO;
import kr.or.ddit.service.MyHomeService;
import kr.or.ddit.vo.AnalysisCompleteVO;
import kr.or.ddit.vo.ConvenienceVO;
import kr.or.ddit.vo.DonganVO;
import kr.or.ddit.vo.HospitalVO;
import kr.or.ddit.vo.MartVO;
import kr.or.ddit.vo.ParkVO;
import kr.or.ddit.vo.SelectElementVO;
import kr.or.ddit.vo.pharmacyVO;
import lombok.extern.java.Log;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/")
public class IndexController {
	
	private final Logger log = LoggerFactory.getLogger(getClass());
	@Inject
	private MyHomeService service;
	
	@Inject
	private MyHomeDAO dao;
	
	@GetMapping
	public String index() {
		
		return "index";
	}
	// 동안구 좌표 받아올 
	@ResponseBody
	@PostMapping(value="/dongan", produces="application/json;charset=UTF-8")
	public List<DonganVO> donganList(@RequestBody Map<String, String> map) {
		
		List<DonganVO> list = service.retrieveDonganList(map);
		
		return list;
	}

	// 통계 
	@ResponseBody
	@PostMapping(value="/chart", produces="application/json;charset=UTF-8")
	public String donganChart(@RequestBody Map<String, Object> map) throws JsonProcessingException {
		
		log.info("map : {}" , map);
		DonganVO list = service.retrieveDonganChart(map);
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(list);
		log.info("json : {}" , json);
		return json;
		
	}
	
	// 주거현황 공원 입력
	@ResponseBody
	@PostMapping(value="/parkIn", produces="application/json;charset=UTF-8")
	public int createPark(@RequestBody ParkVO inpark) {
		int result = service.createPark(inpark);
		return result;
	}
	// 주거현황 마트 입력
	@ResponseBody
	@PostMapping(value="/martIn", produces="application/json;charset=UTF-8")
	public int createMart(@RequestBody MartVO inmart) {
		int result = service.createMart(inmart);
		return result;
	}
	// 주거현황 병원 입력
	@ResponseBody
	@PostMapping(value="/hosIn", produces="application/json;charset=UTF-8")
	public int createHos(@RequestBody HospitalVO inhos) {
		int result = service.createHos(inhos);
		return result;
	}
	// 주거현황 약국 입력
	@ResponseBody
	@PostMapping(value="/pharmaIn", produces="application/json;charset=UTF-8")
	public int createPharma(@RequestBody pharmacyVO inpharma) {
		int result = service.createPharma(inpharma);
		return result;
	}
	
	// 주거현황 공원 조회
	@ResponseBody
	@PostMapping(value="/parkSelect", produces="application/json;charset=UTF-8")
	public List<ParkVO> selectPark(@RequestBody Map<String, String> map) {
		List<ParkVO> list = service.retrievePart(map);
		return list;
	}
	
	// 주거현황 마트 조회
	@ResponseBody
	@PostMapping(value="/martSelect", produces="application/json;charset=UTF-8")
	public List<MartVO> selectMart(@RequestBody Map<String, String> map) {
		List<MartVO> list = service.retrieveMart(map);
		return list;
	}
	
	// 주거현황 병원 조회
	@ResponseBody
	@PostMapping(value="/hosSelect", produces="application/json;charset=UTF-8")
	public List<HospitalVO> seletcHos(@RequestBody Map<String, String> map) {
		List<HospitalVO> list = service.retrieveHos(map);
		return list;
	}
	
	// 주거현황 약국 조회
	@ResponseBody
	@PostMapping(value="/pharmaSelect", produces="application/json;charset=UTF-8")
	public List<pharmacyVO> selectPharma(@RequestBody Map<String, String> map) {
		List<pharmacyVO> list = service.retrievePharma(map);
		return list;
	}
	
	// 주거현황 공원 삭제
	@ResponseBody
	@PostMapping(value="/parkDelete", produces="application/json;charset=UTF-8")
	public int deletePark(@RequestBody ParkVO parkId) {
		
		log.info("parkID : {}", parkId);
		int result = service.removePark(parkId);
		
		return result;
	}
	// 주거현황 마트 삭제
	@ResponseBody
	@PostMapping(value="/conDelete", produces="application/json;charset=UTF-8")
	public int deleteMart(@RequestBody ConvenienceVO conId) {
		
		int result = service.removeCon(conId);
		
		return result;
	}
	// 주거현황 병원 삭제
	@ResponseBody
	@PostMapping(value="/hosDelete", produces="application/json;charset=UTF-8")
	public int deleteHos(@RequestBody HospitalVO hosId) {
		
		int result = service.removeHos(hosId);
		
		return result;
	}
	// 주거현황 약국 삭제
	@ResponseBody
	@PostMapping(value="/pharmaDelete", produces="application/json;charset=UTF-8")
	public int deletePharma(@RequestBody pharmacyVO pharmaId) {
		
		int result = service.removePharma(pharmaId);
		
		return result;
	}
	
	// 요소 입력
	@ResponseBody
	@PostMapping(value="/yosoIn", produces="application/json;charset=UTF-8")
	public int createMyYoso(@RequestBody SelectElementVO yoso) {
		int result = service.createMyYoso(yoso);
		return result;
	}
	
	// 요소 조회
	@ResponseBody
	@GetMapping(value="/yosoSelect", produces="application/json;charset=UTF-8")
	public List<SelectElementVO> seletcYoso() {
		List<SelectElementVO> list = service.retrieveYoso();
		return list;
	}
	
	// 요소 삭제
	@ResponseBody
	@PostMapping(value="/yosoDelete", produces="application/json;charset=UTF-8")
	public int deleteYoso(@RequestBody SelectElementVO seNo) {
		
		int result = service.removeYoso(seNo);
		
		return result;
	}
	
	// 주거적지 분석 select
	@ResponseBody
	@PostMapping(value="/ACSelect", produces="application/json;charset=UTF-8")
	public Map<String, List<SelectElementVO>> selectAnalysisComylete(@RequestBody Map<String, String> map) {
		
		// aptdao를 다 map에 넣기
		//병원
		List<SelectElementVO> selectAptHos = dao.selectAptHos(map);
		//대중교통
		List<SelectElementVO> selectAptBus = dao.selectAptBus(map);
		//마트
		List<SelectElementVO> selectAptMart = dao.selectAptMart(map);
		
		// opdao를 다 map에 넣기
		// 병원
		List<SelectElementVO> selectOpHos = dao.selectOpHos(map);
		// 대중교통
		List<SelectElementVO> selectOpBus = dao.selectOpBus(map);
		// 마트
		List<SelectElementVO> selectOpMart = dao.selectOpMart(map);
		
		// dadao를 다 map에 넣기
		// 병원
		List<SelectElementVO> selectDaHos = dao.selectDaHos(map);
		// 대중교통
		List<SelectElementVO> selectDaBus = dao.selectDaBus(map);
		// 마트
		List<SelectElementVO> selectDaMart = dao.selectDaMart(map);
		
		
		Map<String, List<SelectElementVO>> data = new HashMap<>();
		
		
		data.put("aptHos",selectAptHos);
		data.put("aptBus",selectAptBus);
		data.put("aptMart",selectAptMart);
		data.put("opHos", selectOpHos);
		data.put("opBus", selectOpBus);
		data.put("opMart", selectOpMart);
		data.put("opMart", selectDaHos);
		data.put("opMart", selectDaBus);
		data.put("opMart", selectDaMart);
		
		return data;
		
	}
	
}
