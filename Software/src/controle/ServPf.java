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
 * Servlet implementation class ServPf
 */
@WebServlet("/ServPf")
public class ServPf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServPf() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String destino = null;
		Boolean gre = true;
		
		PartidaControle partidaControl = new PartidaControle();
    	request.setAttribute("partidas", partidaControl.selecionarPartida());
    	request.setAttribute("gre", gre);
    	System.out.println("Partidas listadas");
    	String cargo = request.getParameter("cargo");
		if(cargo.equals("Auxiliar")){
			destino = "resumoAuxiliar.jsp";
		}else if(cargo.equals("Tecnico")) {
			destino = "resumoTecnico.jsp";
		}
		
    	request.getRequestDispatcher(destino).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
