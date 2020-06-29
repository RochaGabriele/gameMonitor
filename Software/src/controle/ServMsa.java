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

import modelo.Pontos;

/**
 * Servlet implementation class ServMsa
 */
@WebServlet("/ServMsa")
public class ServMsa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServMsa() {
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
		JogControl jogControl = new JogControl();
		Pontos pts = new Pontos();
		
		String destino = null;
		String joga = request.getParameter("jogador");
		String time = request.getParameter("time");
		Boolean red = true;
		
		if(joga == null || joga == "") {
        	JogControl jogoControl = new JogControl();
        	request.setAttribute("jogs", jogoControl.selecionarPorTime(time));
        	request.setAttribute("choo", time);
        	System.out.println("Jogadores listados");
        	
        	PartidaControle partidaControl = new PartidaControle();
        	request.setAttribute("partidas", partidaControl.selecionarPartidaPT(time));
        	System.out.println("Partidas listadas");
        	
        	request.setAttribute("red", red);
        	destino = "ServPont?metodo=selecionarTimes";
        	
        }else{
        	pts.setValorPontos(Integer.parseInt(request.getParameter("valor")));
        	pts.setpSet(Integer.parseInt(request.getParameter("quarto")));
        	pts.setTipo(request.getParameter("tipo"));
        	pts.setJogador(request.getParameter("jogador"));
        	pts.setPartida(Integer.parseInt(request.getParameter("partida")));
			
			
			jogControl.inserirPonto(pts);
			System.out.println("ponto Inserido");
			
			request.getRequestDispatcher("ServDep?cargo=Auxiliar").forward(request,response);
			
		}
		
        request.getRequestDispatcher(destino).forward(request, response);
	}

}
