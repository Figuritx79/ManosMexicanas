package mx.edu.utez.manosmexicanas.controller;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebFilter(filterName = "Filter", urlPatterns = {
        "/dashboard/*",
        "/Profile/*"
})
public class FilterPage extends HttpFilter {

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    public void destroy() {
        super.destroy();
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
       HttpServletRequest request = (HttpServletRequest)  req;
       HttpServletResponse response = (HttpServletResponse) res;

       HttpSession session = request.getSession(false);
        if (session != null  && session.getAttribute("User") != null ) {
            chain.doFilter(request, response);
        }else {
            response.setStatus(401);
        }
    }
}
