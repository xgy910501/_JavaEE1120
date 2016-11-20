package util;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import java.io.IOException;

/**
 * Created by Administrator on 2016/11/20.
 */
//注解方式(省略web.xml中的配置)
@WebFilter(
        urlPatterns = "/*",
        initParams = @WebInitParam(name="encoding",value = "utf-8")
)
public class EncodingFilter implements Filter {

    //解决乱码问题
    private String encoding;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        encoding = filterConfig.getInitParameter("encoding");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
