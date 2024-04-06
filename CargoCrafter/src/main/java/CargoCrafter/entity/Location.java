package CargoCrafter.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Location {

	@Id
	private int id;
	private String source;
	private String destination;
	private int total_km;
	private int price_per_km;
}
