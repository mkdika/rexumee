
package com.mkdika.rexumee.model;

import java.io.Serializable;
import java.util.List;
import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 *
 * @author Maikel Chandika (mkdika@gmail.com)
 */
@Getter
@Setter
@ConfigurationProperties(prefix = "resume")
public class Resume implements Serializable{
    
    String firstName;
    String lastName;
    String pictureUrl;
    String title;
    String bio;
    String interests;
    String address;
    String mobile;
    String email;
    String facebook;
    String twitter;
    String linkedIn;
    String github;
    String skype;
    
    List<Experience> experiences;
    
    List<Education> educations;
    
    List<Certificate> certification;
    
    List<Course> courses;
    
    List<Skill> skills;
    
    List<Software> opensource;
    
    List<Software> proprietary;
    
}
