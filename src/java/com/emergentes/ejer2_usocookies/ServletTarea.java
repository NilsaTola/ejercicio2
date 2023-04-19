package com.emergentes.ejer2_usocookies;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "ServletTarea", urlPatterns = {"/ServletTarea"})
public class ServletTarea extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        
        if(op.equals("nuevo"))
        {
            response.sendRedirect("formulario.jsp");
        }
        if(op.equals("eliminar"))
        {
            int pos=-1,buscado=-1;
            //eliminar el registro
            int id  = Integer.parseInt(request.getParameter("id"));
            HttpSession ses = request.getSession();
            ArrayList<Tarea> tar = (ArrayList<Tarea>)ses.getAttribute("Tareas");
            
            for(Tarea p : tar)
            {
                pos++;
                if(p.getId()==id)
                {
                    buscado = pos;
                }
            }
            tar.remove(buscado);
            response.sendRedirect("index.jsp"); 
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String descripcion = request.getParameter("descripcion");
        
        Tarea T = new Tarea();
        T.setId(id);
        T.setDescripcion(descripcion);
        
        HttpSession ses = request.getSession();
        ArrayList<Tarea> Tareas = (ArrayList<Tarea>)ses.getAttribute("Tareas");
        Tareas.add(T);
        response.sendRedirect("formulario.jsp");
    }
}
