package spring.ojt.common;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import spring.ojt.entity.BookingDetailEntity;

public class DownloadFileUlti {

	private static XSSFWorkbook workbook;

	private static XSSFSheet sheet;

	private static void createCell(Row row, int columnCount, Object value, CellStyle style) {
		sheet.autoSizeColumn(columnCount);
		Cell cell = row.createCell(columnCount);
		if (value instanceof Integer) {
			cell.setCellValue((Integer) value);

		} else if (value instanceof Boolean) {
			cell.setCellValue((Boolean) value);
		} else if (value instanceof Double) {
			cell.setCellValue((Double) value);
		} else if (value instanceof Float) {
			cell.setCellValue((Float) value);
		} else {
			cell.setCellValue((String) value);
		}
		cell.setCellStyle(style);
	}

	private static void writeDataLines(List<BookingDetailEntity> list) {
		int rowCount = 1;

		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setFontHeight(14);
		style.setFont(font);

		for (BookingDetailEntity entity : list) {
			Row row = sheet.createRow(rowCount++);
			int columnCount = 0;
			createCell(row, columnCount++, entity.getId(), style);
			createCell(row, columnCount++, entity.getRoomEntity().getName(), style);
			createCell(row, columnCount++, entity.getRoomEntity().getHotelEntity().getTen(), style);
			createCell(row, columnCount++, entity.getRoomEntity().getRoomPrice(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getBookingDate().toString(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getCustomersEntity().getFullName(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getCustomersEntity().getMail(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getCustomersEntity().getPhone(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getCustomersEntity().getDob().toString(),
					style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getCustomersEntity().getAddress(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getNumOfAdults(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getNumOfChild(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getQuantity(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getStartDate().toString(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getEndDate().toString(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getServiceEntity().getNameService(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getServiceEntity().getPrice(), style);
			createCell(row, columnCount++,
					entity.getBookingRoomEntity().getServiceEntity().getPromotionEntity().getPercentage(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getTotalPrice(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getBookingStatusEntity().getBsStatus(), style);
			createCell(row, columnCount++, entity.getBookingRoomEntity().getCancel(), style);
		}

	}

	private static void writeHeaderLine() {

		sheet = workbook.createSheet("Users" + System.currentTimeMillis());

		Row row = sheet.createRow(0);
		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();

		font.setBold(true);
		font.setFontHeight(16);
		style.setFont(font);

		createCell(row, 0, "ID", style);
		createCell(row, 1, "Tên Phòng", style);
		createCell(row, 2, "Tên Khách Sạn", style);
		createCell(row, 3, "Giá Phòng", style);
		createCell(row, 4, "BookingDate", style);
		createCell(row, 5, "Họ Tên", style);
		createCell(row, 6, "Email", style);
		createCell(row, 7, "Điện Thoại", style);
		createCell(row, 8, "DOB", style);
		createCell(row, 9, "Địa chỉ", style);
		createCell(row, 10, "Số Người Lớn", style);
		createCell(row, 11, "Số Trẻ Em", style);
		createCell(row, 12, "Số Lượng Phòng", style);
		createCell(row, 13, "Ngày Bắt Đầu", style);
		createCell(row, 14, "Ngày Kết Thúc", style);
		createCell(row, 15, "Tên Dịch Vụ", style);
		createCell(row, 16, "Giá Dịch Vụ", style);
		createCell(row, 17, "Khuyến Mãi Dịch Vụ", style);
		createCell(row, 18, "Tổng Tiền", style);
		createCell(row, 19, "Status", style);
		createCell(row, 20, "Đã huỷ", style);

	}

	private static void export(List<BookingDetailEntity> list, HttpServletResponse response, String sheetName) throws IOException {
		workbook = new XSSFWorkbook();

		writeHeaderLine();
		writeDataLines(list);

		ServletOutputStream outputStream = response.getOutputStream();
		workbook.write(outputStream);
		workbook.close();

		outputStream.close();

	}

	public static void exportToExcel(List<BookingDetailEntity> list, HttpServletResponse response,String sheetName) throws IOException {
		response.setContentType("application/octet-stream");
		DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
		String currentDateTime = dateFormatter.format(new Date());

		String headerKey = "Content-Disposition";
		String headerValue = "attachment; filename=product_" + currentDateTime + ".xlsx";
		response.setHeader(headerKey, headerValue);
        export(list, response, sheetName);    


	}
}
