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
 * Servlet implementation class ServLis
 */
@WebServlet("/ServLis")
public class ServLis extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServLis() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int partida = Integer.parseInt(request.getParameter("partida"));
		
		PartidaControle partidaControl = new PartidaControle();
		JogControl JogContrl = new JogControl();
		
		request.setAttribute("comparar", JogContrl.selecionarJogador());
		request.setAttribute("uzas", partidaControl.Caz(partida));
		request.setAttribute("liv", partidaControl.ma(partida, "livre"));
		request.setAttribute("peme", partidaControl.ma(partida, "pequena-media"));
		request.setAttribute("lng", partidaControl.ma(partida, "longa"));
				
		request.getRequestDispatcher("lista.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.getRequestDispatcher("lista.jsp").forward(request, response);
	}

}
