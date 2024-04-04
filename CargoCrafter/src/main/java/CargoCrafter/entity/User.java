package CargoCrafter.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
@Entity
@NoArgsConstructor
public class User {

	@Id
	private int id;
	private String name;
	private String email;
	private String password;
	private long mobile;
	
	
}
