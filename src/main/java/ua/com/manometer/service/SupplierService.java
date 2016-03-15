package ua.com.manometer.service;

import ua.com.manometer.model.Supplier;

import java.util.List;

public interface SupplierService {

	 void addSupplier(Supplier supplier);

	 List<Supplier> listSupplier();

	 void removeSupplier(Integer id);

    Supplier getSupplier(Integer id);
    Supplier getDefSupplier();


	List<Supplier> listSupplier(Integer page, Integer count);

	Long getSupplierCount();
}
