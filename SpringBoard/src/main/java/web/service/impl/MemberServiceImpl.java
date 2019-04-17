package web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import web.dao.face.MemberDao;
import web.dto.Member;
import web.service.face.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired MemberDao memberDao;
	
	@Override
	public void memberInsert(Member member) {
		memberDao.memberInsert(member);
	}
	
	@Override
	public int isMember(Model model) {
		int count = memberDao.isMember(model);
		return count;
	}

	@Override
	public String getNick(String id) {
		String nick = memberDao.getNick(id);
		return nick;
	}
}
