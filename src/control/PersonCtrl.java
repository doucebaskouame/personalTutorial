package control;

import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

import model.dao.PersonDao;
import model.dto.Person;

public class PersonCtrl {

	private PersonDao pDao = new PersonDao();
	private DataModel persons;
//	private Person new_person;
	private Person newPerson = new Person();
	private Person editPerson=new Person();
	

	public DataModel getPersons() {
		
		if(persons==null){
			persons = new ListDataModel();
			persons.setWrappedData(pDao.selectAll());
		}
		
		return persons;
	}

	
	public String createPerson() {
		pDao.insert(newPerson);
		newPerson = new Person();
		persons.setWrappedData(pDao.selectAll());
		return "list";
	}
	
	public String deletePerson() {
		Person p = (Person) persons.getRowData();
		pDao.delete(p);
		persons.setWrappedData(pDao.selectAll());
		return null;
	}
	
	public String editPerson() {
		editPerson = (Person) persons.getRowData();
		
		//editPerson=newPerson;
		/*********************************/
		pDao.update(/*newPerson*/editPerson);
		persons.setWrappedData(pDao.selectAll());
		return "edit";
	}

	/**
	 * L'opération Update pour faire la mise à jour.	
	 * @return outcome pour la navigation entre les pages. Dans ce cas, c'est "list" pour
	 *         retourner à la page de listing.
	 */
	
	public String updatePerson() {
		pDao.update(editPerson);
		persons.setWrappedData(pDao.selectAll());
		return "list";
	}

	
	public Person getNewPerson() {
		return newPerson;
	}
	
	
	public void setNewPerson(Person newPerson) {
		this.newPerson = newPerson;
	}
	public Person getEditPerson(){
		return editPerson;
	}
	public void setEditPerson(Person editPerson){
		this.editPerson = editPerson;
	}

	
}
