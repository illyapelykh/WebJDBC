package servlets;

import db.MyDBConnectionUtil;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Illko on 19.05.2017.
 */
@WebServlet(name = "Servlet")
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String setnumber = request.getParameter("setnumber");
        String result = request.getParameter("result");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            MyDBConnectionUtil myDBConnectionUtil = new MyDBConnectionUtil();
            myDBConnectionUtil.save(username, password);
            List<User> all = myDBConnectionUtil.findAll();
            request.setAttribute("users", all);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }


        request.setAttribute("user", username);
        request.setAttribute("number", setnumber);
        //request.setAttribute("result", result);

        request.getRequestDispatcher("/pages/welcome.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
