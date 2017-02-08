package cn.hygj.ycf.dao;

import java.util.List;

public interface DAO {
	boolean add(Object obj);
	List find();
	boolean del(Object obj);
	boolean update(Object obj);
}
