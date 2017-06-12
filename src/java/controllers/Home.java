/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cliente;
import model.Funcionario;
import model.Produto;
import model.Venda;
import model.dao.ClienteDAO;
import model.dao.FuncionarioDAO;
import model.dao.ProdutoDAO;
import model.dao.VendaDAO;

/**
 *
 * @author Betinho
 */
public class Home extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, ClassNotFoundException {
            HttpSession session = request.getSession(false);
            Cliente cliente = (Cliente) session.getAttribute("cliente");
            session.setAttribute("cliente", cliente);
            List<Produto> produtos = new ProdutoDAO().getProdutos();
            request.setAttribute("produtos", produtos);
            RequestDispatcher rd = request.getRequestDispatcher("produtos.jsp");  
            rd.forward(request, response);  
        }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Home.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        System.out.println(email + "    " + senha);
        ClienteDAO dao = null;
        FuncionarioDAO f_dao = null;
        try {
            dao = new ClienteDAO();
            f_dao = new FuncionarioDAO();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Home.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (dao.login(email, senha)) {
            Cliente cliente = dao.completaCliente(email);
            HttpSession session = request.getSession();
            session.setAttribute("cliente", cliente);
            List<Produto> produtos = null;
            try {
                produtos = new ProdutoDAO().getProdutos();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Home.class.getName()).log(Level.SEVERE, null, ex);
            }
            request.setAttribute("produtos", produtos);
            RequestDispatcher rd = request.getRequestDispatcher("produtos.jsp");  
            rd.forward(request, response);  
        } else if (f_dao.login(email, senha)) {
            Funcionario funcionario = f_dao.completaFuncionario(email);
            HttpSession session = request.getSession();
            session.setAttribute("funcionario", funcionario);
            List<Produto> produtos = null;
            List<Venda> vendas = null;
            List<Cliente> clientes = null;
            List<Funcionario> funcionarios = null;
            try {
                produtos = new ProdutoDAO().getProdutos();
                vendas = new VendaDAO().getVendas();
                clientes = new ClienteDAO().getClientes();
                funcionarios = new FuncionarioDAO().getFuncionarios();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Home.class.getName()).log(Level.SEVERE, null, ex);
            }
            session.setAttribute("produtos", produtos);
            session.setAttribute("vendas", vendas);
            session.setAttribute("clientes", clientes);
            session.setAttribute("funcionarios", funcionarios);
            RequestDispatcher rd = request.getRequestDispatcher("func_acesso.jsp");  
            rd.forward(request, response);  
        }  else{
            RequestDispatcher rd = request.getRequestDispatcher("login-erro.jsp");
            rd.forward(request, response);  
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
