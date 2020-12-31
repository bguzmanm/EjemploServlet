package cl.awakelab.model;

import java.util.ArrayList;
import java.util.List;


/***
 * Simula el acceso a una BD.
 * @author brian
 */
public class ListadoParticipantes {

	
	/***
	 * Trae los participantes simulando el acceso a una BD.
	 * @return Lista de Participantes.
	 */
	public List<Participante> getParticipantes(){
		List<Participante> participantes = new ArrayList<Participante>();
		
		
		participantes.add(new Participante("1-1", "Rubén", "Quintana"));
		participantes.add(new Participante("2-2", "Yossie", "Muñoz"));
		participantes.add(new Participante("3-3", "Herman", "Cortez"));
		
		return participantes;
	}
	
	/***
	 * Retorna 1 participante, simulando el acceso a una BD para rescatarlo.
	 * @param rut
	 * @return Participante.
	 */
	public Participante getParticipante(String rut) {
		List<Participante> parts =getParticipantes();
		Participante p = new Participante();
		for(Participante pa : parts) {
			if (pa.getRut().equals(rut)) {
				p = pa;
			}
		}
		
		return p;
		
	}
	
}
