package net.member.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.commons.action.Action;
import net.commons.action.ActionForward;
import net.member.db.MemberDAO;

public class MemberListAction implements Action{
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ActionForward forward = new ActionForward();
        HttpSession session = request.getSession();
        MemberDAO memberdao = new MemberDAO();
        List memberlist = new ArrayList();
        
        String id=(String)session.getAttribute("id");
        if(id==null){ //아이디가 없으면 로그인 창을 띄움
            forward.setRedirect(true);
            forward.setPath("./MemberLogin.me");
            return forward;
        }else if(!id.equals("admin")){ //관리자가 아니면 그냥 게시판 리스트로 이동
            response.setContentType("text/html;charset=euc-kr");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('관리자가 아닙니다.')");
            out.println("location.href='./BoardList.bo'");
            out.println("</script>");
            out.close();
            return null;
        }
        //dao클래스에서 getmemberlist메소드를 이용 멤버리스트를 받아옴.
        memberlist=memberdao.getMemberList(); 
        if(memberlist==null){ //멤버리스트가 null이면
            System.out.println("회원 목록 읽기 실패");            
            return null;
        }
        request.setAttribute("memberlist", memberlist);
        forward.setRedirect(false);
        forward.setPath("./member/member_list.jsp");
        return forward;
    }
}