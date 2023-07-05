package servlet;


import dao.HocVienDAO;
import model.HocVien;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddHv")
public class AddServlet extends HttpServlet {

    HocVienDAO hocVienDAO = new HocVienDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("/Form.jsp");
    }

    @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String dob = req.getParameter("dob");
            String address = req.getParameter("address");
            String phone = req.getParameter("phone");
            String class_name = req.getParameter("class_name");
            HocVien hocVien = new HocVien(name, email, dob, address, phone, class_name);
            hocVien.setName(name);
            hocVien.setEmail(email);
            hocVien.setDob(dob);
            hocVien.setAddress(address);
            hocVien.setPhone(phone);
            hocVien.setClass_name(class_name);
            hocVienDAO.save(hocVien);
            resp.sendRedirect("/home");

}
}
