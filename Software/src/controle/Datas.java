package controle;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Datas
 */
@WebServlet("/Datas")
public class Datas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Datas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
String[] paramArray = req.getParameterValues("dados[]");
		
		
		resp.setContentType("text/html");
		PrintWriter writer = resp.getWriter(); 

		writer.print("<link href='css/style.css' rel='stylesheet'>");
		
		writer.print("<video autoplay='autoplay' loop class='bg_video'>\n" + 
				"		<source src='videos/Basketball.mp4' type='video/mp4'>\n" + 
				"	</video>	");
		
		writer.print("<main>");
		writer.print("<h1>Dados Enviados</h1>");
		writer.print("<ol class='list'>");

		for(int i=0; i < paramArray.length; i++) {
			writer.print("<div class='elementExample elementExample_first'></div>");
			writer.print("<li>"); 
				writer.print(paramArray[i]); 
			writer.print("</li>");
			
		}
		
		writer.print("</ol>");
		writer.print("<a href='pontos.jsp'>Voltar</a>"); 
		writer.print("</main>");	
	}

}
