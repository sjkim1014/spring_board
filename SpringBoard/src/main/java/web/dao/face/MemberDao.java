package web.dao.face;

import org.springframework.ui.Model;

import web.dto.Member;

public interface MemberDao {

	public void memberInsert(Member member);

	public int isMember(Model model);

	public String getNick(String id);
}
