package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BS.BookBS;
import com.model.Entity.Book;

public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public update() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bid=Integer.parseInt(request.getParameter("bid"));
		String bnm=request.getParameter("bnm");
		String anm=request.getParameter("anm");
		Book b=new Book(bid,bnm,anm);
		BookBS bs=new BookBS();
		bs.UpdateBook(b);
		RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
