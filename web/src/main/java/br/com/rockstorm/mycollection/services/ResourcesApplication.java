package br.com.rockstorm.mycollection.services;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

import br.com.rockstorm.mycollection.services.resources.CollectionsResource;

@ApplicationPath("/resources")
public class ResourcesApplication extends Application{
	private Set<Class<?>> resourceClasses;
	
	public ResourcesApplication() {
		resourceClasses = new HashSet<Class<?>>();
		resourceClasses.add(CollectionsResource.class);
	}
			
	@Override
	public Set<Class<?>> getClasses() {
		return (Collections.unmodifiableSet(resourceClasses));
	}
}
