/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author havan
 */
public class DBUtils {
    public static void insertUserAccount(Connection conn, UserAccount user) throws SQLException {
        String sql="insert into taikhoan(SoDienThoai,MatKhau) values (?,?)";
        PreparedStatement pstm =conn.prepareStatement(sql);
        
       
        pstm.setString(1,user.getSoDienThoai());
        pstm.setString(2,user.getMatKhau());
        
        
        pstm.executeUpdate();
    }
    public static UserAccount findUser(Connection conn,String SoDienThoai,String MatKhau) throws SQLException{
        String sql="select*from taikhoan where SoDienThoai=? and MatKhau=?";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setString(1,SoDienThoai);
        pstm.setString(2,MatKhau);
        ResultSet rs=pstm.executeQuery();
        
        if(rs.next()){
            UserAccount user=new UserAccount();
            user.setSoDienThoai(rs.getString("SoDienThoai"));
            user.setMatKhau(rs.getString("MatKhau"));
            return user;
        }
        return null;
    }
    public static void insertUserCustomer(Connection conn,String MaKH,String HoTen,String DiaChi,String SoDienThoai,String NgaySinh) throws SQLException {
       String sql="insert into khachhang(MaKH,HoTen,DiaChi,SoDienThoai,NgaySinh) values (?,?,?,?,?)";
        PreparedStatement pstm =conn.prepareStatement(sql);
        pstm.setString(1,MaKH);
        pstm.setString(2,HoTen);
        pstm.setString(3,DiaChi);
        pstm.setString(4,SoDienThoai);
        pstm.setString(5,NgaySinh);
        pstm.executeUpdate();
    }
    public static List<UserCustomer> selectUserCustomer(Connection conn,String SoDienThoai) throws SQLException{
        String sql="select k.MaKH, k.HoTen, k.DiaChi, k.SoDienThoai, k.NgaySinh from khachhang k join taikhoan t where k.SoDienThoai = t.SoDienThoai and k.SoDienThoai=?";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setString(1,SoDienThoai);
        ResultSet rs=pstm.executeQuery();
        List<UserCustomer> list=new ArrayList<UserCustomer>();
        while(rs.next()){
            String MaKH=rs.getString("MaKH");
            String HoTen=rs.getString("HoTen");
            String DiaChi=rs.getString("DiaChi");
            SoDienThoai=rs.getString("SoDienThoai");
            String NgaySinh=rs.getString("NgaySinh");
            UserCustomer userCustomer=new UserCustomer();
            userCustomer.setMaKH(MaKH);
            userCustomer.setHoTen(HoTen);
            userCustomer.setDiaChi(DiaChi);
            userCustomer.setSoDienThoai(SoDienThoai);
            userCustomer.setNgaySinh(NgaySinh);
           
            list.add(userCustomer);
    }
        return list;
}
    public static UserCustomer getserUserCustome(Connection conn,String SoDienThoai) throws SQLException{
    String sql="select*from khachhang where SoDienThoai=?";
    PreparedStatement pstm=conn.prepareStatement(sql);
    pstm.setString(1, SoDienThoai);
    ResultSet rs=pstm.executeQuery();
    UserCustomer usp=new UserCustomer();
    while(rs.next()){
        usp.setMaKH(rs.getString("MaKH"));
        usp.setHoTen(rs.getString("HoTen"));
        usp.setDiaChi(rs.getString("DiaChi"));
        usp.setSoDienThoai(rs.getString("SoDienThoai"));
        usp.setNgaySinh(rs.getString("NgaySinh"));
    }
    return usp;
}
 public static void updateUserCustomer(Connection conn,String MaKH,String HoTen,String DiaChi,String  SoDienThoai,String NgaySinh) throws SQLException{
    String sql="update khachhang set MaKH=?, HoTen=?, DiaChi=?, NgaySinh=? where SoDienThoai=? ";
    PreparedStatement pstm=conn.prepareStatement(sql);
    pstm.setString(1,MaKH);
    pstm.setString(2,HoTen );
    pstm.setString(3,DiaChi);
    pstm.setString(4,NgaySinh);
    pstm.setString(5,SoDienThoai );
    pstm.executeUpdate();
}
 public static List<Menu> selectMenu(Connection conn) throws SQLException {
        String sql = "select MaMon, TenMon, HinhAnh, GiaMon, MoTa from thucdon";
        PreparedStatement pstm = conn.prepareStatement(sql);

        ResultSet rs = pstm.executeQuery();
        List<Menu> list = new ArrayList<Menu>();
        while (rs.next()) {
            int MaMon = rs.getInt("MaMon");
            String TenMon = rs.getString("TenMon");
            String HinhAnh = rs.getString("HinhAnh");
            int GiaMon = rs.getInt("GiaMon");
            String MoTa = rs.getString("MoTa");
            Menu menu = new Menu();
            menu.setMaMon(MaMon);
            menu.setTenMon(TenMon);
            menu.setHinhAnh(HinhAnh);
            menu.setGiaMon(GiaMon);
            menu.setMoTa(MoTa);
            list.add(menu);
        }
        return list;
    }
     public static void insertMenu(Connection conn, Menu user) throws SQLException {
       String sql="insert into thucdon(TenMon,HinhAnh,GiaMon,MoTa) values (?,?,?,?)";
        PreparedStatement pstm =conn.prepareStatement(sql);
        
       
        pstm.setString(1,user.getTenMon());
        pstm.setString(2,user.getHinhAnh());
        pstm.setInt(3,user.getGiaMon());
        pstm.setString(4,user.getMoTa());
        
        pstm.executeUpdate();
    }
   public static Menu getMenu(Connection conn, String MaMon) throws SQLException {
        String sql = "select*from monan where MaMon=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaMon);
        ResultSet rs = pstm.executeQuery();
        Menu usp = new Menu();
        while (rs.next()) {
            usp.setMaMon(rs.getInt("MaMon"));
            usp.setTenMon(rs.getString("TenMon"));
            usp.setHinhAnh(rs.getString("HinhAnh"));
            usp.setGiaMon(rs.getInt("GiaMon"));
            usp.setMoTa(rs.getString("MoTa"));
        }
        return usp;
    }
    public static void updateMenu(Connection conn,String MaMon,String TenMon, String HinhAnh, String GiaMon, String MoTa) throws SQLException {
        String sql = "update monan set TenMon=?, HinhAnh=?, GiaMon=?, MoTa=? where MaMon=? ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, TenMon);
        pstm.setString(2, HinhAnh);
        pstm.setString(3, GiaMon);
        pstm.setString(4, MoTa);
        pstm.setString(5, MaMon);
        pstm.executeUpdate();
    }
     public static List<Menu> searchMenu(Connection conn,String TenMon) throws SQLException{
        String sql= "SELECT * FROM thucdon where TenMon like '%"+TenMon+"%'";
        PreparedStatement pstm=conn.prepareStatement(sql);
  
        ResultSet rs=pstm.executeQuery();
        List<Menu> list=new ArrayList<Menu>();
        while(rs.next()){
            int MaMon=rs.getInt("MaMon");
            TenMon=rs.getString("TenMon");
            String HinhAnh=rs.getString("HinhAnh");
            int GiaMon=rs.getInt("GiaMon");
            String MoTa=rs.getString("MoTa");
           
                      
            Menu Mn=new Menu();
            Mn.setMaMon(MaMon);
            Mn.setTenMon(TenMon);
            Mn.setHinhAnh(HinhAnh);
            Mn.setGiaMon(GiaMon);
            Mn.setMoTa(MoTa);
           
            
            list.add(Mn);
        }
        
        
        return list;
        
    }
   
     public static void deleteMenu(Connection conn, String MaMon) throws SQLException{
        String sql = "delete from thucdon where MaMon = ?";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setString(1,MaMon);
        pstm.executeUpdate();
}
     public static void insertBill(Connection conn, Bill user) throws SQLException {
       String sql="insert into hoadon(SoHoaDon,SoDienThoai,MaMon,SoLuong,ThanhTien) values (?,?,?,?,?)";
        PreparedStatement pstm =conn.prepareStatement(sql);
        
       
        pstm.setString(1,user.getSoHoaDon());
        pstm.setString(2,user.getSoDienThoai());
        pstm.setString(3,user.getMaMon());
        pstm.setString(4,user.getSoLuong());
        pstm.setString(5,user.getThanhTien());
        pstm.executeUpdate();
    }
}
