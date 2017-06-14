package it.dstech.servlet;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.dstech.model.Cell;
import it.dstech.model.Grid;
import it.dstech.service.Checker;
import it.dstech.service.Generator;

@WebServlet("/play")
public class SudokuServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private static final Logger logger = Logger.getLogger(SudokuServlet.class.getName());

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int n;
			if (req.getParameter("n") == null)
				n = 32;
			else
				n = Integer.parseInt(req.getParameter("n"));
			Generator generator = new Generator();
			Grid grid = generator.generate(n);
			int size = grid.getSize();
			int x = 0;
			int[][] number = new int[9][9];
			for (int row = 0; row < size; row++) {
				for (int column = 0; column < size; column++) {
					Cell cell = grid.getCell(row, column);
					number[row][column] = cell.getValue();
					if (cell.getValue() != 0)
						req.setAttribute("cell" + x, cell.getValue());
					x++;
				}
			}
			req.getRequestDispatcher("index.jsp").forward(req, resp);
		} catch (Exception e) {
			logger.warning(e.getMessage());
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int[][] number = new int[9][9];
			int z = 0;
			for (int i = 0; i < 9; i++) {
				for (int j = 0; j < 9; j++) {
					number[i][j] = Integer.parseInt(req.getParameter("cell-" + z));
					z++;
				}
			}
			Checker sudoku = new Checker(number);
			if (sudoku.completed() && sudoku.checkPuzzle()) {
				logger.info("Sudoku completed!");
				resp.sendRedirect("done.jsp");
			} else {
				logger.info("Sudoku NOT completed");
				resp.sendRedirect("error.jsp");
			}
		} catch (Exception e) {
			resp.sendRedirect("error.jsp");
		}
	}

}
