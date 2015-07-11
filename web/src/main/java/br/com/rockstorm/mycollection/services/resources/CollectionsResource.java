package br.com.rockstorm.mycollection.services.resources;

import java.util.Arrays;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import com.google.gson.Gson;

@Path ("/collections")
public class CollectionsResource {
	private List<String> collections = Arrays.asList("Books", "Music", "Photos", "Pictures");

	@GET
	@Consumes("text/html")
	@Produces("application/json")	
	public Response getCollections(){
		Response response = null;
		if (collections != null){
			response = Response.ok(getJson(collections)).build();
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
