package services;

import java.util.List;

import fr.jju.classes.Identity;

/**
 * Interface that declares the methods used by IdentityController
 * @author Suiz
 *
 */
public interface IdentityServiceInterface {

	/**
	 * Declaration for identity insertion
	 * @param identity
	 * @return id of the inserted row
	 */
	int insertRow(Identity identity);

	/**
	 * Declaration for displaying the list of contacts
	 * @return List of identities to display
	 */
	List<Identity> getList();

	/**
	 * Declaration for deleteIdentity method
	 * @param id of the row to be deleted
	 * @return id of the deleted row
	 */
	int deleteIdentity(int id);

	/**
	 * Gets Identity by its id. Used for Edit purposes.
	 * @param id of the identity to edit
	 * @return id of the edited identity
	 */
	Identity getRowById(int id);

	/**
	 * Edits the provided identity
	 * @param identity to edit
	 * @return id of the edited identity
	 */
	int updateRow(Identity identity);

}
