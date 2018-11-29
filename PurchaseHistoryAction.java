package com.internousdev.casablanca.action;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.casablanca.dao.MCategoryDAO;
import com.internousdev.casablanca.dao.PurchaseHistoryInfoDAO;
import com.internousdev.casablanca.dto.MCategoryDTO;
import com.internousdev.casablanca.dto.PurchaseHistoryInfoDTO;
import com.opensymphony.xwork2.ActionSupport;


public class PurchaseHistoryAction extends ActionSupport implements SessionAware {
	private List<PurchaseHistoryInfoDTO> purchaseHistoryInfoDtoList;
	private Map<String,Object> session;

	public String execute() {
		String result = ERROR;
		if(Objects.equals(session.get("logined"),"1")) {
		PurchaseHistoryInfoDAO purchaseHistoryInfoDAO = new PurchaseHistoryInfoDAO();
		purchaseHistoryInfoDtoList = purchaseHistoryInfoDAO.getPurchaseHistoryList(String.valueOf(session.get("loginId")));
		Iterator<PurchaseHistoryInfoDTO> iterator = purchaseHistoryInfoDtoList.iterator();
		if(!(iterator.hasNext())) {
			purchaseHistoryInfoDtoList = null;
		}
		result = SUCCESS;
		} else {
			result = "timeout";
		}
		if(!session.containsKey("mCategoryDtoList")){
			MCategoryDAO mCategoryDAO = new MCategoryDAO();
			List<MCategoryDTO> mCategoryDtoList = mCategoryDAO.getMCategoryList();
			session.put("mCategoryDtoList", mCategoryDtoList);
		}
		return result;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public List<PurchaseHistoryInfoDTO> getPurchaseHistoryInfoDtoList() {
		return purchaseHistoryInfoDtoList;
	}
}
