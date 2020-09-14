package action;

import javax.servlet.http.*;
import vo.ActionForward_member;

public interface Action {
	public ActionForward_member execute(HttpServletRequest request,HttpServletResponse response) throws Exception;
}
