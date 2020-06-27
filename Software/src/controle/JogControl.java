package controle;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import modelo.ModelJogador;
import modelo.ModelPartida;
public class JogControl {
	public boolean inserirJogador(ModelJogador mj) {
		boolean retorno = false;
			try {
				Conexao con = new Conexao();
				PreparedStatement ps = con.getCon().prepareStatement("INSERT INTO jogador(nome, idade, cpf, tel, nCamisa, time) VALUES (?,?,?,?,?,?);");
				ps.setString(1,mj.getNome());
				ps.setInt(2,mj.getIdade());
				ps.setString(3,mj.getCpf());
				ps.setString(4,mj.getTel());
				ps.setInt(5,mj.getnCamisa());
				ps.setString(6,mj.getTime());
				if(!ps.execute()) {
					retorno = true;
				}
				con.fecharConexao();
				ps.close();
			}catch(SQLException e) {
				System.out.println("Erro no banco de dados: "+e.getMessage());
			}catch(Exception f) {
				System.out.println("Erro geral no sistema: "+f.getMessage());
			}
			return retorno;
		}
	
	public boolean cadPartida(ModelPartida mp) {
		boolean retorno = false;
		try {
			Conexao con = new Conexao();
			PreparedStatement ps = con.getCon().prepareStatement("INSERT INTO partidas(data, hora, local, nomeTime, timeAdversario, nomeArbitro, nomeApoio,nomeAuxiliar) VALUES(?,?,?,?,?,?,?,?);");
			ps.setString(1,mp.getData());
			ps.setString(2,mp.getHorario());
			ps.setString(3,mp.getLocalidade());
			ps.setString(4,mp.getNomeTime());
			ps.setString(5,mp.getNomeAdversario());
			ps.setString(6,mp.getNomeArbitro());
			ps.setString(7,mp.getNomeApoio());
			ps.setString(8,mp.getNomeAuxiliar());
			if(!ps.execute()) {
				retorno = true;
			}
		}catch(SQLException e){
			System.out.println("Erro no bando de dados: "+e.getMessage());
		}catch(Exception f) {
			System.out.println("Erro geral no sistema: "+f.getMessage());
		}
		return retorno;
	}
	
	public ModelJogador selecionarPorCPF(String cpf) {
		ModelJogador jogador = new ModelJogador();
        try {
        	Conexao con = new Conexao();
			String sql = "SELECT * FROM jogador WHERE cpf = ?";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			ps.setString(1, cpf);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
            	jogador.setCpf(rs.getString("cpf"));
            	jogador.setNome(rs.getString("nome"));
				jogador.setIdade(rs.getInt("idade"));
				jogador.setnCamisa(rs.getInt("nCamisa"));
				jogador.setTel(rs.getString("tel"));
				jogador.setTime(rs.getString("time"));
            }
        } catch (SQLException e) {
    		System.out.println("Erro de SQL: "+e.getMessage());
        }catch(Exception e){
    		System.out.print("Error: "+ e.getMessage());
    		return null;
    	}
        	return jogador;
    }
	
	public ArrayList<ModelJogador> selecionarPorTime(String nomeTime){
		try{
			ArrayList<ModelJogador> lista = null; 
			Conexao con = new Conexao();
			String sql = "SELECT * FROM jogador WHERE time = ?;";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			ps.setString(1, nomeTime);
			if(ps.execute()){ 
				lista = new ArrayList<ModelJogador>();
				ResultSet rs = ps.executeQuery();
				while(rs.next()){ 
					ModelJogador jogador = new ModelJogador();
					jogador.setCpf(rs.getString("cpf"));
	            	jogador.setNome(rs.getString("nome"));
					jogador.setIdade(rs.getInt("idade"));
					jogador.setnCamisa(rs.getInt("nCamisa"));
					jogador.setTel(rs.getString("tel"));
					jogador.setTime(rs.getString("time"));
					lista.add(jogador);
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
	
	public  boolean delete(String cpf){
		boolean retorno = false;
		try {
		Conexao con = new Conexao();
		PreparedStatement ps = con.getCon().prepareStatement("DELETE FROM jogador WHERE cpf = ? ;");
		ps.setString(1, cpf );
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
	
	public boolean update(ModelJogador mj){
		boolean retorno = false;
		try {
		Conexao con = new Conexao();
		PreparedStatement ps = con.getCon().prepareStatement("UPDATE jogador SET  nome = ?,  idade = ?, tel = ?, nCamisa = ?, time = ?   WHERE cpf = ? ;");
		ps.setString(1,mj.getNome());
		ps.setInt(2,mj.getIdade());
		ps.setString(3,mj.getTel());
		ps.setInt(4,mj.getnCamisa());
		ps.setString(5,mj.getTime());
		ps.setString(6, mj.getCpf());
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
