// MyPageService2.java
package geulrowding.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import geulrowding.a03_dao.MyPageDao2;
import geulrowding.z01_vo.Address;
import geulrowding.z01_vo.Grd_user;
import geulrowding.z01_vo.Paycard_info;

@Service
public class MyPageService2 {
    @Autowired
    private MyPageDao2 myPageDao2;
    public Grd_user getGrd_user(Grd_user sch){
    	if(sch.getU_id()==null) sch.setU_id("");
        return myPageDao2.getGrd_user(sch);
    }
    public String updateGrd_user(Grd_user upt){
		return myPageDao2.updateGrd_user(upt)>0?"수정성공":"수정되지않음";
	}
    
    public Paycard_info getPaycard_info(Paycard_info sch2){
    	if(sch2.getU_id()==null) sch2.setU_id("");
        return myPageDao2.getPaycard_info(sch2);
    }
    
    public String updatePaycard_info(Paycard_info upt2){
		return myPageDao2.updatePaycard_info(upt2)>0?"수정성공":"수정되지않음";
	}
    public Address getAddress(Address sch3){
    	if(sch3.getU_id()==null) sch3.setU_id("");
        return myPageDao2.getAddress(sch3);
    }
    public String updateAddress(Address upt3){
		return myPageDao2.updateAddress(upt3)>0?"수정성공":"수정되지않음";
	}
}
