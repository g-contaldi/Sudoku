package it.dstech.model;

import java.util.Collection;

public class Cell {

	private int value;

	private Collection<Cell> rowNeighbors;

	private Collection<Cell> columnNeighbors;

	private Collection<Cell> boxNeighbors;

	private Cell nextCell;

	public Cell(int value) {
		this.value = value;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	public Collection<Cell> getRowNeighbors() {
		return rowNeighbors;
	}

	public void setRowNeighbors(Collection<Cell> rowNeighbors) {
		this.rowNeighbors = rowNeighbors;
	}

	public Collection<Cell> getColumnNeighbors() {
		return columnNeighbors;
	}

	public void setColumnNeighbors(Collection<Cell> columnNeighbors) {
		this.columnNeighbors = columnNeighbors;
	}

	public Collection<Cell> getBoxNeighbors() {
		return boxNeighbors;
	}

	public void setBoxNeighbors(Collection<Cell> boxNeighbors) {
		this.boxNeighbors = boxNeighbors;
	}

	public Cell getNextCell() {
		return nextCell;
	}

	public void setNextCell(Cell nextCell) {
		this.nextCell = nextCell;
	}

	public boolean isEmpty() {
		return value == 0;
	}

}
