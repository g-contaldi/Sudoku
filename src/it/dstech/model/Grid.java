package it.dstech.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

public class Grid {

	private final Cell[][] grid;

	private Grid(Cell[][] grid) {
		this.grid = grid;
	}

	public static Grid of(int[][] grid) {
		verifyGrid(grid);

		Cell[][] cells = new Cell[9][9];
		List<List<Cell>> rows = new ArrayList<>();
		List<List<Cell>> columns = new ArrayList<>();
		List<List<Cell>> boxes = new ArrayList<>();

		for (int i = 0; i < 9; i++) {
			rows.add(new ArrayList<Cell>());
			columns.add(new ArrayList<Cell>());
			boxes.add(new ArrayList<Cell>());
		}

		Cell lastCell = null;
		for (int row = 0; row < grid.length; row++) {
			for (int column = 0; column < grid[row].length; column++) {
				Cell cell = new Cell(grid[row][column]);
				cells[row][column] = cell;

				rows.get(row).add(cell);
				columns.get(column).add(cell);
				boxes.get((row / 3) * 3 + column / 3).add(cell);

				if (lastCell != null) {
					lastCell.setNextCell(cell);
				}
				lastCell = cell;
			}
		}

		for (int i = 0; i < 9; i++) {
			List<Cell> row = rows.get(i);
			for (Cell cell : row) {
				List<Cell> rowNeighbors = new ArrayList<>(row);
				rowNeighbors.remove(cell);
				cell.setRowNeighbors(rowNeighbors);
			}

			List<Cell> column = columns.get(i);
			for (Cell cell : column) {
				List<Cell> columnNeighbors = new ArrayList<>(column);
				columnNeighbors.remove(cell);
				cell.setColumnNeighbors(columnNeighbors);
			}

			List<Cell> box = boxes.get(i);
			for (Cell cell : box) {
				List<Cell> boxNeighbors = new ArrayList<>(box);
				boxNeighbors.remove(cell);
				cell.setBoxNeighbors(boxNeighbors);
			}
		}

		return new Grid(cells);
	}

	public static Grid emptyGrid() {
		int[][] emptyGrid = new int[9][9];
		return Grid.of(emptyGrid);
	}

	private static void verifyGrid(int[][] grid) {
		if (grid == null)
			throw new IllegalArgumentException("grid must not be null");

		if (grid.length != 9)
			throw new IllegalArgumentException("grid must have nine rows");

		for (int[] row : grid) {
			if (row.length != 9) {
				throw new IllegalArgumentException("grid must have nine columns");
			}

			for (int value : row) {
				if (value < 0 || value > 9) {
					throw new IllegalArgumentException("grid must contain values from 0-9");
				}
			}
		}
	}

	public int getSize() {
		return grid.length;
	}

	public Cell getCell(int row, int column) {
		return grid[row][column];
	}

	public boolean isValidValueForCell(Cell cell, int value) {
		return isValidInRow(cell, value) && isValidInColumn(cell, value) && isValidInBox(cell, value);
	}

	private boolean isValidInRow(Cell cell, int value) {
		return !getRowValuesOf(cell).contains(value);
	}

	private boolean isValidInColumn(Cell cell, int value) {
		return !getColumnValuesOf(cell).contains(value);
	}

	private boolean isValidInBox(Cell cell, int value) {
		return !getBoxValuesOf(cell).contains(value);
	}

	private Collection<Integer> getRowValuesOf(Cell cell) {
		List<Integer> rowValues = new ArrayList<>();
		for (Cell neighbor : cell.getRowNeighbors())
			rowValues.add(neighbor.getValue());
		return rowValues;
	}

	private Collection<Integer> getColumnValuesOf(Cell cell) {
		List<Integer> columnValues = new ArrayList<>();
		for (Cell neighbor : cell.getColumnNeighbors())
			columnValues.add(neighbor.getValue());
		return columnValues;
	}

	private Collection<Integer> getBoxValuesOf(Cell cell) {
		List<Integer> boxValues = new ArrayList<>();
		for (Cell neighbor : cell.getBoxNeighbors())
			boxValues.add(neighbor.getValue());
		return boxValues;
	}

	public Optional<Cell> getFirstEmptyCell() {
		Cell firstCell = grid[0][0];
		if (firstCell.isEmpty()) {
			return Optional.of(firstCell);
		}
		return getNextEmptyCellOf(firstCell);
	}

	public Optional<Cell> getNextEmptyCellOf(Cell cell) {
		Cell nextEmptyCell = null;
		while ((cell = cell.getNextCell()) != null) {
			if (!cell.isEmpty()) {
				continue;
			}
			nextEmptyCell = cell;
			break;
		}
		return Optional.ofNullable(nextEmptyCell);
	}

}
