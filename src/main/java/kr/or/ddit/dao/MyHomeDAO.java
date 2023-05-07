package kr.or.ddit.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.vo.AnalysisCompleteVO;
import kr.or.ddit.vo.ConvenienceVO;
import kr.or.ddit.vo.DonganVO;
import kr.or.ddit.vo.HospitalVO;
import kr.or.ddit.vo.MartVO;
import kr.or.ddit.vo.ParkVO;
import kr.or.ddit.vo.SelectElementVO;
import kr.or.ddit.vo.pharmacyVO;

@Mapper
public interface MyHomeDAO {
	/**
	 * 동안구 리스트 조회
	 * @param map
	 * @return
	 */
	public List<DonganVO> selectDonganList(Map<String, String> map);
	
	/**
	 * 동안구 주거현황 통계 조회
	 * @param map
	 * @return
	 */
	public DonganVO selectDonganChart(Map<String, Object> map);
	
	/**
	 * 주거현황 공원 데이터 입력
	 * @param inpark
	 * @return
	 */
	public int insertPark(ParkVO inpark);
	
	/**
	 * 주거현황 마트 데이터 입력
	 * @param inmart
	 * @return
	 */
	public int insertMart(MartVO inmart);
	
	/**
	 * 주거현황 병원 데이터 입력
	 * @param inhos
	 * @return
	 */
	public int insertHos(HospitalVO inhos);
	
	/**
	 * 주거현황 약국 데이터 입력
	 * @param inpharma
	 * @return
	 */
	public int insertPharma(pharmacyVO inpharma);
	
	/**
	 * 주거현황 공원 데이터 조회
	 * @param map
	 * @return
	 */
	public List<ParkVO> selectPark(Map<String, String> map);
	/**
	 * 주거현황 마트 데이터 조회
	 * @param map
	 * @return
	 */
	public List<MartVO> selectMart(Map<String, String> map);
	/**
	 * 주거현황 병원 데이터 조회
	 * @param map
	 * @return
	 */
	public List<HospitalVO> selectHos(Map<String, String> map);
	/**
	 * 주거현황 약국 데이터 조회
	 * @param map
	 * @return
	 */
	public List<pharmacyVO> selectPharma(Map<String, String> map);
	
	
	/**
	 * 주거현황 공원 데이터 삭제
	 * @param parkId
	 * @return
	 */
	public int deletePark(ParkVO parkId);
	/**
	 * 주거현황 마트 데이터 삭제
	 * @param conId
	 * @return
	 */
	public int deleteCon(ConvenienceVO conId);
	/**
	 * 주거현황 병원 데이터 삭제
	 * @param hosId
	 * @return
	 */
	public int deleteHos(HospitalVO hosId);
	/**
	 * 주거현황 약국 데이터 삭제
	 * @param pharmaId
	 * @return
	 */
	public int deletePharma(pharmacyVO pharmaId);
	
	/**
	 * 요소 입력
	 * @param yoso
	 * @return
	 */
	public int insertMyYoso(SelectElementVO yoso);
	
	/**
	 * 요소 조회
	 * @param map
	 * @return
	 */
	public List<SelectElementVO> selectYoso();
	
	/**
	 * 요소 삭제
	 * @param seNo
	 * @return
	 */
	public int deletYoso(SelectElementVO seNo);
	
	//////////////////아파트///////////////////////////
	/**
	 * 아파트, 병원 분석 select
	 * @param map
	 * @return
	 */
	public List<SelectElementVO> selectAptHos(Map<String, String> map);
	/**
	 * 아파트, 대중교통 분석 select
	 * @param map
	 * @return
	 */
	public List<SelectElementVO> selectAptBus(Map<String, String> map);
	/**
	 * 아파트, 마트 분석 select
	 * @param map
	 * @return
	 */
	public List<SelectElementVO> selectAptMart(Map<String, String> map);

	
	//////////////////오피스텔///////////////////////////
	/**
	 * 오피스텔, 병원 분석 select
	 * @param map
	 * @return
	 */
	public List<SelectElementVO> selectOpHos(Map<String, String> map);
	/**
	 * 오피스텔, 대중교통 분석 select
	 * @param map
	 * @return
	 */
	public List<SelectElementVO> selectOpBus(Map<String, String> map);
	/**
	 * 오피스텔, 마트 분석 select
	 * @param map
	 * @return
	 */
	public List<SelectElementVO> selectOpMart(Map<String, String> map);
	
	//////////////////다세대///////////////////////////
	/**
	* 다세대, 병원 분석 select
	* @param map
	* @return
	*/
	public List<SelectElementVO> selectDaHos(Map<String, String> map);
	/**
	 * 다세대, 대중교통 분석 select
	 * @param map
	 * @return
	 */
	public List<SelectElementVO> selectDaBus(Map<String, String> map);
	/**
	 * 다세대, 마트 분석 select
	 * @param map
	 * @return
	 */
	public List<SelectElementVO> selectDaMart(Map<String, String> map);

	
	// 주거적지 분
	public Map<String, List<SelectElementVO>> selectAnalysisComplete(Map<String, String> map);
}
