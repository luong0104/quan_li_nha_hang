/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servlet;

/**
 *
 * @author havan
 */
public class Bill {
    private String Id;
    private String SoHoaDon;
    private String SoDienThoai;
    private String MaMon;
    private String SoLuong;
    private String ThanhTien;
    public Bill(){
    }
    public Bill( String Id, String SoHoaDon,String SoDienThoai, String MaMon, String SoLuong, String ThanhTien){
        this.Id= MaMon;
        this.SoHoaDon= SoHoaDon;
        this.SoDienThoai= SoDienThoai;
        this.MaMon=MaMon;
        this.SoLuong=SoLuong;
        this.ThanhTien= ThanhTien;
    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getSoHoaDon() {
        return SoHoaDon;
    }

    public void setSoHoaDon(String SoHoaDon) {
        this.SoHoaDon = SoHoaDon;
    }

    public String getSoDienThoai() {
        return SoDienThoai;
    }

    public void setSoDienThoai(String SoDienThoai) {
        this.SoDienThoai = SoDienThoai;
    }

    public String getMaMon() {
        return MaMon;
    }

    public void setMaMon(String MaMon) {
        this.MaMon = MaMon;
    }

    public String getSoLuong() {
        return SoLuong;
    }

    public void setSoLuong(String SoLuong) {
        this.SoLuong = SoLuong;
    }

    public String getThanhTien() {
        return ThanhTien;
    }

    public void setThanhTien(String ThanhTien) {
        this.ThanhTien = ThanhTien;
    }
    
}
