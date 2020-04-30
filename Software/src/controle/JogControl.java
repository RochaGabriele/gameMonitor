package controle;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modelo.ModelJogador;
import modelo.ModelPartida;
public class JogControl {
	public boolean inserirJogador(ModelJogador mj) {
		boolean retorno = false;
			try {
				Conexao con = new Conexao();
				PreparedStatement ps = con.getCon().prepareStatement("INSERT INTO jogadores VALUES (?,?,?,?,?,?);");
				ps.setString(1,mj.getNomeJogador());
				ps.setInt(2,mj.getIdade());
				ps.setString(3,mj.getCpf());
				ps.setInt(4,mj.getTelefone());
				ps.setInt(5,mj.getNumCamisas());
				ps.setString(6,mj.getNomeTime());
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
			PreparedStatement ps = con.getCon().prepareStatement("INSERT INTO partidas VALUES(,?,?,?,?,?,?,?,?);");
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
}
