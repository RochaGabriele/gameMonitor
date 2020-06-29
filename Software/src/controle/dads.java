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
import javax.servlet.http.HttpSession;  

/**
 * Servlet implementation class dads
 */
@WebServlet("/dads")
public class dads extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dads() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String Armador = request.getParameter("Armador");
		String Alaarmador = request.getParameter("Alaarmador");
		String Ala = request.getParameter("Ala");
		String Alapivo = request.getParameter("Alapivo");
		String Pivo = request.getParameter("Pivo");
		

		HttpSession typed = request.getSession();
		typed.setAttribute("Armador", Armador);
		typed.setAttribute("Alaarmador", Alaarmador);
		typed.setAttribute("Ala", Ala);
		typed.setAttribute("Alapivo", Alapivo);
		typed.setAttribute("Pivo", Pivo);
        response.sendRedirect("jeq.jsp");
	}

}
