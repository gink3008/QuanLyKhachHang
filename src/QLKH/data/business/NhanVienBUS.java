package QLKH.data.business;

import java.util.List;

import QLKH.data.dao.NhanVienDAO;
import QLKH.data.model.NhanVien;


public class NhanVienBUS implements BaseBusinessInterface<NhanVien> {

	@Override
	public boolean insert(NhanVien obj) {
		NhanVienDAO nhanviendao = new NhanVienDAO();
		return nhanviendao.insert(obj);
	}

	@Override
	public List<NhanVien> getList(String sql) {
		NhanVienDAO nhanviendao = new NhanVienDAO();
		return nhanviendao.getList(sql);
	}

	@Override
	public boolean delete(NhanVien obj) {
		NhanVienDAO nhanviendao = new NhanVienDAO();
		return nhanviendao.delete(obj);
	}

	@Override
	public boolean update(NhanVien obj) {
		NhanVienDAO nhanviendao = new NhanVienDAO();
		return nhanviendao.update(obj);
	}

	@Override
	public NhanVien getFirst() {
		NhanVienDAO nhanviendao = new NhanVienDAO();
		return nhanviendao.getFirst();
	}

	@Override
	public NhanVien getLast() {
		NhanVienDAO nhanviendao = new NhanVienDAO();
		return nhanviendao.getLast();
	}

	@Override
	public NhanVien getCurrent() {
		NhanVienDAO nhanviendao = new NhanVienDAO();
		return nhanviendao.getCurrent();
	}

	@Override
	public NhanVien getNext() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NhanVien getPrevious() {
		// TODO Auto-generated method stub
		return null;
	}
}
