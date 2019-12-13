package trg.talentsprint.starterkit.service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import trg.talentsprint.starterkit.model.Route;
import trg.talentsprint.starterkit.repository.RouteRepository;

@Service
public class RouteService {

	private RouteRepository rRepository;
	
	@Autowired
	public RouteService (RouteRepository rRepository) {
		this.rRepository=rRepository;
	}
	
	public Route save(Route route) {
		return rRepository.save(route);
	}
	public List<Route> findAll() {
        return StreamSupport.stream(rRepository.findAll().spliterator(), false)
                .collect(Collectors.toList());
}
	public List<Route>searchByName(String routeFrom,String routeTo,String wayOfTravel){
		return rRepository.searchByName(routeFrom, routeTo, wayOfTravel);
	}
}