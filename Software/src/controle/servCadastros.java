package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.ModelJogador;
import modelo.ModelPartida;
/**
 * Servlet implementation class servCadastros
 */
@WebServlet("/servCadastros")
public class servCadastros extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servCadastros() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ModelJogador mj = new ModelJogador();
		mj.setNomeJogador(request.getParameter("nomeJogador"));
		mj.setIdade(Integer.parseInt(request.getParameter("idade")));
		mj.setCpf(request.getParameter("cpf"));
		mj.setTelefone(Integer.parseInt(request.getParameter("telefone")));
		mj.setNumCamisas(Integer.parseInt(request.getParameter("numCamisa")));
		mj.setNomeTime(request.getParameter("nomeTime"));
		ModelPartida mp = new ModelPartida();
		mp.setData(request.getParameter("data"));
		mp.setHorario(request.getParameter("horario"));
		mp.setLocalidade(request.getParameter("localidade"));
		mp.setNomeTime(request.getParameter("nomeTime"));
		mp.setNomeAdversario(request.getParameter("nomeAdversario"));
		mp.setNomeArbitro(request.getParameter("nomeArbitro"));
		mp.setNomeApoio(request.getParameter("nomeApoio"));
		mp.setNomeAuxiliar(request.getParameter("nomeAuxiliar"));
		if(new JogControl().inserirJogador(mj)) {
			request.getRequestDispatcher("CadJogador.jsp").forward(request,response);
		}else if(new JogControl().cadPartida(mp)) {
			request.getRequestDispatcher("CadPartida.jsp").forward(request,response);
		}else {
			request.getRequestDispatcher("404.jsp").forward(request,response);
		}
	}

}
