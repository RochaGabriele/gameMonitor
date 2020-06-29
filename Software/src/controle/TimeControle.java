package controle;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.Time;

public class TimeControle {
		
		public boolean inserirTime(Time time) {
			boolean retorno = false;
			try {
				Conexao con = new Conexao();
				PreparedStatement ps = con.getCon().prepareStatement("INSERT INTO time (nome, origem, tecnico) VALUES(?,?,?);");
				ps.setString(1, time.getNome());
				ps.setString(2, time.getOrigem());
				ps.setString(3, time.getTecnico());
				
				if(!ps.execute()) {
					retorno = true;
				}
				con.fecharConexao();
			}catch(SQLException e) {
				System.out.println("Erro de SQL: "+e.getMessage());
			}catch(Exception e ) {
				System.out.println("Erro geral: "+e.getMessage());
			}
			return retorno;
		}

	
	
	
	
	public ArrayList<Time> selecionarTime(){
		try{
			ArrayList<Time> lista = null; 
			Conexao con = new Conexao();
			String sql = "SELECT * FROM time;";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			if(ps.execute()){ 
				lista = new ArrayList<Time>();
				ResultSet rs = ps.executeQuery();
				while(rs.next()){ 
					Time time = new Time();
					time.setNome(rs.getString("nome"));
					time.setOrigem(rs.getString("origem"));
					time.setTecnico(rs.getString("tecnico"));
					lista.add(time);
				}
				con.fecharConexao();
				return lista;

			}else{
				return lista;
			}
		}catch(SQLException e) {
				System.out.println("Erro de SQL: "+e.getMessage());
		}catch(Exception e){
			System.out.print("Error: "+ e.getMessage());
			return null;
		}
		return null;

	}
	
	
	
}
