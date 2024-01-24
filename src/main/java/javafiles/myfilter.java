package javafiles;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class myfilter implements Filter {

	@Override
	public void destroy() {
		System.out.println("filter destroyed");

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {

		System.out.println("filter implementation starts");

		HttpServletRequest req = (HttpServletRequest) arg0;

		HttpServletResponse res = (HttpServletResponse) arg1;

		HttpSession s = req.getSession();

		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String role = req.getParameter("role");
		System.out.println("Username" + username);
		System.out.println("Password" + password);
		System.out.println("Role" + role);

		if (username.equals(null) || password.equals(null) || (role.equals(null))) {
			res.setContentType("text/html");
			res.getWriter().println("user is not valid");
			res.sendRedirect("login.jsp");
		} else {
			if ((username.equals("dipro") && password.equals("dipro") && role.equals("DIPRO"))
				) {

				System.out.println("before dipro filter");
				s.setAttribute("Username", username);
				s.setAttribute("Password", password);
				s.setAttribute("Role", role);
				System.out.println("----------------------");
				System.out.println("filter dipro executing");
				req.getRequestDispatcher("../jspfile/dipro.jsp").forward(req, res);
				arg2.doFilter(req, res);
				System.out.println("----------------------");
				System.out.println("filter dipro executed");
				System.out.println("----------------------");

			} else {
				if ((username.equals("dc") && password.equals("dc") && role.equals("DC"))
						|| (username.equals("adc") && password.equals("adc") && role.equals("ADC"))
						|| (username.equals("sp") && password.equals("sp") && role.equals("SP"))
						|| (username.equals("sdm") && password.equals("sdm") && role.equals("SDM"))
						|| (username.equals("ctm") && password.equals("ctm") && role.equals("CTM"))
						|| (username.equals("dio") && password.equals("dio") && role.equals("DIO"))) {

					System.out.println("before officers filter");
					s.setAttribute("Username", username);
					s.setAttribute("Password", password);
					s.setAttribute("Role", role);
					System.out.println("----------------------");
					System.out.println("filter officers executing");
					req.getRequestDispatcher("../jspfile/officers.jsp").forward(arg0, arg1);
					//res.flushBuffer();
					arg2.doFilter(req, res);
					System.out.println("----------------------");
					System.out.println("filter officers executed");
					System.out.println("----------------------");

				} else {
					res.setContentType("text/html");
					res.getWriter().println("user is not valid");
					res.sendRedirect("login.jsp");
				}

				res.setContentType("text/html");
				res.getWriter().println("user is not valid");
				res.sendRedirect("login.jsp");
			}
		}
		System.out.println("after filter");
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// System.out.println("filter initalized");
	}
}