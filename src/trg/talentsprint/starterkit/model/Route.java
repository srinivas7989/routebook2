package trg.talentsprint.starterkit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Route {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String routeName;
	
	private String routeFrom;
	
	private String routeTo;
	
	private String wayOfTravel;
	
	private String keywords;
	
	private String location;
	
	private String placeName;
	
	private String aboutThisPlace;
	
	private String aboutThisRoute;
	
	private String username;
	
	private String path;

	public Route() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getRouteName() {
		return routeName;
	}

	public void setRouteName(String routeName) {
		this.routeName = routeName;
	}

	public String getRouteFrom() {
		return routeFrom;
	}

	public void setRouteFrom(String routeFrom) {
		this.routeFrom = routeFrom;
	}

	public String getRouteTo() {
		return routeTo;
	}

	public void setRouteTo(String routeTo) {
		this.routeTo = routeTo;
	}

	public String getWayOfTravel() {
		return wayOfTravel;
	}

	public void setWayOfTravel(String wayOfTravel) {
		this.wayOfTravel = wayOfTravel;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}

	public String getAboutThisPlace() {
		return aboutThisPlace;
	}

	public void setAboutThisPlace(String aboutThisPlace) {
		this.aboutThisPlace = aboutThisPlace;
	}

	public String getAboutThisRoute() {
		return aboutThisRoute;
	}

	public void setAboutThisRoute(String aboutThisRoute) {
		this.aboutThisRoute = aboutThisRoute;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	
}
