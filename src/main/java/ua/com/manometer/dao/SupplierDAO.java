package ua.com.manometer.dao;

import ua.com.manometer.model.Supplier;

import java.util.List;

public interface SupplierDAO {

    void addSupplier(Supplier supplier);

    List<Supplier> listSupplier();

    void removeSupplier(Integer id);

    Supplier getDefSupplier();

    List<Supplier> listSupplier(Integer page, Integer count);

    Long getSupplierCount();
}


