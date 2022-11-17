/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servlet;

/**
 *
 * @author havan
 */
public class Menu {
    private int MaMon;
    private String TenMon;
    private String HinhAnh;
    private int GiaMon;
    private String MoTa;
    
    public Menu(){ 
     }
    public Menu( int MaMon, String TenMon,String HinhAnh, int GiaMon, String MoTa){
        this.MaMon= MaMon;
        this.TenMon= TenMon;
        this.HinhAnh= HinhAnh;
        this.GiaMon=GiaMon;
        this.MoTa=MoTa;
       
 }

    public int getMaMon() {
        return MaMon;
    }

    public void setMaMon(int MaMon) {
        this.MaMon = MaMon;
    }

   


    public String getTenMon() {
        return TenMon;
    }

    public void setTenMon(String TenMon) {
        this.TenMon = TenMon;
    }

    public String getHinhAnh() {
        return HinhAnh;
    }

    public void setHinhAnh(String HinhAnh) {
        this.HinhAnh = HinhAnh;
    }

    public int getGiaMon() {
        return GiaMon;
    }

    public void setGiaMon(int GiaMon) {
        this.GiaMon = GiaMon;
    }

    

    public String getMoTa() {
        return MoTa;
    }

    public void setMoTa(String MoTa) {
        this.MoTa = MoTa;
    }

    @Override
    public String toString() {
        return "Menu{" + "MaMon=" + MaMon + ", TenMon=" + TenMon + ", HinhAnh=" + HinhAnh + ", GiaMon=" + GiaMon + ", MoTa=" + MoTa + '}';
    }

    
    
}
