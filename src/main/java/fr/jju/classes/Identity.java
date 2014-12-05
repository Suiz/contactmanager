package fr.jju.classes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Identity class that will manage the Identity object. 
 * Objects can contain a first name, last name, and phone number.
 * An id is also included. Default constructors built
 * 
 * @author Suiz
 *
 */
@Entity
public class Identity {
	
	@Id
	@GeneratedValue
	private int id;
	
	@Column(name = "first_name")
	private String firstName;
	
	@Column(name = "last_name")
	private String lastName;
	
	private String phone;

	/**
	 * Getter for id field
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * Setter for id field
	 * @param id of identity
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * Getter for first name field
	 * @return firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * Setter for first name field
	 * @param firstName of identity
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * Getter for last name field
	 * @return lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * Setter for last name field
	 * @param lastName
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * Getter for phone number field
	 * @return phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * Setter for phone number field
	 * @param phone
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

}
