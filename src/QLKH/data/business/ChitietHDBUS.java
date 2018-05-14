spackage QLKH.data.business;

import java.util.ArrayList;
import java.util.List;

import QLKH.data.dao.ChitietHDDao;
import QLKH.data.model.ChiTietHD;

public class ChitietHDBUS implements BaseBusinessInterface<ChiTietHD> {

	@Override
	public boolean insert(ChiTietHD chiTietHD) {
		return new ChitietHDDao().insert(chiTietHD);
	}

	@Override
	public List<ChiTietHD> getList(String sql) {
		List<ChiTietHD> list = new ArrayList<>();
		ChitietHDDao chiTietHDDao = new ChitietHDDao();
		list = chiTietHDDao.getList(sql);
		return list;
	}
	public List<ChiTietHD> getAll() {
		List<ChiTietHD> list = new ArrayList<>();
		ChitietHDDao chitietHDDao = new ChitietHDDao();
		list = chitietHDDao.getAll();
		return list;

	}


	@Override
	public boolean delete(ChiTietHD chitietHD) {
		ChitietHDDao chitietHDDao = new ChitietHDDao();
		return chitietHDDao.delete(chitietHD);
	}

	@Override
	public boolean update(ChiTietHD chiTietHD) {
		ChitietHDDao chitietHDDao = new ChitietHDDao();
		return chitietHDDao.update(chiTietHD);
	}

	@Override
	public ChiTietHD getFirst() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ChiTietHD getLast() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ChiTietHD getCurrent() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ChiTietHD getNext() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ChiTietHD getPrevious() {
		// TODO Auto-generated method stub
		return null;
	}

}
