package web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.JoinDao;
import web.dto.Member;
import web.service.face.JoinService;

@Service
public class JoinServiceImpl implements JoinService {

	@Autowired JoinDao joinDao;
	
	@Override
	public void memberInsert(Member member) {
		joinDao.memberInsert(member);
	}

}
