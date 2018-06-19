<!DOCTYPE html>
<html lang="en" >

    <head>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>Resume | ${resume.firstName} ${resume.lastName}</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet" />
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
        <link href="vendor/devicons/css/devicons.min.css" rel="stylesheet" />
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" />

        <!-- Custom styles for this template -->
        <link href="css/resume.min.css" rel="stylesheet" />

    </head>

    <body id="page-top">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
                <span class="d-block d-lg-none">Resume</span>
                <span class="d-none d-lg-block">
                    <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="${resume.pictureUrl}" alt="">
                </span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#experience">Experience</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#education">Education</a>
                    </li>                   
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#courses">Courses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#certification">Certification</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#skills">Skills</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#interests">Interests</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container-fluid p-0">

            <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
                <div class="my-auto">
                    <h1 class="mb-0" >${resume.firstName}
                        <span class="text-primary" >${resume.lastName}</span>
                    </h1>
                    <div class="subheading mb-5">
                        ${resume.title}
                    </div>
                    
                    <p class="mb-5">${resume.bio}</p>

                    <div class="subheading mb-5">    
                        <i class="fa fa-map-marker"></i> <a href='https://www.google.com/maps/place/${resume.address}' target='_blank'>${resume.address}</a> ·   
                        <i class="fa fa-mobile"></i> ${resume.mobile} · 
                        <i class="fa fa-skype"></i> ${resume.skype} · 
                        <i class="fa fa-envelope"></i> <a href="mailto:${resume.email}">${resume.email}</a>                        
                    </div>
                    
                    
                    <ul class="list-inline list-social-icons mb-0">
                        <#if resume.facebook?has_content >
                        <li class="list-inline-item">
                            <a href="http://facebook.com/${resume.facebook}" target="_blank" >
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        </#if >
                        <#if resume.twitter?has_content >
                        <li class="list-inline-item">
                            <a href="http://twitter.com/${resume.twitter}" target="_blank">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        </#if>
                        <#if resume.linkedIn?has_content >
                        <li class="list-inline-item">
                            <a href="http://linkedin.com/in/${resume.linkedIn}" target="_blank">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        </#if>
                        <#if resume.github?has_content >
                        <li class="list-inline-item">
                            <a href="http://github.com/${resume.github}" target="_blank">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                       </#if>
                    </ul>
                </div>
            </section>

            <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
                <div class="my-auto">
                    <h2 class="mb-5">Experience</h2>

                    <#list resume.experiences as exp >
                    <div class="resume-item d-flex flex-column flex-md-row mb-5">
                        <div class="resume-content mr-auto">
                            <h3 class="mb-0">${exp.title}</h3>
                            <div class="subheading mb-3"><a href='${exp.website}' target='_blank'>${exp.company}</a></div>
                            <p>${exp.description}</p>
                            <p><b>Tech:</b> ${exp.tech}</p>
                        </div>
                        <div class="resume-date text-md-right">
                            <span class="text-primary">${exp.period}</span>
                        </div>
                    </div>
                    </#list>

                </div>
            </section>

            <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
                <div class="my-auto">
                    <h2 class="mb-5">Education</h2>

                    <#list resume.educations as edu >
                    <div class="resume-item d-flex flex-column flex-md-row mb-5">
                        <div class="resume-content mr-auto">
                            <h3 class="mb-0"><a href='${edu.website}' target='_blank'>${edu.institution}</a></h3>
                            <div class="subheading mb-3">${edu.title}</div>
                            <div>${edu.description}</div>
                            <p>GPA: ${edu.gpa}</p>
                        </div>
                        <div class="resume-date text-md-right">
                            <span class="text-primary">${edu.period}</span>
                        </div>
                    </div>
                    </#list>                  
                </div>
            </section>

            <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="courses">
                <div class="my-auto">
                    <h2 class="mb-5">Courses</h2>

                    <#list resume.courses as cou >
                    <div class="resume-item d-flex flex-column flex-md-row mb-5">
                        <div class="resume-content mr-auto">
                            <h4 class="mb-0">${cou.title}</h4>
                            <div class="subheading mb-3"><a href='${cou.website}' target='_blank'>${cou.institution}</a></div>                            
                        </div>
                        <div class="resume-date text-md-right">
                            <span class="text-primary">${cou.year}</span>
                        </div>
                    </div>
                    </#list>                  
                </div>
            </section>

            <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="certification">
                <div class="my-auto">
                    <h2 class="mb-5">Certification</h2>

                    <#list resume.certification as cert >
                    <div class="resume-item d-flex flex-column flex-md-row mb-5">
                        <div class="resume-content mr-auto">
                            <h4 class="mb-0"><a href='${cert.url}' target='_blank'>${cert.title}</a></h4>
                        </div>
                        <div class="resume-date text-md-right">
                            <span class="text-primary">${cert.period}</span>
                        </div>
                    </div>
                    </#list>

                </div>
            </section>

            <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="skills">
                <div class="my-auto">
                    <h2 class="mb-5">Skills</h2>
                    
                     <ul class="fa-ul mb-0">
                        <#list resume.skills as skl >
                        <li >
                            <i class="fa-li fa fa-circle"></i>
                             <div class="resume-content mr-auto">
                                <div>${skl.subject}</div>                                                          
                                <br/>
                            </div>                                                                 
                        </li>
                        </#list>
                    </ul>                   
                </div>
            </section>

            <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">
                <div class="my-auto">
                    <h2 class="mb-5">Interests</h2>
                    <p>${resume.interests}</p>                    
                </div>
            </section>

            <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="portfolio">
                <div class="my-auto">
                    <h2 class="mb-5">Portfolio</h2>
                    <h3 class="mb-5">Open Source</h3>
                    <ul class="fa-ul mb-0">
                        <#list resume.opensource as oss >
                        <li>
                            <i class="fa-li fa fa-circle"></i>   
                            <div class="resume-content mr-auto">
                                <h4 class="mb-0"><a href='${oss.url}' target='_blank'>${oss.title}</a></h4>                           
                                <div>${oss.description}</div>
                                <br/>
                            </div>                                        
                        </li>                       
                        </#list>
                    </ul>
                    <h3 class="mb-5">Proprietary</h3>
                    <ul class="fa-ul mb-0">
                        <#list resume.proprietary as pro >
                        <li>
                            <i class="fa-li fa fa-circle"></i>   
                            <div class="resume-content mr-auto">
                                <#if pro.url?has_content >
                                    <h4 class="mb-0"><a href='${pro.url}' target='_blank'>${pro.title}</a></h4> 
                                <#else>
                                    <h4 class="mb-0">${pro.title}</h4> 
                                </#if>                                                        
                                <div>${pro.description}</div>
                                <br/>
                            </div>                                        
                        </li>                       
                        </#list>
                    </ul>
                    
                </div>
            </section>

        </div>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/resume.min.js"></script>

    </body>

</html>
