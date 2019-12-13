package trg.talentsprint.starterkit.web;

import java.nio.*;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import trg.talentsprint.starterkit.model.Feedback;
import trg.talentsprint.starterkit.model.Route;
import trg.talentsprint.starterkit.model.User;
import trg.talentsprint.starterkit.service.RouteService;
import trg.talentsprint.starterkit.service.SecurityService;
import trg.talentsprint.starterkit.service.UserService;
import trg.talentsprint.starterkit.validator.UserValidator;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;

	@Autowired
	private UserValidator userValidator;

	@Autowired
	private RouteService rService;

	@Autowired
	public UserController(RouteService rService) {
		this.rService = rService;
	}

	@Value("${upload.location}")
	private String uploadDirectory;

	@GetMapping("/registration")
	public String registration(Model model) {
		model.addAttribute("userForm", new User());

		return "registration";
	}

	@PostMapping("/registration")
	public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
		userValidator.validate(userForm, bindingResult);

		if (bindingResult.hasErrors()) {
			return "registration";
		}

		userService.save(userForm);

		securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

		return "redirect:/welcome";
	}

	@GetMapping("/login")
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "Your username and password is invalid.");

		if (logout != null)
			model.addAttribute("message", "You have been logged out successfully.");

		return "login";
	}

	@GetMapping({ "/", "/welcome" })
	public String welcome(Model model) {
		return "welcome";
	}

	@GetMapping("/addRoute")
	public String addRoute() {
		return "addRoute";
	}

	@PostMapping(value = "{username}/add")
	public String addRouteToDB(@PathVariable("username") String username, Route route,
			@RequestParam(value = "routeName", required = false, defaultValue = "") String routeName,
			@RequestParam(value = "wayOfTravel", required = false, defaultValue = "") String wayOfTravel,
			@RequestParam(value = "keywords", required = false, defaultValue = "") String keywords,
			@RequestParam(value = "aboutThisRoute", required = false, defaultValue = "") String aboutThisRoute,
			@RequestParam(value = "routeFrom", required = false, defaultValue = "") String routeFrom,
			@RequestParam(value = "routeTo", required = false, defaultValue = "") String routeTo,
			@RequestParam(value = "location", required = false, defaultValue = "") String location,
			@RequestParam(value = "placeName", required = false, defaultValue = "") String placeName,
			@RequestParam(value = "aboutThisPlace", required = false, defaultValue = "") String aboutThisPlace,
			@RequestParam("file") MultipartFile[] files) {

		route.setRouteName(routeName);
		route.setWayOfTravel(wayOfTravel);
		route.setKeywords(keywords);
		route.setAboutThisRoute(aboutThisRoute);
		route.setRouteFrom(routeFrom);
		route.setRouteTo(routeTo);
		route.setLocation(location);
		route.setPlaceName(placeName);
		route.setAboutThisPlace(aboutThisPlace);

		StringBuilder fileNames = new StringBuilder();

		for (MultipartFile file : files) {
			//Path fileNameAndPath = Paths.get(uploadDirectory, file.getOriginalFilename());
			Path fileNameAndPath = Paths.get(uploadDirectory, file.getOriginalFilename());
			fileNames.append(file.getOriginalFilename() + " ");
			try {
				Files.write(fileNameAndPath, file.getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		String path = fileNames.toString();
		route.setPath(path);
		rService.save(route);
		return "welcome";
	}

	@GetMapping("/feedback")
	public String feedback(Model model) {
		model.addAttribute("feedback", new Feedback());
		return "feedback";
	}

	@GetMapping("/search")
	public String search(@RequestParam(value = "routeFrom", required = false, defaultValue = "") String routeFrom,
			@RequestParam(value = "routeTo", required = false, defaultValue = "") String routeTo,
			@RequestParam(value = "wayOfTravel", required = false, defaultValue = "") String wayOfTravel, Model model) {
		java.util.List<Route> search = rService.searchByName(routeFrom, routeTo, wayOfTravel);
		model.addAttribute("routes", search);
		return "routeList";
	}
	@GetMapping("/profile")
	public String profile(Model model) {
	
		return "profile";
	}
	@RequestMapping(method = RequestMethod.GET, value = "newItem")
	public String newItem(Model model) {
	    return "navbar";
	}

}