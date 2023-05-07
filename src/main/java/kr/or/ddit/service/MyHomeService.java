package kr.or.ddit.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.AnalysisCompleteVO;
import kr.or.ddit.vo.ConvenienceVO;
import kr.or.ddit.vo.DonganVO;
import kr.or.ddit.vo.HospitalVO;
import kr.or.ddit.vo.MartVO;
import kr.or.ddit.vo.ParkVO;
import kr.or.ddit.vo.SelectElementVO;
import kr.or.ddit.vo.pharmacyVO;

public interface MyHomeService {
	/**
	 * 동안구 리스트 조회
	 * @param map
	 * @return
	 */
	public List<DonganVO> retrieveDonganList(Map<String, String> map);
	
	
	/**
	 * 동안구 주거현황 통계 조회
	 * @param map
	 * @return
	 */
	public DonganVO retrieveDonganChart(Map<String, Object> map);

	
	/**
	 * 주거현황 공원 데이터 입력
	 * @param inpark
	 * @return
	 */
	public int createPark(ParkVO inpark);
	
	/**
	 * 주거현황 마트 데이터 입력
	 * @param inpark
	 * @return
	 */
	public int createMart(MartVO inmart);
	
	/**
	 * 주거현황 병원 데이터 입력
	 * @param inpark
	 * @return
	 */
	public int createHos(HospitalVO inhos);
	
	/**
	 * 주거현황 약국 데이터 입력
	 * @param inpark
	 * @return
	 */
	public int createPharma(pharmacyVO inpharma);
	
	
	/**
	 * 주거현황 공원 데이터 조회
	 * @param separk
	 * @return
	 */
	public List<ParkVO> retrievePart(Map<String, String> map);
	
	/**
	 * 주거현황 마트 데이터 조회
	 * @param semart
	 * @return
	 */
	public List<MartVO> retrieveMart(Map<String, String> map);
	
	/**
	 * 주거현황 병원 데이터 조회
	 * @param sehos
	 * @return
	 */
	public List<HospitalVO> retrieveHos(Map<String, String> map);
	
	/**
	 * 주거현황 약국 데이터 조회
	 * @param sepharma
	 * @return
	 */
	public List<pharmacyVO> retrievePharma(Map<String, String> map);

	/**
	 * 주거현황 공원 데이터 삭제
	 * @param parkId
	 * @return
	 */
	public int removePark(ParkVO parkId);
	/**
	 * 주거현황 마트 데이터 삭제
	 * @param conId
	 * @return
	 */
	public int removeCon(ConvenienceVO conId);
	/**
	 * 주거현황 병원 데이터 삭제
	 * @param hosId
	 * @return
	 */
	public int removeHos(HospitalVO hosId);
	/**
	 * 주거현황 약국 데이터 삭제
	 * @param pharmaId
	 * @return
	 */
	public int removePharma(pharmacyVO pharmaId);
	
	/**
	 * 요소 입력
	 * @param yoso
	 * @return
	 */
	public int createMyYoso(SelectElementVO yoso);
	
	/**
	 * 요소 조회
	 * @param 
	 * @return
	 */
	public List<SelectElementVO> retrieveYoso();
	
	/**
	 * 요소 삭제
	 * @param seNo
	 * @return
	 */
	public int removeYoso(SelectElementVO seNo);
	
	
	/**
	 * 주거적지 분석 select
	 * @param map
	 * @return
	 */
	public Map<String, List<SelectElementVO>> retrieveAnalysisComplete(Map<String, String> map);
	
	

}
