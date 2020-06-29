/**
 * autor: Gabriele Rocha
 */
package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServPont
 */
@WebServlet("/ServPont")
public class ServPont extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServPont() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String metodo = request.getParameter("metodo");
		String destino = null;
		
        if (metodo.equalsIgnoreCase("selecionarTimes")){
        	TimeControle timeControl = new TimeControle();
        	request.setAttribute("times", timeControl.selecionarTime());
        	System.out.println("Times Selecionados");
        	
        	destino = "/pontos.jsp";
         	
        }else {
            destino = "/cadInfor.jsp";
        }
        request.getRequestDispatcher(destino).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
