package services;

import java.util.List;

import fr.jju.classes.Identity;

public interface IdentityServiceInterface {

	int insertRow(Identity identity);

	List<Identity> getList();

	int deleteIdentity(int id);

	Identity getRowById(int id);

	int updateRow(Identity identity);

}
