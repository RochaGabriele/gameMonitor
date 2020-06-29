/**
 * autor: Gabriele Rocha
 */

package controle;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import modelo.ModelPartida;
import modelo.Pontos;

public class PartidaControle {
	public ArrayList<ModelPartida> selecionarPartida(){
		try{
			ArrayList<ModelPartida> lista = null; 
			Conexao con = new Conexao();
			String sql = "SELECT * FROM partidas;";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			if(ps.execute()){ 
				lista = new ArrayList<ModelPartida>();
				ResultSet rs = ps.executeQuery();
				while(rs.next()){ 
					ModelPartida partida = new ModelPartida();
					partida.setId(rs.getInt("id"));
					partida.setData(rs.getString("data"));
					partida.setHora(rs.getString("hora"));
					partida.setLocal(rs.getString("local"));
					partida.setNomeTime(rs.getString("nomeTime"));
					partida.setTimeAdversario(rs.getString("timeAdversario"));
					partida.setNomeArbitro(rs.getString("nomeArbitro"));
					partida.setNomeApoio(rs.getString("nomeApoio"));
					partida.setNomeAuxiliar(rs.getString("nomeAuxiliar"));
					lista.add(partida);
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
	
	public ArrayList<ModelPartida> selecionarPartidaPT(String time) {
		ArrayList<ModelPartida> lista = null; 
        try {
        	Conexao con = new Conexao();
        	String sql = "SELECT * FROM partidas WHERE nomeTime=?";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			ps.setString(1, time);
            if(ps.execute()){ 
				lista = new ArrayList<ModelPartida>();
				ResultSet rs = ps.executeQuery();
				while(rs.next()){ 
					ModelPartida partida = new ModelPartida();
					partida.setId(rs.getInt("id"));
					partida.setData(rs.getString("data"));
					partida.setHora(rs.getString("hora"));
					partida.setLocal(rs.getString("local"));
					partida.setNomeTime(rs.getString("nomeTime"));
					partida.setTimeAdversario(rs.getString("timeAdversario"));
					partida.setNomeArbitro(rs.getString("nomeArbitro"));
					partida.setNomeApoio(rs.getString("nomeApoio"));
					partida.setNomeAuxiliar(rs.getString("nomeAuxiliar"));
					lista.add(partida);
				}
				con.fecharConexao();
				return lista;

			}else{
				return lista;
			}
        } catch (SQLException e) {
    		System.out.println("Erro de SQL: "+e.getMessage());
        }catch(Exception e){
    		System.out.print("Error: "+ e.getMessage());
    		return null;
    	}
        	return null;
    }
	
	public ArrayList<ModelPartida> selecionarPartidaPI(int id) {
		ArrayList<ModelPartida> lista = null; 
        try {
        	Conexao con = new Conexao();
        	String sql = "SELECT * FROM partidas WHERE id=?";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			ps.setInt(1, id);
            if(ps.execute()){ 
				lista = new ArrayList<ModelPartida>();
				ResultSet rs = ps.executeQuery();
				while(rs.next()){ 
					ModelPartida partida = new ModelPartida();
					partida.setId(rs.getInt("id"));
					partida.setData(rs.getString("data"));
					partida.setHora(rs.getString("hora"));
					partida.setLocal(rs.getString("local"));
					partida.setNomeTime(rs.getString("nomeTime"));
					partida.setTimeAdversario(rs.getString("timeAdversario"));
					partida.setNomeArbitro(rs.getString("nomeArbitro"));
					partida.setNomeApoio(rs.getString("nomeApoio"));
					partida.setNomeAuxiliar(rs.getString("nomeAuxiliar"));
					lista.add(partida);
				}
				con.fecharConexao();
				return lista;

			}else{
				return lista;
			}
        } catch (SQLException e) {
    		System.out.println("Erro de SQL: "+e.getMessage());
        }catch(Exception e){
    		System.out.print("Error: "+ e.getMessage());
    		return null;
    	}
        	return null;
    }
	
	public ArrayList<Pontos> selecionarTipo(int id, String tipo, int jogador) {
		ArrayList<Pontos> lista = null; 
        try {
        	Conexao con = new Conexao();
        	String sql = "SELECT * FROM pontos WHERE partida=? AND tipo=? AND jogador=?;";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, tipo);
			ps.setInt(3, jogador);
            if(ps.execute()){ 
				lista = new ArrayList<Pontos>();
				ResultSet rs = ps.executeQuery();
				while(rs.next()){ 
					Pontos ponto = new Pontos();
					ponto.setId(rs.getInt("id"));
					ponto.setValorPontos(rs.getInt("valorPontos"));
					ponto.setpSet(rs.getInt("pSet"));
					ponto.setTipo(rs.getString("tipo"));
					ponto.setJogador(rs.getString("jogador"));
					ponto.setPartida(rs.getInt("partida"));
					lista.add(ponto);
				}
				con.fecharConexao();
				return lista;

			}else{
				return lista;
			}
        } catch (SQLException e) {
    		System.out.println("Erro de SQL: "+e.getMessage());
        }catch(Exception e){
    		System.out.print("Error: "+ e.getMessage());
    		return null;
    	}
        	return null;
    }
	
	public ArrayList<Pontos> selPonto(int id){
		try{
			ArrayList<Pontos> lista = null; 
			Conexao con = new Conexao();
			String sql = "SELECT jogador,tipo, SUM(valorPontos) AS ponts FROM pontos WHERE partida=? GROUP BY jogador;";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			ps.setInt(1, id);
			if(ps.execute()){ 
				lista = new ArrayList<Pontos>();
				ResultSet rs = ps.executeQuery();
				while(rs.next()){ 
					Pontos ponto = new Pontos();
					ponto.setJogador(rs.getString("jogador"));
					ponto.setTipo(rs.getString("tipo"));
					ponto.setSoma(rs.getInt("ponts"));
					lista.add(ponto);
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
	
	public ArrayList<Pontos> Caz(int id){
		try{
			ArrayList<Pontos> lista = null; 
			Conexao con = new Conexao();
			String sql = "SELECT jogador, SUM(valorPontos) AS ponts FROM pontos WHERE partida=? GROUP BY jogador ORDER BY ponts DESC;";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			ps.setInt(1, id);
			if(ps.execute()){ 
				lista = new ArrayList<Pontos>();
				ResultSet rs = ps.executeQuery();
				while(rs.next()){ 
					Pontos ponto = new Pontos();
					ponto.setJogador(rs.getString("jogador"));
					ponto.setSoma(rs.getInt("ponts"));
					lista.add(ponto);
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
	
	public ArrayList<Pontos> ma(int id, String typ){
		try{
			ArrayList<Pontos> lista = null; 
			Conexao con = new Conexao();
			String sql = "SELECT SUM(valorPontos) AS ponts FROM pontos WHERE partida=? and tipo=?;";
			PreparedStatement ps = con.getCon().prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, typ);
			if(ps.execute()){ 
				lista = new ArrayList<Pontos>();
				ResultSet rs = ps.executeQuery();
				while(rs.next()){ 
					Pontos ponto = new Pontos();
					ponto.setSoma(rs.getInt("ponts"));
					lista.add(ponto);
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
