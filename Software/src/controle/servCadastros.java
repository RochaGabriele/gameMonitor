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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String metodo = request.getParameter("metodo");
		String destino = null;
		
        JogControl jogControl = new JogControl();
        if (metodo.equalsIgnoreCase("editarJogador")){
        	String id = request.getParameter("id");
        	System.out.println("tudo ok enviado pra edi��o");
            request.setAttribute("jogEdit", jogControl.selecionarPorCPF(id));
            destino = "/editJogador.jsp";
        } else if (metodo.equalsIgnoreCase("excluirJogador")){
        	String id = request.getParameter("id");
        	jogControl.delete(id);
        	System.out.println("Jogador excluido");
        	destino = "/gerenciarJog.jsp";
         
        } else if (metodo.equalsIgnoreCase("selecionarTimes")){
        	TimeControle timeControl = new TimeControle();
        	request.setAttribute("times", timeControl.selecionarTime());
        	System.out.println("Times Selecionados");
        	destino = "/gerenciarJog.jsp";
         	
        }else {
            destino = "/homeApoio.jsp";
        }
        
        request.getRequestDispatcher(destino).forward(request, response);
		
	}

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String metodo = request.getParameter("metodo");
		JogControl jogControl = new JogControl();
		
		ModelJogador mj = new ModelJogador();

		ModelPartida mp = new ModelPartida();
		
		
		String nomeDoTime = request.getParameter("NomeDoTime");
		if(metodo.equalsIgnoreCase("selecionarPorTime")) {
			
			request.setAttribute("jogadores", jogControl.selecionarPorTime(nomeDoTime));
			System.out.println("jogadores Selecionados, enviando para a tabela visual...");
			request.getRequestDispatcher("gerenciarJog.jsp").forward(request,response);
			
		}else if(metodo.equalsIgnoreCase("inserirJogador")) {
			mj.setNome(request.getParameter("nomeJogador"));
			mj.setIdade(Integer.parseInt(request.getParameter("idade")));
			mj.setCpf(request.getParameter("cpf"));
			mj.setTel(request.getParameter("telefone"));
			mj.setnCamisa(Integer.parseInt(request.getParameter("numCamisa")));
			mj.setTime(request.getParameter("nomeTime"));
			
			jogControl.inserirJogador(mj);
			System.out.println("jogador Inserido");
			request.getRequestDispatcher("gerenciarJog.jsp").forward(request,response);
			
		}else if(metodo.equalsIgnoreCase("inserirPartida")) {
			mp.setData(request.getParameter("data"));
			mp.setHora(request.getParameter("horario"));
			mp.setLocal(request.getParameter("localidade"));
			mp.setNomeTime(request.getParameter("nomeTime"));
			mp.setTimeAdversario(request.getParameter("nomeAdversario"));
			mp.setNomeArbitro(request.getParameter("nomeArbitro"));
			mp.setNomeApoio(request.getParameter("nomeApoio"));
			mp.setNomeAuxiliar(request.getParameter("nomeAuxiliar"));
			
			jogControl.cadPartida(mp);
			System.out.println("Partida Inserida");
			request.getRequestDispatcher("homeApoio.jsp").forward(request,response);
		
		}else if(metodo.equalsIgnoreCase("editarJogador")) {
			mj.setCpf(request.getParameter("id"));
			mj.setNome(request.getParameter("nome"));
			mj.setIdade(Integer.parseInt(request.getParameter("idade")));
			mj.setTel(request.getParameter("tel"));
			mj.setnCamisa(Integer.parseInt(request.getParameter("nCamisa")));
			mj.setTime(request.getParameter("time"));
			
			jogControl.update(mj);
			System.out.println("jogador Editado");
			request.getRequestDispatcher("homeApoio.jsp").forward(request,response);
			
		}else {
			System.out.println(metodo);
			System.out.println(nomeDoTime);
			request.getRequestDispatcher("404.jsp").forward(request,response);
		}
	}

}
