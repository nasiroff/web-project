package com.webApp.util;

import com.webApp.dao.BlogDaoImpl;
import com.webApp.model.Blog;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class PaginationUtil {
//    public static void main(String[] args) throws Exception {
//        String sourceFile = "zipTest";
//        FileOutputStream fos = new FileOutputStream("dirCompressed.zip");
//        ZipOutputStream zipOut = new ZipOutputStream(fos);
//        File fileToZip = new File(sourceFile);
//
//        zipFile(fileToZip, fileToZip.getName(), zipOut);
//        zipOut.close();
//        fos.close();
//    }
//
//    private static void zipFile(File fileToZip, String fileName, ZipOutputStream zipOut) throws IOException {
//        if (fileToZip.isHidden()) {
//            return;
//        }
//        if (fileToZip.isDirectory()) {
//            if (fileName.endsWith("/")) {
//                zipOut.putNextEntry(new ZipEntry(fileName));
//                zipOut.closeEntry();
//            } else {
//                zipOut.putNextEntry(new ZipEntry(fileName + "/"));
//                zipOut.closeEntry();
//            }
//            File[] children = fileToZip.listFiles();
//            for (File childFile : children) {
//                zipFile(childFile, fileName + "/" + childFile.getName(), zipOut);
//            }
//            return;
//        }
//        FileInputStream fis = new FileInputStream(fileToZip);
//        ZipEntry zipEntry = new ZipEntry(fileName);
//        zipOut.putNextEntry(zipEntry);
//        byte[] bytes = new byte[1024];
//        int length;
//        while ((length = fis.read(bytes)) >= 0) {
//            zipOut.write(bytes, 0, length);
//        }
//        fis.close();
//    }
public static void main(String[] args) {
    List<Blog> blogList = new BlogDaoImpl().getAllBlogsAndCommentsCountWithLimit(1000, 0);
    blogList.stream().forEach((i) -> System.out.println(i));
}
}
