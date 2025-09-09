2025-09-09 13:45:23,063 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.BackendApplicationTests]: BackendApplicationTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2025-09-09 13:45:23,207 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.BackendApplicationTests
2025-09-09 13:45:23,705 INFO o.s.b.StartupInfoLogger [main] Starting BackendApplicationTests using Java 19.0.2 with PID 10970 (started by bolan in /home/bolan/Bureau/mecenat/mecenat-backend/spring/backend-tests)
2025-09-09 13:45:23,706 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2025-09-09 13:45:23,706 INFO o.s.b.SpringApplication [main] The following 1 profile is active: "test"
2025-09-09 13:45:24,388 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:45:24,389 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2025-09-09 13:45:24,430 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:24,432 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:24,434 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:24,435 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 38 ms. Found 0 MongoDB repository interfaces.
2025-09-09 13:45:24,720 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:45:24,722 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2025-09-09 13:45:24,785 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 57 ms. Found 3 JPA repository interfaces.
2025-09-09 13:45:25,378 WARN c.h.l.StandardLoggerFactory$StandardLogger [main] Hazelcast is starting in a Java modular environment (Java 9 and newer) but without proper access to required Java packages. Use additional Java arguments to provide Hazelcast access to Java internal API. The internal API access is used to get the best performance results. Arguments to be used:
 --add-modules java.se --add-exports java.base/jdk.internal.ref=ALL-UNNAMED --add-opens java.base/java.lang=ALL-UNNAMED --add-opens java.base/java.nio=ALL-UNNAMED --add-opens java.base/sun.nio.ch=ALL-UNNAMED --add-opens java.management/sun.management=ALL-UNNAMED --add-opens jdk.management/com.sun.management.internal=ALL-UNNAMED
2025-09-09 13:45:25,465 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] 
	+       +  o    o     o     o---o o----o o      o---o     o     o----o o--o--o
	+ +   + +  |    |    / \       /  |      |     /         / \    |         |   
	+ + + + +  o----o   o   o     o   o----o |    o         o   o   o----o    |   
	+ +   + +  |    |  /     \   /    |      |     \       /     \       |    |   
	+       +  o    o o       o o---o o----o o----o o---o o       o o----o    o   
2025-09-09 13:45:25,465 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] Copyright (c) 2008-2021, Hazelcast, Inc. All Rights Reserved.
2025-09-09 13:45:25,465 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] Hazelcast Platform 5.0-BETA-1 (20210713 - e8e010a) starting at [172.20.10.2]:5701
2025-09-09 13:45:25,465 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] Cluster name: dev
2025-09-09 13:45:25,466 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] Jet is disabled. Enable it by setting the "hz.jet.enabled" property to true.
2025-09-09 13:45:25,901 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] Using Multicast discovery
2025-09-09 13:45:25,908 WARN c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] CP Subsystem is not enabled. CP data structures will operate in UNSAFE mode! Please note that UNSAFE mode will not provide strong consistency guarantees.
2025-09-09 13:45:26,336 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] Diagnostics disabled. To enable add -Dhazelcast.diagnostics.enabled=true to the JVM arguments.
2025-09-09 13:45:26,342 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] [172.20.10.2]:5701 is STARTING
2025-09-09 13:45:28,730 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] 

Members {size:1, ver:1} [
	Member [172.20.10.2]:5701 - 803f8f00-43d4-432a-88a9-e4d14ad55766 this
]

2025-09-09 13:45:28,758 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] [172.20.10.2]:5701 is STARTED
2025-09-09 13:45:29,038 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2025-09-09 13:45:29,137 INFO o.h.Version [main] HHH000412: Hibernate ORM core version [WORKING]
2025-09-09 13:45:29,143 INFO o.h.c.Environment [main] HHH000406: Using bytecode reflection optimizer
2025-09-09 13:45:29,395 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-09 13:45:29,413 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2025-09-09 13:45:29,447 INFO c.z.h.HikariDataSource [main] HikariPool-1 - Starting...
2025-09-09 13:45:29,960 INFO c.z.h.p.HikariPool [main] HikariPool-1 - Added connection conn0: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2025-09-09 13:45:29,964 INFO c.z.h.HikariDataSource [main] HikariPool-1 - Start completed.
2025-09-09 13:45:30,520 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-09 13:45:31,456 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2025-09-09 13:45:31,545 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2025-09-09 13:45:31,909 INFO o.s.d.j.r.q.QueryEnhancerFactory [main] Hibernate is in classpath; If applicable, HQL parser will be used.
2025-09-09 13:45:32,429 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.UserRepository
2025-09-09 13:45:32,801 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.TokenRepository
2025-09-09 13:45:32,891 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.ActivationHashRepository
2025-09-09 13:45:33,145 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2025-09-09 13:45:33,283 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@67908d, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@11dcb397, org.springframework.security.web.context.SecurityContextHolderFilter@58c4f4d3, org.springframework.security.web.header.HeaderWriterFilter@598480ea, org.springframework.security.web.authentication.logout.LogoutFilter@b219dfb, com.setup.backend.configs.security.JwtAuthenticationFilter@4096c199, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@336fa259, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@55302853, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@2403b94f, org.springframework.security.web.session.SessionManagementFilter@2301f222, org.springframework.security.web.access.ExceptionTranslationFilter@5b45853, org.springframework.security.web.access.intercept.AuthorizationFilter@463e6a81]
2025-09-09 13:45:34,058 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='68c0135d610e9d0939520cba', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
com.mongodb.MongoSocketOpenException: Exception opening socket
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:73)
	at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:204)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:199)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:159)
	at java.base/java.lang.Thread.run(Thread.java:1589)
Caused by: java.net.ConnectException: Connexion refusée
	at java.base/sun.nio.ch.Net.pollConnect(Native Method)
	at java.base/sun.nio.ch.Net.pollConnectNow(Net.java:672)
	at java.base/sun.nio.ch.NioSocketImpl.timedFinishConnect(NioSocketImpl.java:535)
	at java.base/sun.nio.ch.NioSocketImpl.connect(NioSocketImpl.java:585)
	at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:327)
	at java.base/java.net.Socket.connect(Socket.java:666)
	at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107)
	at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:82)
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:68)
	... 4 common frames omitted
2025-09-09 13:45:34,069 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.11.0-26-generic"}, "platform": "Java/Oracle Corporation/19.0.2+7-44"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@63bad0cd, com.mongodb.Jep395RecordCodecProvider@456d17fa]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2025-09-09 13:45:34,270 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2025-09-09 13:45:34,297 INFO o.s.b.StartupInfoLogger [main] Started BackendApplicationTests in 10.903 seconds (process running for 15.353)
2025-09-09 13:45:34,614 INFO c.s.b.s.i.DBInitializationServiceImpl [main] admin token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkB0ZXN0LmNvbSIsImlhdCI6MTc1NzQxODMzNCwiZXhwIjoxNzU3NDc4MzM0fQ.uFNtteTnRr51AHdzwHA1VQ3o3jsuHN2A6kVOvxwkpQ0
2025-09-09 13:45:34,687 INFO c.s.b.s.i.DBInitializationServiceImpl [main] User token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyQHRlc3QuY29tIiwiaWF0IjoxNzU3NDE4MzM0LCJleHAiOjE3NTc0NzgzMzR9.tW1orZMrllsrg9UTQkEIcCQjJ4d8sahOiVPx1yUBIB0
2025-09-09 13:45:34,759 INFO c.s.b.s.i.DBInitializationServiceImpl [main] Enterprise token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlbnRlcnByaXNlQHRlc3QuY29tIiwiaWF0IjoxNzU3NDE4MzM0LCJleHAiOjE3NTc0NzgzMzR9.ohS8qXoxuTysx0aJanwz3HTBmgar9FFqW_AC_V6qRR8
2025-09-09 13:45:34,831 INFO c.s.b.s.i.DBInitializationServiceImpl [main] association token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhc3NvY2lhdGlvbkB0ZXN0LmNvbSIsImlhdCI6MTc1NzQxODMzNCwiZXhwIjoxNzU3NDc4MzM0fQ.T94XgRuLZM-3RMo_yrcPWw4Ek7y7kYP4QWorxSI59nc
2025-09-09 13:45:34,862 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.controllers.unit_tests.AuthenticationControllerTests]: AuthenticationControllerTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2025-09-09 13:45:34,887 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.controllers.unit_tests.AuthenticationControllerTests
2025-09-09 13:45:34,908 INFO o.s.b.StartupInfoLogger [main] Starting AuthenticationControllerTests using Java 19.0.2 with PID 10970 (started by bolan in /home/bolan/Bureau/mecenat/mecenat-backend/spring/backend-tests)
2025-09-09 13:45:34,908 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2025-09-09 13:45:34,908 INFO o.s.b.SpringApplication [main] No active profile set, falling back to 1 default profile: "default"
2025-09-09 13:45:34,995 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:45:34,995 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2025-09-09 13:45:35,012 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:35,013 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:35,013 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:35,013 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 17 ms. Found 0 MongoDB repository interfaces.
2025-09-09 13:45:35,321 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2025-09-09 13:45:35,353 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@499d53e9, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@5db589e2, org.springframework.security.web.context.SecurityContextHolderFilter@7b05c69a, org.springframework.security.web.header.HeaderWriterFilter@8f771e1, org.springframework.security.web.csrf.CsrfFilter@ff53d9b, org.springframework.security.web.authentication.logout.LogoutFilter@326610c9, org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter@7713b8b1, org.springframework.security.web.authentication.ui.DefaultLoginPageGeneratingFilter@311e0b59, org.springframework.security.web.authentication.ui.DefaultLogoutPageGeneratingFilter@5e51751c, org.springframework.security.web.authentication.www.BasicAuthenticationFilter@216e0a8f, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@5d3a2584, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@2d51a9b, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@f3a262b, org.springframework.security.web.access.ExceptionTranslationFilter@5011f42c, org.springframework.security.web.access.intercept.AuthorizationFilter@6efe5013]
2025-09-09 13:45:35,395 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,396 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,397 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:45:35,406 INFO o.s.b.StartupInfoLogger [main] Started AuthenticationControllerTests in 0.514 seconds (process running for 16.462)
2025-09-09 13:45:35,421 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,421 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,422 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:45:35,563 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.controllers.unit_tests.UserControllerTests]: UserControllerTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2025-09-09 13:45:35,571 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.controllers.unit_tests.UserControllerTests
2025-09-09 13:45:35,596 INFO o.s.b.StartupInfoLogger [main] Starting UserControllerTests using Java 19.0.2 with PID 10970 (started by bolan in /home/bolan/Bureau/mecenat/mecenat-backend/spring/backend-tests)
2025-09-09 13:45:35,597 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2025-09-09 13:45:35,597 INFO o.s.b.SpringApplication [main] No active profile set, falling back to 1 default profile: "default"
2025-09-09 13:45:35,684 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:45:35,685 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2025-09-09 13:45:35,696 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:35,696 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:35,697 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:35,697 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 11 ms. Found 0 MongoDB repository interfaces.
2025-09-09 13:45:35,785 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2025-09-09 13:45:35,799 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@546b7b02, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@c2cdbfd, org.springframework.security.web.context.SecurityContextHolderFilter@7463c3a3, org.springframework.security.web.header.HeaderWriterFilter@1703cc2, org.springframework.security.web.csrf.CsrfFilter@74f83989, org.springframework.security.web.authentication.logout.LogoutFilter@65df68a2, org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter@17ca01e3, org.springframework.security.web.authentication.ui.DefaultLoginPageGeneratingFilter@5aba547f, org.springframework.security.web.authentication.ui.DefaultLogoutPageGeneratingFilter@4b2e1682, org.springframework.security.web.authentication.www.BasicAuthenticationFilter@94ef1c0, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@41e288d7, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@5aacf5c4, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@35102ed6, org.springframework.security.web.access.ExceptionTranslationFilter@3515c81f, org.springframework.security.web.access.intercept.AuthorizationFilter@50f11dd7]
2025-09-09 13:45:35,805 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,806 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,806 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:45:35,811 INFO o.s.b.StartupInfoLogger [main] Started UserControllerTests in 0.236 seconds (process running for 16.868)
2025-09-09 13:45:35,817 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,817 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,818 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:45:35,837 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,838 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,838 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:45:35,848 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,848 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,849 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:45:35,864 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,864 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,865 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:45:35,872 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,873 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,873 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:45:35,883 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,883 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,884 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:45:35,889 WARN c.s.b.e.GlobalExceptionHandler [main] Erreur connue: 601 - User not found
2025-09-09 13:45:35,902 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,903 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,903 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:45:35,906 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.controllers.UserController
2025-09-09 13:45:35,916 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,916 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,917 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:45:35,919 WARN c.s.b.e.GlobalExceptionHandler [main] Erreur connue: 601 - User not found
2025-09-09 13:45:35,925 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,925 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,925 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:45:35,938 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,938 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,938 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:45:35,948 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:35,948 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:35,948 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:45:35,951 WARN c.s.b.e.GlobalExceptionHandler [main] Erreur connue: 601 - User not found
2025-09-09 13:45:36,000 INFO o.s.b.StartupInfoLogger [main] Starting AuthenticationControllerIntTests using Java 19.0.2 with PID 10970 (started by bolan in /home/bolan/Bureau/mecenat/mecenat-backend/spring/backend-tests)
2025-09-09 13:45:36,000 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2025-09-09 13:45:36,000 INFO o.s.b.SpringApplication [main] The following 1 profile is active: "test"
2025-09-09 13:45:36,116 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:45:36,116 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2025-09-09 13:45:36,128 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:36,129 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:36,129 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:36,129 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 12 ms. Found 0 MongoDB repository interfaces.
2025-09-09 13:45:36,167 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:45:36,167 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2025-09-09 13:45:36,186 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 18 ms. Found 3 JPA repository interfaces.
2025-09-09 13:45:36,430 INFO o.s.b.w.e.t.TomcatWebServer [main] Tomcat initialized with port(s): 0 (http)
2025-09-09 13:45:36,442 INFO o.a.j.l.DirectJDKLog [main] Initializing ProtocolHandler ["http-nio-auto-1"]
2025-09-09 13:45:36,444 INFO o.a.j.l.DirectJDKLog [main] Starting service [Tomcat]
2025-09-09 13:45:36,444 INFO o.a.j.l.DirectJDKLog [main] Starting Servlet engine: [Apache Tomcat/10.1.11]
2025-09-09 13:45:36,514 INFO o.a.j.l.DirectJDKLog [main] Initializing Spring embedded WebApplicationContext
2025-09-09 13:45:36,515 INFO o.s.b.w.s.c.ServletWebServerApplicationContext [main] Root WebApplicationContext: initialization completed in 514 ms
2025-09-09 13:45:36,566 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2025-09-09 13:45:36,570 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-09 13:45:36,571 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2025-09-09 13:45:36,572 INFO c.z.h.HikariDataSource [main] HikariPool-2 - Starting...
2025-09-09 13:45:36,573 INFO c.z.h.p.HikariPool [main] HikariPool-2 - Added connection conn10: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2025-09-09 13:45:36,573 INFO c.z.h.HikariDataSource [main] HikariPool-2 - Start completed.
2025-09-09 13:45:36,590 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-09 13:45:36,634 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2025-09-09 13:45:36,648 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2025-09-09 13:45:36,744 DEBUG o.s.w.f.GenericFilterBean [main] Filter 'jwtAuthenticationFilter' configured for use
2025-09-09 13:45:36,813 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2025-09-09 13:45:36,827 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@59c600c2, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@3ebc4441, org.springframework.security.web.context.SecurityContextHolderFilter@1ff7f556, org.springframework.security.web.header.HeaderWriterFilter@76ba9c07, org.springframework.security.web.authentication.logout.LogoutFilter@134e9a69, com.setup.backend.configs.security.JwtAuthenticationFilter@13639d1a, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@5cc41d3d, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@7e3cf806, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@2b305a4e, org.springframework.security.web.session.SessionManagementFilter@749517c, org.springframework.security.web.access.ExceptionTranslationFilter@20ac6b8e, org.springframework.security.web.access.intercept.AuthorizationFilter@76fa69f5]
2025-09-09 13:45:36,944 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='68c01360610e9d0939520cbb', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
com.mongodb.MongoSocketOpenException: Exception opening socket
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:73)
	at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:204)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:199)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:159)
	at java.base/java.lang.Thread.run(Thread.java:1589)
Caused by: java.net.ConnectException: Connexion refusée
	at java.base/sun.nio.ch.Net.pollConnect(Native Method)
	at java.base/sun.nio.ch.Net.pollConnectNow(Net.java:672)
	at java.base/sun.nio.ch.NioSocketImpl.timedFinishConnect(NioSocketImpl.java:535)
	at java.base/sun.nio.ch.NioSocketImpl.connect(NioSocketImpl.java:585)
	at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:327)
	at java.base/java.net.Socket.connect(Socket.java:666)
	at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107)
	at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:82)
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:68)
	... 4 common frames omitted
2025-09-09 13:45:36,944 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.11.0-26-generic"}, "platform": "Java/Oracle Corporation/19.0.2+7-44"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@63bad0cd, com.mongodb.Jep395RecordCodecProvider@456d17fa]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2025-09-09 13:45:36,983 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2025-09-09 13:45:37,011 INFO o.a.j.l.DirectJDKLog [main] Starting ProtocolHandler ["http-nio-auto-1"]
2025-09-09 13:45:37,024 INFO o.s.b.w.e.t.TomcatWebServer [main] Tomcat started on port(s): 39371 (http) with context path ''
2025-09-09 13:45:37,028 INFO o.s.b.StartupInfoLogger [main] Started AuthenticationControllerIntTests in 1.057 seconds (process running for 18.084)
2025-09-09 13:45:37,102 INFO c.s.b.s.i.DBInitializationServiceImpl [main] admin token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkB0ZXN0LmNvbSIsImlhdCI6MTc1NzQxODMzNywiZXhwIjoxNzU3NDc4MzM3fQ.CPC7z30nL-K475xcJF_xR5KFNwSod1psZaFbAvUEIR0
2025-09-09 13:45:37,174 INFO c.s.b.s.i.DBInitializationServiceImpl [main] User token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyQHRlc3QuY29tIiwiaWF0IjoxNzU3NDE4MzM3LCJleHAiOjE3NTc0NzgzMzd9.-3teMbDcbzNUS36IZY9HSeYTLYjRuaoYZ-W0vXQBbZw
2025-09-09 13:45:37,245 INFO c.s.b.s.i.DBInitializationServiceImpl [main] Enterprise token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlbnRlcnByaXNlQHRlc3QuY29tIiwiaWF0IjoxNzU3NDE4MzM3LCJleHAiOjE3NTc0NzgzMzd9.Mm1KYXFAdcQFxLxmB0OzdQTve8BB6JvgZQ_0Nau1S40
2025-09-09 13:45:37,316 INFO c.s.b.s.i.DBInitializationServiceImpl [main] association token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhc3NvY2lhdGlvbkB0ZXN0LmNvbSIsImlhdCI6MTc1NzQxODMzNywiZXhwIjoxNzU3NDc4MzM3fQ.DVk7GFgXT20roQI6e4s0f_mPJFhLOe0RM4f02oqsyFA
2025-09-09 13:45:37,544 INFO o.a.j.l.DirectJDKLog [http-nio-auto-1-exec-1] Initializing Spring DispatcherServlet 'dispatcherServlet'
2025-09-09 13:45:37,544 INFO o.s.w.s.FrameworkServlet [http-nio-auto-1-exec-1] Initializing Servlet 'dispatcherServlet'
2025-09-09 13:45:37,545 INFO o.s.w.s.FrameworkServlet [http-nio-auto-1-exec-1] Completed initialization in 1 ms
2025-09-09 13:45:37,626 INFO o.a.j.l.DirectJDKLog [main] Pausing ProtocolHandler ["http-nio-auto-1"]
2025-09-09 13:45:37,626 INFO o.a.j.l.DirectJDKLog [main] Stopping service [Tomcat]
2025-09-09 13:45:37,627 INFO o.a.j.l.DirectJDKLog [main] Destroying Spring FrameworkServlet 'dispatcherServlet'
2025-09-09 13:45:37,630 WARN o.a.j.l.DirectJDKLog [main] The web application [ROOT] appears to have started a thread named [HikariPool-2 housekeeper] but has failed to stop it. This is very likely to create a memory leak. Stack trace of thread:
 java.base/jdk.internal.misc.Unsafe.park(Native Method)
 java.base/java.util.concurrent.locks.LockSupport.parkNanos(LockSupport.java:269)
 java.base/java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos(AbstractQueuedSynchronizer.java:1674)
 java.base/java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue.take(ScheduledThreadPoolExecutor.java:1182)
 java.base/java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue.take(ScheduledThreadPoolExecutor.java:899)
 java.base/java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:1070)
 java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1130)
 java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:642)
 java.base/java.lang.Thread.run(Thread.java:1589)
2025-09-09 13:45:37,630 WARN o.a.j.l.DirectJDKLog [main] The web application [ROOT] appears to have started a thread named [HikariPool-2 connection adder] but has failed to stop it. This is very likely to create a memory leak. Stack trace of thread:
 java.base/jdk.internal.misc.Unsafe.park(Native Method)
 java.base/java.util.concurrent.locks.LockSupport.parkNanos(LockSupport.java:269)
 java.base/java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos(AbstractQueuedSynchronizer.java:1674)
 java.base/java.util.concurrent.LinkedBlockingQueue.poll(LinkedBlockingQueue.java:460)
 java.base/java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:1069)
 java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1130)
 java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:642)
 java.base/java.lang.Thread.run(Thread.java:1589)
2025-09-09 13:45:37,634 INFO o.a.j.l.DirectJDKLog [main] Stopping ProtocolHandler ["http-nio-auto-1"]
2025-09-09 13:45:37,638 INFO o.a.j.l.DirectJDKLog [main] Destroying ProtocolHandler ["http-nio-auto-1"]
2025-09-09 13:45:37,643 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Closing JPA EntityManagerFactory for persistence unit 'default'
2025-09-09 13:45:37,646 INFO c.z.h.HikariDataSource [main] HikariPool-2 - Shutdown initiated...
2025-09-09 13:45:37,657 INFO c.z.h.HikariDataSource [main] HikariPool-2 - Shutdown completed.
2025-09-09 13:45:37,811 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:45:37,811 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2025-09-09 13:45:37,818 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:37,818 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:37,819 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:45:37,819 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 7 ms. Found 0 MongoDB repository interfaces.
2025-09-09 13:45:37,856 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:45:37,857 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2025-09-09 13:45:37,872 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 15 ms. Found 3 JPA repository interfaces.
2025-09-09 13:45:40,270 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2025-09-09 13:45:40,276 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-09 13:45:40,276 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2025-09-09 13:45:40,277 INFO c.z.h.HikariDataSource [main] HikariPool-3 - Starting...
2025-09-09 13:45:40,279 INFO c.z.h.p.HikariPool [main] HikariPool-3 - Added connection conn20: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2025-09-09 13:45:40,280 INFO c.z.h.HikariDataSource [main] HikariPool-3 - Start completed.
2025-09-09 13:45:40,299 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-09 13:45:40,354 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2025-09-09 13:45:40,372 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2025-09-09 13:45:40,519 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2025-09-09 13:45:40,541 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@3aae1d99, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@2bc4249, org.springframework.security.web.context.SecurityContextHolderFilter@266e12a0, org.springframework.security.web.header.HeaderWriterFilter@7ad6a522, org.springframework.security.web.authentication.logout.LogoutFilter@7679da67, com.setup.backend.configs.security.JwtAuthenticationFilter@7d4d71b2, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@15f60555, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@5a465d7c, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@5440cd6b, org.springframework.security.web.session.SessionManagementFilter@42a719e2, org.springframework.security.web.access.ExceptionTranslationFilter@4aef2890, org.springframework.security.web.access.intercept.AuthorizationFilter@3bc5bfe1]
2025-09-09 13:45:40,771 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.11.0-26-generic"}, "platform": "Java/Oracle Corporation/19.0.2+7-44"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@63bad0cd, com.mongodb.Jep395RecordCodecProvider@456d17fa]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2025-09-09 13:45:40,771 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='68c01364610e9d0939520cbc', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
com.mongodb.MongoSocketOpenException: Exception opening socket
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:73)
	at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:204)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:199)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:159)
	at java.base/java.lang.Thread.run(Thread.java:1589)
Caused by: java.net.ConnectException: Connexion refusée
	at java.base/sun.nio.ch.Net.pollConnect(Native Method)
	at java.base/sun.nio.ch.Net.pollConnectNow(Net.java:672)
	at java.base/sun.nio.ch.NioSocketImpl.timedFinishConnect(NioSocketImpl.java:535)
	at java.base/sun.nio.ch.NioSocketImpl.connect(NioSocketImpl.java:585)
	at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:327)
	at java.base/java.net.Socket.connect(Socket.java:666)
	at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107)
	at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:82)
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:68)
	... 4 common frames omitted
2025-09-09 13:45:40,827 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2025-09-09 13:45:40,861 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:40,861 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:40,862 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:45:40,877 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:45:40,877 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:45:40,878 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:45:41,115 ERROR c.s.b.e.GlobalExceptionHandler [main] Erreur non gérée
java.lang.UnsupportedOperationException: Unimplemented method 'sendActivationEmail'
	at com.setup.backend.services.impl.EmailServiceImpl.sendActivationEmail(EmailServiceImpl.java:16)
	at com.setup.backend.services.impl.UserServiceImpl.create(UserServiceImpl.java:88)
	at com.setup.backend.controllers.UserController.create(UserController.java:54)
	at java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:104)
	at java.base/java.lang.reflect.Method.invoke(Method.java:578)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:118)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:884)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:797)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1081)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:974)
	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1011)
	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:914)
	at jakarta.servlet.http.HttpServlet.service(HttpServlet.java:590)
	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:885)
	at org.springframework.test.web.servlet.TestDispatcherServlet.service(TestDispatcherServlet.java:72)
	at jakarta.servlet.http.HttpServlet.service(HttpServlet.java:658)
	at org.springframework.mock.web.MockFilterChain$ServletFilterProxy.doFilter(MockFilterChain.java:165)
	at org.springframework.mock.web.MockFilterChain.doFilter(MockFilterChain.java:132)
	at org.springframework.test.web.servlet.MockMvc.perform(MockMvc.java:201)
	at com.setup.backend.setup.AbstractIntegrationTest.doPost(AbstractIntegrationTest.java:92)
	at com.setup.backend.controllers.integrations_tests.UserControllerIntTests.testCreateUserController_whenAllInformationsAreCorrect_thenAUserIsCreatedSuccessfully(UserControllerIntTests.java:62)
	at java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:104)
	at java.base/java.lang.reflect.Method.invoke(Method.java:578)
	at org.junit.platform.commons.util.ReflectionUtils.invokeMethod(ReflectionUtils.java:727)
	at org.junit.jupiter.engine.execution.MethodInvocation.proceed(MethodInvocation.java:60)
	at org.junit.jupiter.engine.execution.InvocationInterceptorChain$ValidatingInvocation.proceed(InvocationInterceptorChain.java:131)
	at org.junit.jupiter.engine.extension.TimeoutExtension.intercept(TimeoutExtension.java:156)
	at org.junit.jupiter.engine.extension.TimeoutExtension.interceptTestableMethod(TimeoutExtension.java:147)
	at org.junit.jupiter.engine.extension.TimeoutExtension.interceptTestMethod(TimeoutExtension.java:86)
	at org.junit.jupiter.engine.execution.InterceptingExecutableInvoker$ReflectiveInterceptorCall.lambda$ofVoidMethod$0(InterceptingExecutableInvoker.java:103)
	at org.junit.jupiter.engine.execution.InterceptingExecutableInvoker.lambda$invoke$0(InterceptingExecutableInvoker.java:93)
	at org.junit.jupiter.engine.execution.InvocationInterceptorChain$InterceptedInvocation.proceed(InvocationInterceptorChain.java:106)
	at org.junit.jupiter.engine.execution.InvocationInterceptorChain.proceed(InvocationInterceptorChain.java:64)
	at org.junit.jupiter.engine.execution.InvocationInterceptorChain.chainAndInvoke(InvocationInterceptorChain.java:45)
	at org.junit.jupiter.engine.execution.InvocationInterceptorChain.invoke(InvocationInterceptorChain.java:37)
	at org.junit.jupiter.engine.execution.InterceptingExecutableInvoker.invoke(InterceptingExecutableInvoker.java:92)
	at org.junit.jupiter.engine.execution.InterceptingExecutableInvoker.invoke(InterceptingExecutableInvoker.java:86)
	at org.junit.jupiter.engine.descriptor.TestMethodTestDescriptor.lambda$invokeTestMethod$7(TestMethodTestDescriptor.java:217)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.jupiter.engine.descriptor.TestMethodTestDescriptor.invokeTestMethod(TestMethodTestDescriptor.java:213)
	at org.junit.jupiter.engine.descriptor.TestMethodTestDescriptor.execute(TestMethodTestDescriptor.java:138)
	at org.junit.jupiter.engine.descriptor.TestMethodTestDescriptor.execute(TestMethodTestDescriptor.java:68)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$6(NodeTestTask.java:151)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$8(NodeTestTask.java:141)
	at org.junit.platform.engine.support.hierarchical.Node.around(Node.java:137)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$9(NodeTestTask.java:139)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.executeRecursively(NodeTestTask.java:138)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.execute(NodeTestTask.java:95)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at org.junit.platform.engine.support.hierarchical.SameThreadHierarchicalTestExecutorService.invokeAll(SameThreadHierarchicalTestExecutorService.java:41)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$6(NodeTestTask.java:155)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$8(NodeTestTask.java:141)
	at org.junit.platform.engine.support.hierarchical.Node.around(Node.java:137)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$9(NodeTestTask.java:139)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.executeRecursively(NodeTestTask.java:138)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.execute(NodeTestTask.java:95)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at org.junit.platform.engine.support.hierarchical.SameThreadHierarchicalTestExecutorService.invokeAll(SameThreadHierarchicalTestExecutorService.java:41)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$6(NodeTestTask.java:155)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$8(NodeTestTask.java:141)
	at org.junit.platform.engine.support.hierarchical.Node.around(Node.java:137)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$9(NodeTestTask.java:139)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.executeRecursively(NodeTestTask.java:138)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.execute(NodeTestTask.java:95)
	at org.junit.platform.engine.support.hierarchical.SameThreadHierarchicalTestExecutorService.submit(SameThreadHierarchicalTestExecutorService.java:35)
	at org.junit.platform.engine.support.hierarchical.HierarchicalTestExecutor.execute(HierarchicalTestExecutor.java:57)
	at org.junit.platform.engine.support.hierarchical.HierarchicalTestEngine.execute(HierarchicalTestEngine.java:54)
	at org.junit.platform.launcher.core.DefaultLauncher.execute(DefaultLauncher.java:170)
	at org.junit.platform.launcher.core.DefaultLauncher.execute(DefaultLauncher.java:154)
	at org.junit.platform.launcher.core.DefaultLauncher.execute(DefaultLauncher.java:90)
	at org.junit.platform.surefire.provider.JUnitPlatformProvider.invokeAllTests(JUnitPlatformProvider.java:132)
	at org.junit.platform.surefire.provider.JUnitPlatformProvider.invoke(JUnitPlatformProvider.java:111)
	at org.apache.maven.surefire.booter.ForkedBooter.invokeProviderInSameClassLoader(ForkedBooter.java:379)
	at org.apache.maven.surefire.booter.ForkedBooter.runSuitesInProcess(ForkedBooter.java:340)
	at org.apache.maven.surefire.booter.ForkedBooter.execute(ForkedBooter.java:125)
	at org.apache.maven.surefire.booter.ForkedBooter.main(ForkedBooter.java:413)
2025-09-09 13:45:41,886 ERROR c.s.b.e.GlobalExceptionHandler [main] Erreur non gérée
java.lang.UnsupportedOperationException: Unimplemented method 'sendLockedEmail'
	at com.setup.backend.services.impl.EmailServiceImpl.sendLockedEmail(EmailServiceImpl.java:22)
	at com.setup.backend.services.impl.UserServiceImpl.lockUserAccount(UserServiceImpl.java:217)
	at com.setup.backend.controllers.UserController.lockAccount(UserController.java:79)
	at java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:104)
	at java.base/java.lang.reflect.Method.invoke(Method.java:578)
	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:118)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:884)
	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:797)
	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1081)
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:974)
	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1011)
	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:914)
	at jakarta.servlet.http.HttpServlet.service(HttpServlet.java:590)
	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:885)
	at org.springframework.test.web.servlet.TestDispatcherServlet.service(TestDispatcherServlet.java:72)
	at jakarta.servlet.http.HttpServlet.service(HttpServlet.java:658)
	at org.springframework.mock.web.MockFilterChain$ServletFilterProxy.doFilter(MockFilterChain.java:165)
	at org.springframework.mock.web.MockFilterChain.doFilter(MockFilterChain.java:132)
	at org.springframework.test.web.servlet.MockMvc.perform(MockMvc.java:201)
	at com.setup.backend.setup.AbstractIntegrationTest.doPost(AbstractIntegrationTest.java:92)
	at com.setup.backend.controllers.integrations_tests.UserControllerIntTests.testLockUserAccountController_whenAllTheConditionsAreValid_thenTheUserAccountIsSuccessfullyLocked(UserControllerIntTests.java:121)
	at java.base/jdk.internal.reflect.DirectMethodHandleAccessor.invoke(DirectMethodHandleAccessor.java:104)
	at java.base/java.lang.reflect.Method.invoke(Method.java:578)
	at org.junit.platform.commons.util.ReflectionUtils.invokeMethod(ReflectionUtils.java:727)
	at org.junit.jupiter.engine.execution.MethodInvocation.proceed(MethodInvocation.java:60)
	at org.junit.jupiter.engine.execution.InvocationInterceptorChain$ValidatingInvocation.proceed(InvocationInterceptorChain.java:131)
	at org.junit.jupiter.engine.extension.TimeoutExtension.intercept(TimeoutExtension.java:156)
	at org.junit.jupiter.engine.extension.TimeoutExtension.interceptTestableMethod(TimeoutExtension.java:147)
	at org.junit.jupiter.engine.extension.TimeoutExtension.interceptTestMethod(TimeoutExtension.java:86)
	at org.junit.jupiter.engine.execution.InterceptingExecutableInvoker$ReflectiveInterceptorCall.lambda$ofVoidMethod$0(InterceptingExecutableInvoker.java:103)
	at org.junit.jupiter.engine.execution.InterceptingExecutableInvoker.lambda$invoke$0(InterceptingExecutableInvoker.java:93)
	at org.junit.jupiter.engine.execution.InvocationInterceptorChain$InterceptedInvocation.proceed(InvocationInterceptorChain.java:106)
	at org.junit.jupiter.engine.execution.InvocationInterceptorChain.proceed(InvocationInterceptorChain.java:64)
	at org.junit.jupiter.engine.execution.InvocationInterceptorChain.chainAndInvoke(InvocationInterceptorChain.java:45)
	at org.junit.jupiter.engine.execution.InvocationInterceptorChain.invoke(InvocationInterceptorChain.java:37)
	at org.junit.jupiter.engine.execution.InterceptingExecutableInvoker.invoke(InterceptingExecutableInvoker.java:92)
	at org.junit.jupiter.engine.execution.InterceptingExecutableInvoker.invoke(InterceptingExecutableInvoker.java:86)
	at org.junit.jupiter.engine.descriptor.TestMethodTestDescriptor.lambda$invokeTestMethod$7(TestMethodTestDescriptor.java:217)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.jupiter.engine.descriptor.TestMethodTestDescriptor.invokeTestMethod(TestMethodTestDescriptor.java:213)
	at org.junit.jupiter.engine.descriptor.TestMethodTestDescriptor.execute(TestMethodTestDescriptor.java:138)
	at org.junit.jupiter.engine.descriptor.TestMethodTestDescriptor.execute(TestMethodTestDescriptor.java:68)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$6(NodeTestTask.java:151)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$8(NodeTestTask.java:141)
	at org.junit.platform.engine.support.hierarchical.Node.around(Node.java:137)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$9(NodeTestTask.java:139)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.executeRecursively(NodeTestTask.java:138)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.execute(NodeTestTask.java:95)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at org.junit.platform.engine.support.hierarchical.SameThreadHierarchicalTestExecutorService.invokeAll(SameThreadHierarchicalTestExecutorService.java:41)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$6(NodeTestTask.java:155)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$8(NodeTestTask.java:141)
	at org.junit.platform.engine.support.hierarchical.Node.around(Node.java:137)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$9(NodeTestTask.java:139)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.executeRecursively(NodeTestTask.java:138)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.execute(NodeTestTask.java:95)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at org.junit.platform.engine.support.hierarchical.SameThreadHierarchicalTestExecutorService.invokeAll(SameThreadHierarchicalTestExecutorService.java:41)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$6(NodeTestTask.java:155)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$8(NodeTestTask.java:141)
	at org.junit.platform.engine.support.hierarchical.Node.around(Node.java:137)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.lambda$executeRecursively$9(NodeTestTask.java:139)
	at org.junit.platform.engine.support.hierarchical.ThrowableCollector.execute(ThrowableCollector.java:73)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.executeRecursively(NodeTestTask.java:138)
	at org.junit.platform.engine.support.hierarchical.NodeTestTask.execute(NodeTestTask.java:95)
	at org.junit.platform.engine.support.hierarchical.SameThreadHierarchicalTestExecutorService.submit(SameThreadHierarchicalTestExecutorService.java:35)
	at org.junit.platform.engine.support.hierarchical.HierarchicalTestExecutor.execute(HierarchicalTestExecutor.java:57)
	at org.junit.platform.engine.support.hierarchical.HierarchicalTestEngine.execute(HierarchicalTestEngine.java:54)
	at org.junit.platform.launcher.core.DefaultLauncher.execute(DefaultLauncher.java:170)
	at org.junit.platform.launcher.core.DefaultLauncher.execute(DefaultLauncher.java:154)
	at org.junit.platform.launcher.core.DefaultLauncher.execute(DefaultLauncher.java:90)
	at org.junit.platform.surefire.provider.JUnitPlatformProvider.invokeAllTests(JUnitPlatformProvider.java:132)
	at org.junit.platform.surefire.provider.JUnitPlatformProvider.invoke(JUnitPlatformProvider.java:111)
	at org.apache.maven.surefire.booter.ForkedBooter.invokeProviderInSameClassLoader(ForkedBooter.java:379)
	at org.apache.maven.surefire.booter.ForkedBooter.runSuitesInProcess(ForkedBooter.java:340)
	at org.apache.maven.surefire.booter.ForkedBooter.execute(ForkedBooter.java:125)
	at org.apache.maven.surefire.booter.ForkedBooter.main(ForkedBooter.java:413)
2025-09-09 13:45:41,975 INFO o.s.o.j.AbstractEntityManagerFactoryBean [SpringApplicationShutdownHook] Closing JPA EntityManagerFactory for persistence unit 'default'
2025-09-09 13:45:41,977 INFO o.s.o.j.AbstractEntityManagerFactoryBean [SpringContextShutdownHook] Closing JPA EntityManagerFactory for persistence unit 'default'
2025-09-09 13:45:41,977 INFO c.z.h.HikariDataSource [SpringApplicationShutdownHook] HikariPool-1 - Shutdown initiated...
2025-09-09 13:45:41,979 INFO c.z.h.HikariDataSource [SpringContextShutdownHook] HikariPool-3 - Shutdown initiated...
2025-09-09 13:45:41,981 INFO c.z.h.HikariDataSource [SpringApplicationShutdownHook] HikariPool-1 - Shutdown completed.
2025-09-09 13:45:41,983 INFO c.z.h.HikariDataSource [SpringContextShutdownHook] HikariPool-3 - Shutdown completed.
2025-09-09 13:48:31,361 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.BackendApplicationTests]: BackendApplicationTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2025-09-09 13:48:31,520 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.BackendApplicationTests
2025-09-09 13:48:32,047 INFO o.s.b.StartupInfoLogger [main] Starting BackendApplicationTests using Java 19.0.2 with PID 12872 (started by bolan in /home/bolan/Bureau/mecenat/mecenat-backend/spring/backend-tests)
2025-09-09 13:48:32,047 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2025-09-09 13:48:32,048 INFO o.s.b.SpringApplication [main] The following 1 profile is active: "test"
2025-09-09 13:48:32,784 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:48:32,786 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2025-09-09 13:48:32,826 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:32,828 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:32,831 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:32,832 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 38 ms. Found 0 MongoDB repository interfaces.
2025-09-09 13:48:33,158 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:48:33,160 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2025-09-09 13:48:33,232 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 67 ms. Found 3 JPA repository interfaces.
2025-09-09 13:48:33,803 WARN c.h.l.StandardLoggerFactory$StandardLogger [main] Hazelcast is starting in a Java modular environment (Java 9 and newer) but without proper access to required Java packages. Use additional Java arguments to provide Hazelcast access to Java internal API. The internal API access is used to get the best performance results. Arguments to be used:
 --add-modules java.se --add-exports java.base/jdk.internal.ref=ALL-UNNAMED --add-opens java.base/java.lang=ALL-UNNAMED --add-opens java.base/java.nio=ALL-UNNAMED --add-opens java.base/sun.nio.ch=ALL-UNNAMED --add-opens java.management/sun.management=ALL-UNNAMED --add-opens jdk.management/com.sun.management.internal=ALL-UNNAMED
2025-09-09 13:48:33,885 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] 
	+       +  o    o     o     o---o o----o o      o---o     o     o----o o--o--o
	+ +   + +  |    |    / \       /  |      |     /         / \    |         |   
	+ + + + +  o----o   o   o     o   o----o |    o         o   o   o----o    |   
	+ +   + +  |    |  /     \   /    |      |     \       /     \       |    |   
	+       +  o    o o       o o---o o----o o----o o---o o       o o----o    o   
2025-09-09 13:48:33,886 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] Copyright (c) 2008-2021, Hazelcast, Inc. All Rights Reserved.
2025-09-09 13:48:33,886 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] Hazelcast Platform 5.0-BETA-1 (20210713 - e8e010a) starting at [172.20.10.2]:5701
2025-09-09 13:48:33,886 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] Cluster name: dev
2025-09-09 13:48:33,886 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] Jet is disabled. Enable it by setting the "hz.jet.enabled" property to true.
2025-09-09 13:48:34,341 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] Using Multicast discovery
2025-09-09 13:48:34,347 WARN c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] CP Subsystem is not enabled. CP data structures will operate in UNSAFE mode! Please note that UNSAFE mode will not provide strong consistency guarantees.
2025-09-09 13:48:34,744 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] Diagnostics disabled. To enable add -Dhazelcast.diagnostics.enabled=true to the JVM arguments.
2025-09-09 13:48:34,751 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] [172.20.10.2]:5701 is STARTING
2025-09-09 13:48:37,245 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] 

Members {size:1, ver:1} [
	Member [172.20.10.2]:5701 - 8cdf0533-ee72-4ca2-9a36-958e1162b7ea this
]

2025-09-09 13:48:37,281 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.20.10.2]:5701 [dev] [5.0-BETA-1] [172.20.10.2]:5701 is STARTED
2025-09-09 13:48:37,570 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2025-09-09 13:48:37,689 INFO o.h.Version [main] HHH000412: Hibernate ORM core version [WORKING]
2025-09-09 13:48:37,695 INFO o.h.c.Environment [main] HHH000406: Using bytecode reflection optimizer
2025-09-09 13:48:37,997 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-09 13:48:38,016 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2025-09-09 13:48:38,059 INFO c.z.h.HikariDataSource [main] HikariPool-1 - Starting...
2025-09-09 13:48:38,614 INFO c.z.h.p.HikariPool [main] HikariPool-1 - Added connection conn0: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2025-09-09 13:48:38,618 INFO c.z.h.HikariDataSource [main] HikariPool-1 - Start completed.
2025-09-09 13:48:39,079 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-09 13:48:39,843 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2025-09-09 13:48:39,930 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2025-09-09 13:48:40,349 INFO o.s.d.j.r.q.QueryEnhancerFactory [main] Hibernate is in classpath; If applicable, HQL parser will be used.
2025-09-09 13:48:41,202 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.UserRepository
2025-09-09 13:48:41,353 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.TokenRepository
2025-09-09 13:48:41,448 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.ActivationHashRepository
2025-09-09 13:48:41,685 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='68c014193339bf26c0ff3179', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
com.mongodb.MongoSocketOpenException: Exception opening socket
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:73)
	at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:204)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:199)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:159)
	at java.base/java.lang.Thread.run(Thread.java:1589)
Caused by: java.net.ConnectException: Connexion refusée
	at java.base/sun.nio.ch.Net.pollConnect(Native Method)
	at java.base/sun.nio.ch.Net.pollConnectNow(Net.java:672)
	at java.base/sun.nio.ch.NioSocketImpl.timedFinishConnect(NioSocketImpl.java:535)
	at java.base/sun.nio.ch.NioSocketImpl.connect(NioSocketImpl.java:585)
	at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:327)
	at java.base/java.net.Socket.connect(Socket.java:666)
	at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107)
	at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:82)
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:68)
	... 4 common frames omitted
2025-09-09 13:48:41,692 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.11.0-26-generic"}, "platform": "Java/Oracle Corporation/19.0.2+7-44"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@2b3e4f18, com.mongodb.Jep395RecordCodecProvider@6a854c9f]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2025-09-09 13:48:42,026 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2025-09-09 13:48:42,143 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@64698302, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@7563364e, org.springframework.security.web.context.SecurityContextHolderFilter@68ab1494, org.springframework.security.web.header.HeaderWriterFilter@2b7e9d48, org.springframework.security.web.authentication.logout.LogoutFilter@45f0a4b, com.setup.backend.configs.security.JwtAuthenticationFilter@3d070408, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@1b9353b0, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@4f90a5e1, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@5e9eb48a, org.springframework.security.web.session.SessionManagementFilter@19a12663, org.springframework.security.web.access.ExceptionTranslationFilter@4620c7a7, org.springframework.security.web.access.intercept.AuthorizationFilter@1587ca32]
2025-09-09 13:48:42,773 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2025-09-09 13:48:42,799 INFO o.s.b.StartupInfoLogger [main] Started BackendApplicationTests in 11.071 seconds (process running for 15.562)
2025-09-09 13:48:43,116 INFO c.s.b.s.i.DBInitializationServiceImpl [main] admin token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkB0ZXN0LmNvbSIsImlhdCI6MTc1NzQxODUyMywiZXhwIjoxNzU3NDc4NTIzfQ.4Ax8T4Do0SzViJORxcRiuReAFx5M9o5r8edt7wokeOw
2025-09-09 13:48:43,188 INFO c.s.b.s.i.DBInitializationServiceImpl [main] User token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyQHRlc3QuY29tIiwiaWF0IjoxNzU3NDE4NTIzLCJleHAiOjE3NTc0Nzg1MjN9.tNOCJ0EEW0IOKLAxMIIUf05OKDRrCcVsdT_i-EkH-qo
2025-09-09 13:48:43,260 INFO c.s.b.s.i.DBInitializationServiceImpl [main] Enterprise token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlbnRlcnByaXNlQHRlc3QuY29tIiwiaWF0IjoxNzU3NDE4NTIzLCJleHAiOjE3NTc0Nzg1MjN9.9dnq1v2kgpoLYrYdY8MqSULixOkYjR8HidWK5MQXNRI
2025-09-09 13:48:43,331 INFO c.s.b.s.i.DBInitializationServiceImpl [main] association token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhc3NvY2lhdGlvbkB0ZXN0LmNvbSIsImlhdCI6MTc1NzQxODUyMywiZXhwIjoxNzU3NDc4NTIzfQ.EWMEkbt8Wd9zCmWSNayTmCeeu6O8M5_HmvV7mBeahHs
2025-09-09 13:48:43,368 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.controllers.unit_tests.AuthenticationControllerTests]: AuthenticationControllerTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2025-09-09 13:48:43,401 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.controllers.unit_tests.AuthenticationControllerTests
2025-09-09 13:48:43,426 INFO o.s.b.StartupInfoLogger [main] Starting AuthenticationControllerTests using Java 19.0.2 with PID 12872 (started by bolan in /home/bolan/Bureau/mecenat/mecenat-backend/spring/backend-tests)
2025-09-09 13:48:43,426 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2025-09-09 13:48:43,427 INFO o.s.b.SpringApplication [main] No active profile set, falling back to 1 default profile: "default"
2025-09-09 13:48:43,517 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:48:43,518 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2025-09-09 13:48:43,528 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:43,529 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:43,529 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:43,530 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 11 ms. Found 0 MongoDB repository interfaces.
2025-09-09 13:48:43,870 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2025-09-09 13:48:43,903 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@31e47572, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@7a266b5e, org.springframework.security.web.context.SecurityContextHolderFilter@1c19281d, org.springframework.security.web.header.HeaderWriterFilter@3ac0c20b, org.springframework.security.web.csrf.CsrfFilter@1590409c, org.springframework.security.web.authentication.logout.LogoutFilter@27fd4c5b, org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter@f6fed14, org.springframework.security.web.authentication.ui.DefaultLoginPageGeneratingFilter@63810c50, org.springframework.security.web.authentication.ui.DefaultLogoutPageGeneratingFilter@4a6f671f, org.springframework.security.web.authentication.www.BasicAuthenticationFilter@868575e, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@b1a1fa2, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@5fed5d3c, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@770bab, org.springframework.security.web.access.ExceptionTranslationFilter@4863980d, org.springframework.security.web.access.intercept.AuthorizationFilter@1ad14f25]
2025-09-09 13:48:43,945 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:43,945 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:43,946 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:48:43,954 INFO o.s.b.StartupInfoLogger [main] Started AuthenticationControllerTests in 0.549 seconds (process running for 16.717)
2025-09-09 13:48:43,966 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:43,967 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:43,967 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:48:44,098 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.controllers.unit_tests.UserControllerTests]: UserControllerTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2025-09-09 13:48:44,102 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.controllers.unit_tests.UserControllerTests
2025-09-09 13:48:44,121 INFO o.s.b.StartupInfoLogger [main] Starting UserControllerTests using Java 19.0.2 with PID 12872 (started by bolan in /home/bolan/Bureau/mecenat/mecenat-backend/spring/backend-tests)
2025-09-09 13:48:44,121 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2025-09-09 13:48:44,121 INFO o.s.b.SpringApplication [main] No active profile set, falling back to 1 default profile: "default"
2025-09-09 13:48:44,204 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:48:44,205 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2025-09-09 13:48:44,215 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:44,215 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:44,216 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:44,216 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 10 ms. Found 0 MongoDB repository interfaces.
2025-09-09 13:48:44,304 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2025-09-09 13:48:44,318 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@4c8779bc, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@68df786c, org.springframework.security.web.context.SecurityContextHolderFilter@3a6ab071, org.springframework.security.web.header.HeaderWriterFilter@47c86b27, org.springframework.security.web.csrf.CsrfFilter@2eebf413, org.springframework.security.web.authentication.logout.LogoutFilter@4495532a, org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter@255e9df7, org.springframework.security.web.authentication.ui.DefaultLoginPageGeneratingFilter@648ed558, org.springframework.security.web.authentication.ui.DefaultLogoutPageGeneratingFilter@393ff1a5, org.springframework.security.web.authentication.www.BasicAuthenticationFilter@4bbc8675, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@4bd08043, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@609b0b3f, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@161f47d9, org.springframework.security.web.access.ExceptionTranslationFilter@31f34264, org.springframework.security.web.access.intercept.AuthorizationFilter@6e5954b4]
2025-09-09 13:48:44,324 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:44,325 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:44,325 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:48:44,330 INFO o.s.b.StartupInfoLogger [main] Started UserControllerTests in 0.223 seconds (process running for 17.093)
2025-09-09 13:48:44,335 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:44,335 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:44,336 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:48:44,353 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:44,354 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:44,354 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:48:44,364 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:44,364 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:44,364 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:48:44,381 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:44,381 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:44,382 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:48:44,389 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:44,390 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:44,390 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:48:44,399 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:44,399 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:44,400 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:48:44,404 WARN c.s.b.e.GlobalExceptionHandler [main] Erreur connue: 601 - User not found
2025-09-09 13:48:44,418 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:44,418 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:44,419 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:48:44,421 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.controllers.UserController
2025-09-09 13:48:44,431 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:44,432 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:44,432 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:48:44,435 WARN c.s.b.e.GlobalExceptionHandler [main] Erreur connue: 601 - User not found
2025-09-09 13:48:44,439 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:44,439 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:44,440 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:48:44,449 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:44,449 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:44,450 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2025-09-09 13:48:44,460 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:44,461 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:44,461 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:48:44,463 WARN c.s.b.e.GlobalExceptionHandler [main] Erreur connue: 601 - User not found
2025-09-09 13:48:44,494 INFO o.s.b.StartupInfoLogger [main] Starting AuthenticationControllerIntTests using Java 19.0.2 with PID 12872 (started by bolan in /home/bolan/Bureau/mecenat/mecenat-backend/spring/backend-tests)
2025-09-09 13:48:44,494 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2025-09-09 13:48:44,494 INFO o.s.b.SpringApplication [main] The following 1 profile is active: "test"
2025-09-09 13:48:44,604 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:48:44,604 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2025-09-09 13:48:44,613 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:44,614 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:44,614 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:44,614 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 9 ms. Found 0 MongoDB repository interfaces.
2025-09-09 13:48:44,649 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:48:44,649 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2025-09-09 13:48:44,671 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 21 ms. Found 3 JPA repository interfaces.
2025-09-09 13:48:44,885 INFO o.s.b.w.e.t.TomcatWebServer [main] Tomcat initialized with port(s): 0 (http)
2025-09-09 13:48:44,899 INFO o.a.j.l.DirectJDKLog [main] Initializing ProtocolHandler ["http-nio-auto-1"]
2025-09-09 13:48:44,902 INFO o.a.j.l.DirectJDKLog [main] Starting service [Tomcat]
2025-09-09 13:48:44,902 INFO o.a.j.l.DirectJDKLog [main] Starting Servlet engine: [Apache Tomcat/10.1.11]
2025-09-09 13:48:44,980 INFO o.a.j.l.DirectJDKLog [main] Initializing Spring embedded WebApplicationContext
2025-09-09 13:48:44,981 INFO o.s.b.w.s.c.ServletWebServerApplicationContext [main] Root WebApplicationContext: initialization completed in 484 ms
2025-09-09 13:48:45,041 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2025-09-09 13:48:45,046 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-09 13:48:45,047 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2025-09-09 13:48:45,048 INFO c.z.h.HikariDataSource [main] HikariPool-2 - Starting...
2025-09-09 13:48:45,050 INFO c.z.h.p.HikariPool [main] HikariPool-2 - Added connection conn10: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2025-09-09 13:48:45,051 INFO c.z.h.HikariDataSource [main] HikariPool-2 - Start completed.
2025-09-09 13:48:45,068 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-09 13:48:45,112 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2025-09-09 13:48:45,128 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2025-09-09 13:48:45,244 DEBUG o.s.w.f.GenericFilterBean [main] Filter 'jwtAuthenticationFilter' configured for use
2025-09-09 13:48:45,296 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.11.0-26-generic"}, "platform": "Java/Oracle Corporation/19.0.2+7-44"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@2b3e4f18, com.mongodb.Jep395RecordCodecProvider@6a854c9f]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2025-09-09 13:48:45,296 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='68c0141d3339bf26c0ff317a', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
com.mongodb.MongoSocketOpenException: Exception opening socket
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:73)
	at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:204)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:199)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:159)
	at java.base/java.lang.Thread.run(Thread.java:1589)
Caused by: java.net.ConnectException: Connexion refusée
	at java.base/sun.nio.ch.Net.pollConnect(Native Method)
	at java.base/sun.nio.ch.Net.pollConnectNow(Net.java:672)
	at java.base/sun.nio.ch.NioSocketImpl.timedFinishConnect(NioSocketImpl.java:535)
	at java.base/sun.nio.ch.NioSocketImpl.connect(NioSocketImpl.java:585)
	at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:327)
	at java.base/java.net.Socket.connect(Socket.java:666)
	at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107)
	at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:82)
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:68)
	... 4 common frames omitted
2025-09-09 13:48:45,351 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2025-09-09 13:48:45,366 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@34991dbb, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@393240ec, org.springframework.security.web.context.SecurityContextHolderFilter@76c24922, org.springframework.security.web.header.HeaderWriterFilter@2fa7cf4b, org.springframework.security.web.authentication.logout.LogoutFilter@508bb5b9, com.setup.backend.configs.security.JwtAuthenticationFilter@46f336fe, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@2e9a6d6, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@1325fc57, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@7d5ed984, org.springframework.security.web.session.SessionManagementFilter@71aad984, org.springframework.security.web.access.ExceptionTranslationFilter@9afae12, org.springframework.security.web.access.intercept.AuthorizationFilter@23e0e688]
2025-09-09 13:48:45,501 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2025-09-09 13:48:45,529 INFO o.a.j.l.DirectJDKLog [main] Starting ProtocolHandler ["http-nio-auto-1"]
2025-09-09 13:48:45,542 INFO o.s.b.w.e.t.TomcatWebServer [main] Tomcat started on port(s): 42975 (http) with context path ''
2025-09-09 13:48:45,546 INFO o.s.b.StartupInfoLogger [main] Started AuthenticationControllerIntTests in 1.069 seconds (process running for 18.309)
2025-09-09 13:48:45,622 INFO c.s.b.s.i.DBInitializationServiceImpl [main] admin token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkB0ZXN0LmNvbSIsImlhdCI6MTc1NzQxODUyNSwiZXhwIjoxNzU3NDc4NTI1fQ.O0pNPH2zVmESPgOxwyaUeQWd-Xmj3qD_WK0A3TzFWWo
2025-09-09 13:48:45,692 INFO c.s.b.s.i.DBInitializationServiceImpl [main] User token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyQHRlc3QuY29tIiwiaWF0IjoxNzU3NDE4NTI1LCJleHAiOjE3NTc0Nzg1MjV9.QOL7C-XYyVQ5XtqAVH9Vz6aloI97zcwId-hPe-xqQMo
2025-09-09 13:48:45,765 INFO c.s.b.s.i.DBInitializationServiceImpl [main] Enterprise token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlbnRlcnByaXNlQHRlc3QuY29tIiwiaWF0IjoxNzU3NDE4NTI1LCJleHAiOjE3NTc0Nzg1MjV9.qeae_PIe4Q84R7ooNvSF1P9n1vh_a1TxAKSjE_8ROIk
2025-09-09 13:48:45,836 INFO c.s.b.s.i.DBInitializationServiceImpl [main] association token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhc3NvY2lhdGlvbkB0ZXN0LmNvbSIsImlhdCI6MTc1NzQxODUyNSwiZXhwIjoxNzU3NDc4NTI1fQ.gW6a7GzA3YT0mY4Kbv2PduUNiqIIX5lJ-3IZe4cElYs
2025-09-09 13:48:46,081 INFO o.a.j.l.DirectJDKLog [http-nio-auto-1-exec-1] Initializing Spring DispatcherServlet 'dispatcherServlet'
2025-09-09 13:48:46,081 INFO o.s.w.s.FrameworkServlet [http-nio-auto-1-exec-1] Initializing Servlet 'dispatcherServlet'
2025-09-09 13:48:46,082 INFO o.s.w.s.FrameworkServlet [http-nio-auto-1-exec-1] Completed initialization in 1 ms
2025-09-09 13:48:46,157 INFO o.a.j.l.DirectJDKLog [main] Pausing ProtocolHandler ["http-nio-auto-1"]
2025-09-09 13:48:46,158 INFO o.a.j.l.DirectJDKLog [main] Stopping service [Tomcat]
2025-09-09 13:48:46,159 INFO o.a.j.l.DirectJDKLog [main] Destroying Spring FrameworkServlet 'dispatcherServlet'
2025-09-09 13:48:46,161 WARN o.a.j.l.DirectJDKLog [main] The web application [ROOT] appears to have started a thread named [HikariPool-2 housekeeper] but has failed to stop it. This is very likely to create a memory leak. Stack trace of thread:
 java.base/jdk.internal.misc.Unsafe.park(Native Method)
 java.base/java.util.concurrent.locks.LockSupport.parkNanos(LockSupport.java:269)
 java.base/java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos(AbstractQueuedSynchronizer.java:1674)
 java.base/java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue.take(ScheduledThreadPoolExecutor.java:1182)
 java.base/java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue.take(ScheduledThreadPoolExecutor.java:899)
 java.base/java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:1070)
 java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1130)
 java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:642)
 java.base/java.lang.Thread.run(Thread.java:1589)
2025-09-09 13:48:46,161 WARN o.a.j.l.DirectJDKLog [main] The web application [ROOT] appears to have started a thread named [HikariPool-2 connection adder] but has failed to stop it. This is very likely to create a memory leak. Stack trace of thread:
 java.base/jdk.internal.misc.Unsafe.park(Native Method)
 java.base/java.util.concurrent.locks.LockSupport.parkNanos(LockSupport.java:269)
 java.base/java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos(AbstractQueuedSynchronizer.java:1674)
 java.base/java.util.concurrent.LinkedBlockingQueue.poll(LinkedBlockingQueue.java:460)
 java.base/java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:1069)
 java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1130)
 java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:642)
 java.base/java.lang.Thread.run(Thread.java:1589)
2025-09-09 13:48:46,163 INFO o.a.j.l.DirectJDKLog [main] Stopping ProtocolHandler ["http-nio-auto-1"]
2025-09-09 13:48:46,166 INFO o.a.j.l.DirectJDKLog [main] Destroying ProtocolHandler ["http-nio-auto-1"]
2025-09-09 13:48:46,171 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Closing JPA EntityManagerFactory for persistence unit 'default'
2025-09-09 13:48:46,174 INFO c.z.h.HikariDataSource [main] HikariPool-2 - Shutdown initiated...
2025-09-09 13:48:46,175 INFO c.z.h.HikariDataSource [main] HikariPool-2 - Shutdown completed.
2025-09-09 13:48:46,328 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:48:46,329 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2025-09-09 13:48:46,335 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:46,336 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:46,336 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-09 13:48:46,336 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 7 ms. Found 0 MongoDB repository interfaces.
2025-09-09 13:48:46,365 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-09 13:48:46,365 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2025-09-09 13:48:46,379 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 13 ms. Found 3 JPA repository interfaces.
2025-09-09 13:48:48,616 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2025-09-09 13:48:48,622 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-09 13:48:48,623 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2025-09-09 13:48:48,624 INFO c.z.h.HikariDataSource [main] HikariPool-3 - Starting...
2025-09-09 13:48:48,625 INFO c.z.h.p.HikariPool [main] HikariPool-3 - Added connection conn20: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2025-09-09 13:48:48,626 INFO c.z.h.HikariDataSource [main] HikariPool-3 - Start completed.
2025-09-09 13:48:48,645 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-09 13:48:48,700 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2025-09-09 13:48:48,716 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2025-09-09 13:48:48,832 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.11.0-26-generic"}, "platform": "Java/Oracle Corporation/19.0.2+7-44"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@2b3e4f18, com.mongodb.Jep395RecordCodecProvider@6a854c9f]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2025-09-09 13:48:48,833 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='68c014203339bf26c0ff317b', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
com.mongodb.MongoSocketOpenException: Exception opening socket
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:73)
	at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:204)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:199)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:159)
	at java.base/java.lang.Thread.run(Thread.java:1589)
Caused by: java.net.ConnectException: Connexion refusée
	at java.base/sun.nio.ch.Net.pollConnect(Native Method)
	at java.base/sun.nio.ch.Net.pollConnectNow(Net.java:672)
	at java.base/sun.nio.ch.NioSocketImpl.timedFinishConnect(NioSocketImpl.java:535)
	at java.base/sun.nio.ch.NioSocketImpl.connect(NioSocketImpl.java:585)
	at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:327)
	at java.base/java.net.Socket.connect(Socket.java:666)
	at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107)
	at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:82)
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:68)
	... 4 common frames omitted
2025-09-09 13:48:48,904 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2025-09-09 13:48:48,927 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@7ab971c3, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@31a94967, org.springframework.security.web.context.SecurityContextHolderFilter@3d479fd6, org.springframework.security.web.header.HeaderWriterFilter@17c0e3c8, org.springframework.security.web.authentication.logout.LogoutFilter@17fb840f, com.setup.backend.configs.security.JwtAuthenticationFilter@566e279b, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@48014366, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@58cf370d, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@7b3f5470, org.springframework.security.web.session.SessionManagementFilter@6834dec4, org.springframework.security.web.access.ExceptionTranslationFilter@76707860, org.springframework.security.web.access.intercept.AuthorizationFilter@74f5cd03]
2025-09-09 13:48:49,138 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2025-09-09 13:48:49,152 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:49,152 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:49,153 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2025-09-09 13:48:49,168 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2025-09-09 13:48:49,168 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2025-09-09 13:48:49,170 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 2 ms
2025-09-09 13:48:50,259 INFO o.s.o.j.AbstractEntityManagerFactoryBean [SpringContextShutdownHook] Closing JPA EntityManagerFactory for persistence unit 'default'
2025-09-09 13:48:50,260 INFO c.z.h.HikariDataSource [SpringContextShutdownHook] HikariPool-3 - Shutdown initiated...
2025-09-09 13:48:50,262 INFO o.s.o.j.AbstractEntityManagerFactoryBean [SpringApplicationShutdownHook] Closing JPA EntityManagerFactory for persistence unit 'default'
2025-09-09 13:48:50,263 INFO c.z.h.HikariDataSource [SpringContextShutdownHook] HikariPool-3 - Shutdown completed.
2025-09-09 13:48:50,263 INFO c.z.h.HikariDataSource [SpringApplicationShutdownHook] HikariPool-1 - Shutdown initiated...
2025-09-09 13:48:50,265 INFO c.z.h.HikariDataSource [SpringApplicationShutdownHook] HikariPool-1 - Shutdown completed.
