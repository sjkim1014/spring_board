package web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import web.dao.face.LoginDao;
import web.service.face.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired LoginDao loginDao;

	@Override
	public int inMember(Model model) {
		int count = loginDao.isMember(model);
		return count;
	}
}
