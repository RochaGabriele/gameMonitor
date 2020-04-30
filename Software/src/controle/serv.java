package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.ModelPartida;
/**
 * Servlet implementation class serv
 */
@WebServlet("/serv")
public class serv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public serv() {
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
		ModelPartida mp = new ModelPartida();
		mp.setData(request.getParameter("data"));
		mp.setHorario(request.getParameter("horario"));
		mp.setLocalidade(request.getParameter("localidade"));
		mp.setNomeTime(request.getParameter("nomeTime"));
		mp.setNomeAdversario(request.getParameter("nomeAdversario"));
		mp.setNomeArbitro(request.getParameter("nomeArbitro"));
		mp.setNomeApoio(request.getParameter("nomeApoio"));
		mp.setNomeAuxiliar(request.getParameter("nomeAuxiliar"));
		if(new JogControl().cadPartida(mp)) {
			request.getRequestDispatcher("CadPartida.jsp").forward(request,response);
		}else {
			request.getRequestDispatcher("404.jsp").forward(request,response);
		}
	}

	}

