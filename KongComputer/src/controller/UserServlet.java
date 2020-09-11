package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/add")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        vo.Member member = new vo.Member();
        member.setId(request.getParameter("id"));
        member.setPasswd(request.getParameter("passwd"));
        member.setName(request.getParameter("name"));
        member.setGender(request.getParameter("gender"));
        member.setAddr(request.getParameter("addr"));
        member.setEmail(request.getParameter("email"));
        

        member.setEmail(request.getParameter("email"));
        member.setPasswd(request.getParameter("passwd"));

        dao.MemberDAO dao = new dao.MemberDAO();
        dao.insert(member);

        response.sendRedirect("/daovo/Joinform.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}