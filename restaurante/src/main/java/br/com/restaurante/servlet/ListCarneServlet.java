package br.com.restaurante.servlet;


import br.com.restaurante.dao.PratoDao;
import br.com.restaurante.model.Prato;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/listar-carnes")
public class ListCarneServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Prato> pratos = new PratoDao().findAllCarnes();

        req.setAttribute("pratos", pratos);

        req.getRequestDispatcher("Carnes.jsp").forward(req, resp);
    }
}
