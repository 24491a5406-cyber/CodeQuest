
package com.codequest;

import java.sql.Connection;

public class TestDB {

    public static void main(String[] args) {

        Connection con = DBConnection.getConnection();

        if (con != null) {
            System.out.println("Connection Test Successful!");

            try {
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

        } else {
            System.out.println("Connection Failed!");
        }
    }
}
