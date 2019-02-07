package Controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Model.Client;
import Model.ClientEI;
import Model.ClientMoral;
import Model.ClientPhysique;
import Model.Vol;
import Repository.ClientRepository;

@Controller
@RequestMapping("/client")
public class ClientController {
	
	@Autowired
	ClientRepository clientRepo;
	
	@GetMapping({"/","/list"})
	public String list(Model model) {
		
		model.addAttribute("client", clientRepo.findAll());
		System.out.println("------------------------------------------------------------------");
		System.out.println(clientRepo.findAll());
		model.addAttribute("clientRepo", clientRepo);
		return"Passager/listPassager";
	}
	
	@GetMapping
	public String delete(@RequestParam(name="id", required=true) Long id, Model model) {
		clientRepo.deleteById(id);
		return"redirect:/client/list";
	}
	
	@GetMapping("/edit")
	public String edit(@RequestParam(name="id", required=true) Long id,Model model) {
		
		return goEdit(clientRepo.findById(id), model);
	}
	
	private String goEdit( Optional<Client> client, Model model) {
		
		model.addAttribute("client", client);
		
		return"Passager/EditPassager";
	}
	
	private String goEdit( Client client, Model model) {
		
		model.addAttribute(client);
		
		return"Passager/EditPassager";
	}
	
	@GetMapping("/addClientEI")
	public String addClientEI(Model model) {
		
		return goEdit(new ClientEI(), model);
	}
	
	@GetMapping("/addClientPhysique")
	public String addClientPhysique(Model model) {
		
		return goEdit(new ClientPhysique(), model);
	}
	
	@GetMapping("/addClientMoral")
	public String addClientMoral(Model model) {
		
		return goEdit(new ClientMoral(), model);
	}
	

}
