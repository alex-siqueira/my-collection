package br.com.rockstorm.mycollection.services.resources;

import java.util.Arrays;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import com.google.gson.Gson;

@Path ("/collections")
public class CollectionsResource {
	private List<String> collections = Arrays.asList("Books", "Music", "Photos", "Games");
	
	@GET
	@Path("/")
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
	
	@GET
	@Path("/{id}")
	@Consumes("text/html")
	@Produces("application/json")	
	public Response getCollection(@PathParam("id") String collectionId){
		Response response = null;
		
		String collection = collections.stream().filter(s -> s.equals(collectionId)).findFirst().orElse(null);
		
		if (collection != null){
			response = Response.ok(getJson(collection)).build();
		} else {
			response = Response.status(Status.NOT_FOUND).build();
		}
		return (response);
	}
	
	@Path("/{id}/items")
	public ItemsResource getItemsResource(@PathParam("id") String collectionId){
		return new ItemsResource(collectionId);
	}
	
	private String getJson(Object obj){
		Gson gson = new Gson();
		return (gson.toJson(obj));
	}
}
