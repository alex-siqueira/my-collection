package br.com.rockstorm.mycollection.services.resources;

import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import com.google.gson.Gson;

public class ItemsResource {
	private String collection = null;
	
	private Map<String, String[]> items = new HashMap<String, String[]>();
	
	public ItemsResource(String collection) {
		this.collection = collection;
		
		items.put("Books", new String[]{"O Principe", "O Codigo DaVinci", "Harry Potter", "Cosmos", "O Hobbit"});
		items.put("Music", new String[]{"Fear of the Dark", "Dois", "Black Album", "The Wall", "The Corrs: Unplugged"});
		items.put("Photos", new String[]{"Ferias 123", "Ferias 124", "New York 102", "Lisboa 43", "Orlando 32"});
		items.put("Games", new String[]{"Mass Effect", "Star Wars Galaxies", "The Elders Scrolls: Skyrim", "Batman Arkham Asyllum", "Star Citizen"});
	}
	
	@GET
	@Path("/")
	@Consumes("text/html")
	@Produces("application/json")	
	public Response getItems(){
		Response response = null;
		if (items.containsKey(collection)){
			response = Response.ok(getJson(items.get(collection))).build();
		} else {
			response = Response.status(Status.NOT_FOUND).build();
		}
		return (response);
	}

	private String getJson(Object obj){
		Gson gson = new Gson();
		return (gson.toJson(obj));
	}
}
