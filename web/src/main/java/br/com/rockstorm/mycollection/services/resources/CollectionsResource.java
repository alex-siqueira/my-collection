package br.com.rockstorm.mycollection.services.resources;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;
import javax.ws.rs.core.UriInfo;

import com.google.gson.Gson;

@Path ("/collections")
public class CollectionsResource {
	private static List<String> collections = new ArrayList<String>();	
	static {
		collections.add("Books");
		collections.add("Games");
		collections.add("Music");
		collections.add("Photos");
	}
	
    @Context
    private UriInfo context;	
	
	@GET
	@Path("/")
	@Consumes(MediaType.TEXT_HTML)
	@Produces(MediaType.APPLICATION_JSON)	
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
	@Consumes(MediaType.TEXT_HTML)
	@Produces(MediaType.APPLICATION_JSON)	
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
	
	@POST
	@Path("/")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response addCollection(String collection){
		Response response = null;
		
		if (!collection.isEmpty()){
			String name = (String)getValueFromJson(collection, "name");
			collections.add(name);
			response = Response.created(context.getRequestUriBuilder().path("{id}").build(name)).build();
		} else {
			response = Response.status(Status.BAD_REQUEST).build();
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
	
	private Object getValueFromJson(String json, String key){
		Gson gson = new Gson();
		return (gson.fromJson(json, java.util.Map.class).get(key));
	}
}
