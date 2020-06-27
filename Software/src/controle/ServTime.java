package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Time;



@WebServlet("/ServTime")
public class ServTime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ServTime() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String metodo = request.getParameter("metodo");
		String destino = null;
		AtorControle atorControl = new AtorControle();
		if (metodo.equalsIgnoreCase("selecionarTec")){ 
		    	System.out.println("tecnicos selecionados");
		        request.setAttribute("tecnico", atorControl.selecionarTec());
		        destino = "/cadTime.jsp";
		}else {
			destino = "/index.jsp";
		}
    
		request.getRequestDispatcher(destino).forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Time time = new Time();
		TimeControle timeControl = new TimeControle();
		time.setNome(request.getParameter("nome"));
		time.setOrigem(request.getParameter("origem"));
		time.setTecnico(request.getParameter("tec"));
		timeControl.inserirTime(time);
		System.out.println("Time inserido");
		request.getRequestDispatcher("/homeApoio.jsp").forward(request, response);
		
	}

}
