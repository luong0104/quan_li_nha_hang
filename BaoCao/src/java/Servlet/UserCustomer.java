package Servlet;

/**
 *
 * @author havan
 */
public class UserCustomer {
    private String MaKH;
    private String HoTen;
    private String DiaChi;
    private String SoDienThoai;
    private String NgaySinh;
    public UserCustomer(){ 
     }

public UserCustomer( String MaKH, String HoTen,String DiaChi, String SoDienThoai, String NgaySinh){
        this.MaKH= MaKH;
        this.HoTen= HoTen;
        this.DiaChi= DiaChi;
        this.SoDienThoai=SoDienThoai;
        this.NgaySinh=NgaySinh;
 }

    /**
     * @return the MaKH
     */
    public String getMaKH() {
        return MaKH;
    }

    /**
     * @param MaKH the MaKH to set
     */
    public void setMaKH(String MaKH) {
        this.MaKH = MaKH;
    }

    /**
     * @return the HoTen
     */
    public String getHoTen() {
        return HoTen;
    }

    /**
     * @param HoTen the HoTen to set
     */
    public void setHoTen(String HoTen) {
        this.HoTen = HoTen;
    }

    /**
     * @return the DiaChi
     */
    public String getDiaChi() {
        return DiaChi;
    }

    /**
     * @param DiaChi the DiaChi to set
     */
    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    /**
     * @return the SoDienThoai
     */
    public String getSoDienThoai() {
        return SoDienThoai;
    }

    /**
     * @param SoDienThoai the SoDienThoai to set
     */
    public void setSoDienThoai(String SoDienThoai) {
        this.SoDienThoai = SoDienThoai;
    }

    /**
     * @return the NgaySinh
     */
    public String getNgaySinh() {
        return NgaySinh;
    }

    /**
     * @param NgaySinh the NgaySinh to set
     */
    public void setNgaySinh(String NgaySinh) {
        this.NgaySinh = NgaySinh;
    }
 
}
