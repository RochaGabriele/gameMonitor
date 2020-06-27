package controle;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Ator;
import modelo.Senha;




@WebServlet("/ServAtor")
public class ServAtor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ServAtor() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String metodo = request.getParameter("metodo");
        String destino = "";
        
        AtorControle atorControl = new AtorControle();
        if (metodo.equalsIgnoreCase("editarPerfil")){
       
        	String id = request.getParameter("id");
        	Ator ator = atorControl.selecionarPorCPF(id);
        	System.out.println("dados envidados para edi��o");
            request.setAttribute("userEdit", ator);
            
            if(ator.getCargo().equals("Apoio")){
            	destino = "/editarApoio.jsp";
				
			}else if(ator.getCargo().equals("Auxiliar")){
				destino = "/editarAuxiliar.jsp";
				
			}else if(ator.getCargo().equals("Tecnico")){
				destino = "/editarTecnico.jsp";
				
			}
            
        } else if (metodo.equalsIgnoreCase("selecionarPerfil")){
        	destino = request.getParameter("destino");
        	String id = request.getParameter("id");
        	Ator ator = atorControl.selecionarPorCPF(id); 
        	System.out.println("tudo ok");
            request.setAttribute("user", ator);
            
        }else {
            destino = "/index.jsp";
        }
        
        request.getRequestDispatcher(destino).forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Ator ator = new Ator();
		Senha senha = new Senha();
		AtorControle atorControl = new AtorControle();
		SenhaControle senhaControl = new SenhaControle();
		String destino = "";
		String acao = request.getParameter("metodo");
		ator.setCpf(request.getParameter("cpf"));
		ator.setCargo(request.getParameter("cargo"));
		ator.setNomeUser(request.getParameter("user"));
		ator.setNomeCompleto(request.getParameter("nome"));
		ator.setEmail(request.getParameter("email"));
		ator.setEnd(request.getParameter("end"));
		ator.setTel(request.getParameter("tel"));
		senha.setSenhaAtual(request.getParameter("senha"));
		
		if(acao.equalsIgnoreCase("inserir")) {
			
			atorControl.inserirAtor(ator);
			
			senha.setUserSenha(ator.getCpf());
			
			senhaControl.inserirSenha(senha);
			
			
			destino = "/index.jsp";
		}else if(acao.equalsIgnoreCase("editarDados")) {
		
			atorControl.update(ator);
			System.out.println("Dados editados com sucesso!");
			destino = "/deslogar.jsp";
			
		}else if(acao.equalsIgnoreCase("editarSenha")) {
			senha.setUserSenha(ator.getCpf());
			Senha senhaPassada = senhaControl.selecionarPorUserSenha(senha.getUserSenha());
			senha.setSenhaPassada(senhaPassada.getSenhaAtual());
			senhaControl.updateSenha(senha);
			System.out.println("Senha editada com sucesso!") ;
			System.out.println(senha.getSenhaAtual());
			System.out.println(senha.getSenhaPassada());
			System.out.println(senha.getUserSenha());
			
			destino = "/deslogar.jsp";
		}else {
			destino = "/deslogar.jsp";
			
		}
		request.getRequestDispatcher(destino).forward(request, response);
	}

}
