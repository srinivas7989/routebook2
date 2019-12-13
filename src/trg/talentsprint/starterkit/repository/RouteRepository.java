package trg.talentsprint.starterkit.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import trg.talentsprint.starterkit.model.Route;

@Repository
public interface RouteRepository extends CrudRepository<Route, Long>{

	@Query(value ="select * from route where route_from =?1 || route_to =?2 || way_of_travel =?3", nativeQuery=true)
	public List<Route> searchByName(String routeFrom , String routeTo, String wayOfTravel );
}
