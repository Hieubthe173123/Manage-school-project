/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.ActivityTime;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class ActivityTimeDBContext extends DBContext {

    public ActivityTime getActivityTimeById(int id) {
        ActivityTime activity = new ActivityTime();
        try {
            String sql = "SELECT [atid],[TimeStart] ,[TimeEnd] FROM [SchoolManagement].[dbo].[ActitvityTime] where atid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                activity.setAtid(rs.getInt("atid"));
                activity.setTimeStart(rs.getString("TimeStart"));
                activity.setTimeEnd(rs.getString("TimeEnd"));
                return activity;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
