package cl.awakelab.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.awakelab.model.ListadoParticipantes;
import cl.awakelab.model.Participante;

/**
 * Servlet implementation class MostrarParticipante
 */
@WebServlet("/MostrarParticipante")
public class MostrarParticipante extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MostrarParticipante() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//recibe un rut, como parámetro del GET.
		String rut = request.getParameter("rut");
		
		//simula traer desde la BD, los datos de participante que viene desde la página index.jsp.
		ListadoParticipantes lista = new ListadoParticipantes();
		Participante p = lista.getParticipante(rut);
		
		//paso al Participante, por medio del request, a l página participante.jsp
		request.setAttribute("participante", p);
		
		getServletContext().getRequestDispatcher("/vistas/participante.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
