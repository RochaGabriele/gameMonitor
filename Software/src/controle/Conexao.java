package controle;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
public class Conexao {
	private Connection con;
	public void setCon(Connection e){
		this.con = e;
	}
	public Connection getCon() {
		return this.con;
	}
	
	public void fecharConexao() {
		try {
			this.getCon().close();
		}catch(SQLException e) {
			System.out.println("Erro de SQL: "+e.getMessage());
		}catch(Exception e ) {
			System.out.println("Erro geral: "+e.getMessage());
		}
	}
	
	
	public Conexao() {
		try {
			String host = "localhost";
			String user = "root";
			String pwd = "";
			String bd = "basquete";
			Class.forName("com.mysql.cj.jdbc.Driver");
			this.setCon( DriverManager.getConnection("jdbc:mysql://"+host+"/"+bd+"?useTimezone=true&serverTimezone=UTC",user,pwd));
		}catch(SQLException e) {
			System.out.println("Erro de SQL: "+e.getMessage());
		}catch(Exception e ) {
			System.out.println("Erro geral: "+e.getMessage());
		}
	}
}

