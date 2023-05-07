package kr.or.ddit.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import kr.or.ddit.dao.MyHomeDAO;
import kr.or.ddit.vo.AnalysisCompleteVO;
import kr.or.ddit.vo.ConvenienceVO;
import kr.or.ddit.vo.DonganVO;
import kr.or.ddit.vo.HospitalVO;
import kr.or.ddit.vo.MartVO;
import kr.or.ddit.vo.ParkVO;
import kr.or.ddit.vo.SelectElementVO;
import kr.or.ddit.vo.pharmacyVO;

@Service
public class MyHomeServiceImpl implements MyHomeService {
	private final Logger log = LoggerFactory.getLogger(getClass());
	@Inject
	private MyHomeDAO dao;
	 
	
	/**
	 * 동안구 리스트 조회
	 */
	@Override
	public List<DonganVO> retrieveDonganList(Map<String, String> map) {
		return dao.selectDonganList(map);
	}

	/**
	 * 동안구 주거현황 통계 조회
	 */
	@Override
	public DonganVO retrieveDonganChart(Map<String, Object> map) {
		
		log.info("??????????????????:{}", dao.selectDonganChart(map));
		return dao.selectDonganChart(map);
		
	}

	/**
	 * 주거현황 데이터 입력
	 */
	@Override
	public int createPark(ParkVO inpark) {
		
		return dao.insertPark(inpark);
	}

	@Override
	public int createMart(MartVO inmart) {
		
		return dao.insertMart(inmart);
	}

	@Override
	public int createHos(HospitalVO inhos) {
	
		return dao.insertHos(inhos);
	}

	@Override
	public int createPharma(pharmacyVO inpharma) {
		
		return dao.insertPharma(inpharma);
	}

	/**
	 * 주거환경 데이터 조회
	 */
	@Override
	public List<ParkVO> retrievePart(Map<String, String> map) {
		
		return dao.selectPark(map);
	}

	@Override
	public List<MartVO> retrieveMart(Map<String, String> map) {
		
		return dao.selectMart(map);
	}

	@Override
	public List<HospitalVO> retrieveHos(Map<String, String> map) {
		
		return dao.selectHos(map);
	}

	@Override
	public List<pharmacyVO> retrievePharma(Map<String, String> map) {
		
		return dao.selectPharma(map);
	}
	
	
	/**
	 * 주거현황 데이터 삭제
	 */
	@Override
	public int removePark(ParkVO parkId) {
		
		return dao.deletePark(parkId);
		
	}

	@Override
	public int removeCon(ConvenienceVO conId) {
		
		return dao.deleteCon(conId);
	}

	@Override
	public int removeHos(HospitalVO hosId) {
		
		return dao.deleteHos(hosId);
	}

	@Override
	public int removePharma(pharmacyVO pharmaId) {
		
		return dao.deletePharma(pharmaId);
	}

	
	/**
	 * 요소 입력
	 */
	@Override
	public int createMyYoso(SelectElementVO yoso) {
		
		return dao.insertMyYoso(yoso);
	}
	
	/**
	 * 요소 조회
	 */
	@Override
	public List<SelectElementVO> retrieveYoso() {
		
		return dao.selectYoso();
	}

	@Override
	public int removeYoso(SelectElementVO seNo) {
		
		return dao.deletYoso(seNo);
	}

	/**
	 * 주거적지 분석 
	 */
	@Override
	public Map<String, List<SelectElementVO>> retrieveAnalysisComplete(Map<String, String> map) {
		
		return dao.selectAnalysisComplete(map);
	}
}
