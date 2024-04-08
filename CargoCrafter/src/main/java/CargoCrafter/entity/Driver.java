package CargoCrafter.entity;

import javax.persistence.Entity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Driver {

	private int driverId;
	private String driverName;
	private long phNumber;
	private String demail;
	private int age;
	private String daddress;
	private String dlNumber;
	private String password;
	
	@Override
	public String toString() {
		return "Driver [driverId=" + driverId + ", driverName=" + driverName + ", phNumber=" + phNumber + ", demail="
				+ demail + ", age=" + age + ", daddress=" + daddress + ", dlNumber=" + dlNumber + ", password="
				+ password + "]";
	}
}
