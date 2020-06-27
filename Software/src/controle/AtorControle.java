package controle;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.Ator;

public class AtorControle {
	
	public boolean inserirAtor(Ator ator) {
		boolean retorno = false;
		try {
			Conexao con = new Conexao();
			PreparedStatement ps = con.getCon().prepareStatement("INSERT INTO ator (cpf, cargo, nomeUser, nomeCompleto, end, email, tel) VALUES(?,?,?,?,?,?,?);");
			ps.setString(1, ator.getCpf());
			ps.setString(2, ator.getCargo());
			ps.setString(3, ator.getNomeUser());
			ps.setString(4, ator.getNomeCompleto());
			ps.setString(5, ator.getEnd());
			ps.setString(6, ator.getEmail());
			ps.setString(7, ator.getTel());
			
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
	
		
	public Ator selecionarPorCPF(String cpf) {
        Ator ator = new Ator();
        try {
        	Conexao con = new Conexao();
			String sql = "SELECT * FROM ator WHERE cpf=?";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			ps.setString(1, cpf);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
            	ator.setCargo(rs.getString("cargo"));
				ator.setNomeUser(rs.getString("nomeUser"));
				ator.setNomeCompleto(rs.getString("nomeCompleto"));
				ator.setEnd(rs.getString("end"));
				ator.setEmail(rs.getString("email"));
				ator.setTel(rs.getString("tel"));
            }
        } catch (SQLException e) {
    		System.out.println("Erro de SQL: "+e.getMessage());
        }catch(Exception e){
    		System.out.print("Error: "+ e.getMessage());
    		return null;
    	}
        	return ator;
    }
	
	public ArrayList<Ator> selecionarTodos(){
		try{
			ArrayList<Ator> lista = null; 
			Conexao con = new Conexao();
			String sql = "SELECT * FROM ator;";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			if(ps.execute()){ 
				lista = new ArrayList<Ator>();
				ResultSet rs = ps.executeQuery();
				while(rs.next()){ 
					Ator ator = new Ator();
					ator.setCpf(rs.getString("cpf"));
	            	ator.setCargo(rs.getString("cargo"));
					ator.setNomeUser(rs.getString("nomeUser"));
					ator.setNomeCompleto(rs.getString("nomeCompleto"));
					ator.setEnd(rs.getString("end"));
					ator.setEmail(rs.getString("email"));
					ator.setTel(rs.getString("tel"));
					lista.add(ator);
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
	
	public ArrayList<Ator> selecionarTec(){
		try{
			ArrayList<Ator> lista = null; 
			Conexao con = new Conexao();
			String sql = "SELECT cpf, nomeCompleto FROM ator WHERE cargo = 'Tecnico';";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			if(ps.execute()){ 
				lista = new ArrayList<Ator>();
				ResultSet rs = ps.executeQuery();
				while(rs.next()){ 
					Ator ator = new Ator();
					ator.setCpf(rs.getString("cpf"));
					ator.setNomeCompleto(rs.getString("nomeCompleto"));
					lista.add(ator);
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

	public  boolean delete(Ator ator){
		boolean retorno = false;
		try {
		Conexao con = new Conexao();
		PreparedStatement ps = con.getCon().prepareStatement("DELETE FROM ator WHERE cpf = ? ;");
		ps.setString(1, ator.getCpf());
		if(ps.execute()) {
			retorno = true;
		}
		con.fecharConexao();
		}catch(SQLException e) {
			System.out.println("Erro de SQL: "+e.getMessage());
		}catch(Exception e){
			System.out.print("Error: "+ e.getMessage());
		}
		return retorno;
		
	}
	
	public boolean update(Ator ator){
		boolean retorno = false;
		try {
		Conexao con = new Conexao();
		PreparedStatement ps = con.getCon().prepareStatement("UPDATE ator SET  nomeUser = ?,  end= ?, email = ?, tel = ?   WHERE cpf = ? ;");
		ps.setString(1, ator.getNomeUser());
		ps.setString(2, ator.getEnd());
		ps.setString(3, ator.getEmail());
		ps.setString(4, ator.getTel());
		ps.setString(5, ator.getCpf());
		if(ps.execute()) {
			retorno = true;
		}
		con.fecharConexao();
		}catch(SQLException e) {
			System.out.println("Erro de SQL: "+e.getMessage());
		}catch(Exception e){
			System.out.print("Error: "+ e.getMessage());
		}
		return retorno;
		
	}
	
	public boolean login(String cpf, String senha) {
        boolean retorno = false; 
        try {
        	Conexao con = new Conexao();
			String sql = "SELECT * FROM senha WHERE userSenha = ? && senhaAtual = ?;";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			ps.setString(1, cpf);
			ps.setString(2, senha);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
            	if(rs.getString("userSenha").equals(cpf) && rs.getString("senhaAtual").equals(senha)) {
            		retorno = true;
            	}
            }
        } catch (SQLException e) {
    		System.out.println("Erro de SQL: "+e.getMessage());
        }catch(Exception e){
    		System.out.print("Error: "+ e.getMessage());
    	}

        	return retorno;
    }
	
		
}
