package controle;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Senha;


public class SenhaControle {

	public boolean inserirSenha(Senha senha) {
		boolean retorno = false;
		try {
			Conexao con = new Conexao();
			PreparedStatement ps = con.getCon().prepareStatement("INSERT INTO senha (senhaAtual, userSenha) VALUES(?,?);");
			ps.setString(1, senha.getSenhaAtual());
			ps.setString(2, senha.getUserSenha());
			
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

	
	public Senha selecionarPorUserSenha(String cpf) {
        Senha senha = new Senha();
        try {
        	Conexao con = new Conexao();
			String sql = "SELECT * FROM senha WHERE userSenha=?";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			ps.setString(1, cpf);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
            	senha.setId(rs.getInt("id"));
            	senha.setSenhaAtual(rs.getString("senhaAtual"));
				senha.setSenhaPassada(rs.getString("senhaPassada"));
				
            }
        } catch (SQLException e) {
    		System.out.println("Erro de SQL: "+e.getMessage());
        }catch(Exception e){
    		System.out.print("Error: "+ e.getMessage());
    		return null;
    	}
        	return senha;
    }
	
	public  boolean delete(int cpf){
		boolean retorno = false;
		try {
		Conexao con = new Conexao();
		PreparedStatement ps = con.getCon().prepareStatement("DELETE FROM senha WHERE userSenha = ? ;");
		ps.setInt(1, cpf);
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
	
	public boolean updateSenha(Senha senha){
		boolean retorno = false;
		try {
		Conexao con = new Conexao();
		PreparedStatement ps = con.getCon().prepareStatement("UPDATE senha SET  senhaAtual = ?, senhaPassada = ?   WHERE userSenha = ? ;");
		ps.setString(1, senha.getSenhaAtual());
		ps.setString(2, senha.getSenhaPassada());
		ps.setString(3, senha.getUserSenha());
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
	
	
}
