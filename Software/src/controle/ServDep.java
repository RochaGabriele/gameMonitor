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
 * Servlet implementation class ServDep
 */
@WebServlet("/ServDep")
public class ServDep extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServDep() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Boolean gre = false;
		String destino = null;
		
		String cargo = request.getParameter("cargo");
		int id = Integer.parseInt(request.getParameter("partida"));
					
		PartidaControle partidaControl = new PartidaControle();
		JogControl JogContrl = new JogControl();
    	request.setAttribute("partidas", partidaControl.selecionarPartidaPI(id));
    	request.setAttribute("pontos", JogContrl.selecionarPontos(id));
    	request.setAttribute("id", id);
    	request.setAttribute("comparar", JogContrl.selecionarJogador());
    	request.setAttribute("gre", gre);
    	System.out.println("Partidas listadas");
    	if(cargo.equals("Auxiliar")){
			destino = "resumoAuxiliar.jsp";
		}else if(cargo.equals("Tecnico")) {
			destino = "resumoTecnico.jsp";
		}
		    	
    	
		request.getRequestDispatcher(destino).forward(request, response);
	}

}
