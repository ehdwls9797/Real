<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Apache POI 이용

Excel 다운로드 형식3개

HSSF < .xls 방식

XSSF < .xlsx

SXSSF < .xlsx (대용량 엑셀 다운로드 이용할때 좋음)

SXSSF 사용하면 장점이 메모리 부하 줄일수있음. 대략 4만건 엑셀 다운로드를 한다면 1000건 찍고 refresh 해서 데이터 부하 줄이면서 엑셀 다운로드하는형식이라고 생각하면됨

POM.xml 에 집어넣거나 .jar 파일 받아서 사용하면될텐데 나는 외부망안되니깐 pom에 넣어서 불러오는건 못할것같구 .jar파일 다운받아가서 lib파일 넣어서 사용해야할듯??

example 파일

/*
public class ExcelWriteService {

    public void excelWrite() throws IOException {
        Workbook wb = null;
        FileOutputStream fout = null;
        String outputFilePath = "/Users/soon/Desktop/poi/out.xlsx";

        try {
            wb = new SXSSFWorkbook();

            Row row;
            Cell cell;
            Sheet sheet;

            String sheetName = WorkbookUtil.createSafeSheetName("sheet1");                        

            sheet = wb.createSheet(sheetName);

            Font fontTitle = wb.createFont();
            fontTitle.setFontHeightInPoints((short) 20);

            CellStyle styleTitle = wb.createCellStyle();            
            styleTitle.setVerticalAlignment(VerticalAlignment.CENTER);
            styleTitle.setAlignment(HorizontalAlignment.CENTER);
            styleTitle.setFont(fontTitle);

            row = sheet.createRow(0);            
            cell = row.createCell(0);
            cell.setCellStyle(styleTitle);
            cell.setCellValue("내역서");           

            sheet.addMergedRegion(new CellRangeAddress(
                    0, //first row (0-based)
                    0, //last row  (0-based)
                    0, //first column (0-based)
                    7  //last column  (0-based)
            ));            

            row = sheet.createRow(2);
            row.createCell(0).setCellValue("수 신 : ");

            row = sheet.createRow(3);
            row.createCell(0).setCellValue("참 조 : ");

            row = sheet.createRow(4);
            row.createCell(0).setCellValue("T E L : ");

            row = sheet.createRow(5);
            row.createCell(0).setCellValue("F A X : ");

            row = sheet.createRow(6);
            row.createCell(0).setCellValue("작성일자 : ");

            row = sheet.createRow(7);
            row.createCell(0).setCellValue("처리일 : ");

            //

            Font fontHeader = wb.createFont();
            fontHeader.setFontHeightInPoints((short) 12);

            CellStyle styleHeader = wb.createCellStyle();
            styleHeader.setBorderTop(BorderStyle.THIN);
            styleHeader.setBorderBottom(BorderStyle.THIN);
            styleHeader.setBorderLeft(BorderStyle.THIN);
            styleHeader.setBorderRight(BorderStyle.THIN);
            styleHeader.setVerticalAlignment(VerticalAlignment.CENTER);
            styleHeader.setAlignment(HorizontalAlignment.CENTER);
            styleHeader.setFont(fontHeader);

            row = sheet.createRow(9);

            cell = row.createCell(0);
            cell.setCellStyle(styleHeader);
            cell.setCellValue("처리일자");

            cell = row.createCell(1);
            cell.setCellStyle(styleHeader);
            cell.setCellValue("오류구분");

            cell = row.createCell(2);
            cell.setCellStyle(styleHeader);
            cell.setCellValue("요청사항");

            cell = row.createCell(3);
            cell.setCellStyle(styleHeader);
            cell.setCellValue("처리사항");

            cell = row.createCell(4);
            cell.setCellStyle(styleHeader);
            cell.setCellValue("요청자");

            cell = row.createCell(5);
            cell.setCellStyle(styleHeader);
            cell.setCellValue("처리자");

            cell = row.createCell(6);
            cell.setCellStyle(styleHeader);
            cell.setCellValue("소요시간");

            cell = row.createCell(7);
            cell.setCellStyle(styleHeader);
            cell.setCellValue("처리상태");

            Font fontBody = wb.createFont();
            fontBody.setFontHeightInPoints((short) 12);

            CellStyle styleBody = wb.createCellStyle();
            styleBody.setBorderTop(BorderStyle.THIN);
            styleBody.setBorderBottom(BorderStyle.THIN);
            styleBody.setBorderLeft(BorderStyle.THIN);
            styleBody.setBorderRight(BorderStyle.THIN);
            styleBody.setVerticalAlignment(VerticalAlignment.CENTER);           
            styleBody.setFont(fontBody);

            for(int j=10 ; j<20 ; j++) {
                row = sheet.createRow(j);

                cell = row.createCell(0);
                cell.setCellStyle(styleBody);
                cell.setCellValue("test");

                cell = row.createCell(1);
                cell.setCellStyle(styleBody);
                cell.setCellValue("test");

                cell = row.createCell(2);
                cell.setCellStyle(styleBody);
                cell.setCellValue("test");

                cell = row.createCell(3);
                cell.setCellStyle(styleBody);
                cell.setCellValue("test");

                cell = row.createCell(4);
                cell.setCellStyle(styleBody);
                cell.setCellValue("test");

                cell = row.createCell(5);
                cell.setCellStyle(styleBody);
                cell.setCellValue("test");

                cell = row.createCell(6);
                cell.setCellStyle(styleBody);
                cell.setCellValue("test");

                cell = row.createCell(7);
                cell.setCellStyle(styleBody);
                cell.setCellValue("test");
            }


            fout = new FileOutputStream(outputFilePath);
            wb.write(fout);


        }catch(Exception e) {
            log.error("excelWrite error : {}", e.getMessage());
        }finally {
            fout.close();
            ((SXSSFWorkbook)wb).dispose();
        }
    }

    public static void main(String[] args) throws IOException {
        System.out.println("ex start");
        ExcelWriteService ew = new ExcelWriteService();
        ew.excelWrite();
        System.out.println("ex end");
    }

}
*/

</body>
</html>