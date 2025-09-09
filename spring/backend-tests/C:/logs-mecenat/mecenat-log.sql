2025-09-07 14:52:14,989 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.BackendApplicationTests]: BackendApplicationTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2025-09-07 14:52:15,221 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.BackendApplicationTests
2025-09-07 14:52:15,761 INFO o.s.b.StartupInfoLogger [main] Starting BackendApplicationTests using Java 19.0.2 with PID 271391 (started by bolan in /home/bolan/Bureau/mecenat/mecenat-backend/spring/backend-tests)
2025-09-07 14:52:15,762 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2025-09-07 14:52:15,762 INFO o.s.b.SpringApplication [main] The following 1 profile is active: "test"
2025-09-07 14:52:16,562 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-07 14:52:16,563 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2025-09-07 14:52:16,608 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-07 14:52:16,612 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-07 14:52:16,616 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-07 14:52:16,617 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 45 ms. Found 0 MongoDB repository interfaces.
2025-09-07 14:52:16,950 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-07 14:52:16,952 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2025-09-07 14:52:17,009 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 51 ms. Found 3 JPA repository interfaces.
2025-09-07 14:52:17,636 WARN c.h.l.StandardLoggerFactory$StandardLogger [main] Hazelcast is starting in a Java modular environment (Java 9 and newer) but without proper access to required Java packages. Use additional Java arguments to provide Hazelcast access to Java internal API. The internal API access is used to get the best performance results. Arguments to be used:
 --add-modules java.se --add-exports java.base/jdk.internal.ref=ALL-UNNAMED --add-opens java.base/java.lang=ALL-UNNAMED --add-opens java.base/java.nio=ALL-UNNAMED --add-opens java.base/sun.nio.ch=ALL-UNNAMED --add-opens java.management/sun.management=ALL-UNNAMED --add-opens jdk.management/com.sun.management.internal=ALL-UNNAMED
2025-09-07 14:52:17,738 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] 
	+       +  o    o     o     o---o o----o o      o---o     o     o----o o--o--o
	+ +   + +  |    |    / \       /  |      |     /         / \    |         |   
	+ + + + +  o----o   o   o     o   o----o |    o         o   o   o----o    |   
	+ +   + +  |    |  /     \   /    |      |     \       /     \       |    |   
	+       +  o    o o       o o---o o----o o----o o---o o       o o----o    o   
2025-09-07 14:52:17,738 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Copyright (c) 2008-2021, Hazelcast, Inc. All Rights Reserved.
2025-09-07 14:52:17,738 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Hazelcast Platform 5.0-BETA-1 (20210713 - e8e010a) starting at [172.18.0.1]:5701
2025-09-07 14:52:17,739 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Cluster name: dev
2025-09-07 14:52:17,739 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Jet is disabled. Enable it by setting the "hz.jet.enabled" property to true.
2025-09-07 14:52:18,255 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Using Multicast discovery
2025-09-07 14:52:18,262 WARN c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] CP Subsystem is not enabled. CP data structures will operate in UNSAFE mode! Please note that UNSAFE mode will not provide strong consistency guarantees.
2025-09-07 14:52:18,668 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Diagnostics disabled. To enable add -Dhazelcast.diagnostics.enabled=true to the JVM arguments.
2025-09-07 14:52:18,676 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] [172.18.0.1]:5701 is STARTING
2025-09-07 14:52:20,863 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] 

Members {size:1, ver:1} [
	Member [172.18.0.1]:5701 - f9089d9a-714b-4a24-8a05-b83ba5b92bb7 this
]

2025-09-07 14:52:20,894 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] [172.18.0.1]:5701 is STARTED
2025-09-07 14:52:21,101 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2025-09-07 14:52:21,174 INFO o.h.Version [main] HHH000412: Hibernate ORM core version [WORKING]
2025-09-07 14:52:21,179 INFO o.h.c.Environment [main] HHH000406: Using bytecode reflection optimizer
2025-09-07 14:52:21,359 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-07 14:52:21,543 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2025-09-07 14:52:21,567 INFO c.z.h.HikariDataSource [main] HikariPool-1 - Starting...
2025-09-07 14:52:21,924 INFO c.z.h.p.HikariPool [main] HikariPool-1 - Added connection conn0: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2025-09-07 14:52:21,926 INFO c.z.h.HikariDataSource [main] HikariPool-1 - Start completed.
2025-09-07 14:52:22,267 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-07 14:52:23,086 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2025-09-07 14:52:23,167 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2025-09-07 14:52:23,501 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.UserRepository
2025-09-07 14:52:23,589 INFO o.s.d.j.r.q.QueryEnhancerFactory [main] Hibernate is in classpath; If applicable, HQL parser will be used.
2025-09-07 14:52:24,187 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.TokenRepository
2025-09-07 14:52:24,277 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.ActivationHashRepository
2025-09-07 14:52:24,491 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2025-09-07 14:52:24,605 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@d91430b, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@3d7aad2b, org.springframework.security.web.context.SecurityContextHolderFilter@2a5da5f6, org.springframework.security.web.header.HeaderWriterFilter@2132d921, org.springframework.security.web.authentication.logout.LogoutFilter@4721b3b1, com.setup.backend.configs.security.JwtAuthenticationFilter@3a7e556f, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@5b612019, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@f21ed4f, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@4210c48e, org.springframework.security.web.session.SessionManagementFilter@273aaf81, org.springframework.security.web.access.ExceptionTranslationFilter@65567d3c, org.springframework.security.web.access.intercept.AuthorizationFilter@60fa1436]
2025-09-07 14:52:25,483 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.11.0-26-generic"}, "platform": "Java/Oracle Corporation/19.0.2+7-44"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@5886b2ad, com.mongodb.Jep395RecordCodecProvider@4e32581e]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2025-09-07 14:52:25,488 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='68bd800959125b5fa9da5145', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
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
2025-09-07 14:52:25,775 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2025-09-07 14:52:25,803 INFO o.s.b.StartupInfoLogger [main] Started BackendApplicationTests in 10.354 seconds (process running for 12.568)
2025-09-07 14:52:26,232 INFO c.s.b.s.i.DBInitializationServiceImpl [main] admin token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkB0ZXN0LmNvbSIsImlhdCI6MTc1NzI0OTU0NiwiZXhwIjoxNzU3MzA5NTQ2fQ.mbD0vymrSw6LFqowsci0MU58EJvt2mFCOXWGB9VDo7U
2025-09-07 14:52:26,332 INFO c.s.b.s.i.DBInitializationServiceImpl [main] User token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyQHRlc3QuY29tIiwiaWF0IjoxNzU3MjQ5NTQ2LCJleHAiOjE3NTczMDk1NDZ9.Gc4tYqpxMMHUvy--jTBnJvkrFbKb8WLn_5qGre2ckGU
2025-09-07 14:52:26,406 INFO c.s.b.s.i.DBInitializationServiceImpl [main] Enterprise token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlbnRlcnByaXNlQHRlc3QuY29tIiwiaWF0IjoxNzU3MjQ5NTQ2LCJleHAiOjE3NTczMDk1NDZ9.gT-AtMHl6TWji66ns3R8L2aOBEXtvXpP-SVZGgFfIgI
2025-09-07 14:52:26,478 INFO c.s.b.s.i.DBInitializationServiceImpl [main] association token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhc3NvY2lhdGlvbkB0ZXN0LmNvbSIsImlhdCI6MTc1NzI0OTU0NiwiZXhwIjoxNzU3MzA5NTQ2fQ.5w_MSf7buSob7lzUSWtjIiT1CQwr9s5TY8YWEfv4FYk
2025-09-07 14:52:27,287 INFO o.s.o.j.AbstractEntityManagerFactoryBean [SpringApplicationShutdownHook] Closing JPA EntityManagerFactory for persistence unit 'default'
2025-09-07 14:52:27,292 INFO c.z.h.HikariDataSource [SpringApplicationShutdownHook] HikariPool-1 - Shutdown initiated...
2025-09-07 14:52:27,295 INFO c.z.h.HikariDataSource [SpringApplicationShutdownHook] HikariPool-1 - Shutdown completed.
2025-09-07 15:28:12,285 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.BackendApplicationTests]: BackendApplicationTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2025-09-07 15:28:12,465 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.BackendApplicationTests
2025-09-07 15:28:12,995 INFO o.s.b.StartupInfoLogger [main] Starting BackendApplicationTests using Java 19.0.2 with PID 275891 (started by bolan in /home/bolan/Bureau/mecenat/mecenat-backend/spring/backend-tests)
2025-09-07 15:28:12,996 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2025-09-07 15:28:12,997 INFO o.s.b.SpringApplication [main] The following 1 profile is active: "test"
2025-09-07 15:28:13,752 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-07 15:28:13,753 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2025-09-07 15:28:13,791 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-07 15:28:13,795 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-07 15:28:13,799 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2025-09-07 15:28:13,801 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 40 ms. Found 0 MongoDB repository interfaces.
2025-09-07 15:28:14,145 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2025-09-07 15:28:14,148 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2025-09-07 15:28:14,227 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 73 ms. Found 3 JPA repository interfaces.
2025-09-07 15:28:14,941 WARN c.h.l.StandardLoggerFactory$StandardLogger [main] Hazelcast is starting in a Java modular environment (Java 9 and newer) but without proper access to required Java packages. Use additional Java arguments to provide Hazelcast access to Java internal API. The internal API access is used to get the best performance results. Arguments to be used:
 --add-modules java.se --add-exports java.base/jdk.internal.ref=ALL-UNNAMED --add-opens java.base/java.lang=ALL-UNNAMED --add-opens java.base/java.nio=ALL-UNNAMED --add-opens java.base/sun.nio.ch=ALL-UNNAMED --add-opens java.management/sun.management=ALL-UNNAMED --add-opens jdk.management/com.sun.management.internal=ALL-UNNAMED
2025-09-07 15:28:15,037 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] 
	+       +  o    o     o     o---o o----o o      o---o     o     o----o o--o--o
	+ +   + +  |    |    / \       /  |      |     /         / \    |         |   
	+ + + + +  o----o   o   o     o   o----o |    o         o   o   o----o    |   
	+ +   + +  |    |  /     \   /    |      |     \       /     \       |    |   
	+       +  o    o o       o o---o o----o o----o o---o o       o o----o    o   
2025-09-07 15:28:15,037 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Copyright (c) 2008-2021, Hazelcast, Inc. All Rights Reserved.
2025-09-07 15:28:15,038 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Hazelcast Platform 5.0-BETA-1 (20210713 - e8e010a) starting at [172.18.0.1]:5701
2025-09-07 15:28:15,038 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Cluster name: dev
2025-09-07 15:28:15,038 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Jet is disabled. Enable it by setting the "hz.jet.enabled" property to true.
2025-09-07 15:28:15,597 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Using Multicast discovery
2025-09-07 15:28:15,606 WARN c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] CP Subsystem is not enabled. CP data structures will operate in UNSAFE mode! Please note that UNSAFE mode will not provide strong consistency guarantees.
2025-09-07 15:28:16,061 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Diagnostics disabled. To enable add -Dhazelcast.diagnostics.enabled=true to the JVM arguments.
2025-09-07 15:28:16,068 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] [172.18.0.1]:5701 is STARTING
2025-09-07 15:28:18,397 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] 

Members {size:1, ver:1} [
	Member [172.18.0.1]:5701 - b6da3834-e735-4387-a797-100b30a6c240 this
]

2025-09-07 15:28:18,413 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [172.18.0.1]:5701 [dev] [5.0-BETA-1] [172.18.0.1]:5701 is STARTED
2025-09-07 15:28:18,591 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2025-09-07 15:28:18,661 INFO o.h.Version [main] HHH000412: Hibernate ORM core version [WORKING]
2025-09-07 15:28:18,665 INFO o.h.c.Environment [main] HHH000406: Using bytecode reflection optimizer
2025-09-07 15:28:18,836 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-07 15:28:19,007 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2025-09-07 15:28:19,029 INFO c.z.h.HikariDataSource [main] HikariPool-1 - Starting...
2025-09-07 15:28:19,355 INFO c.z.h.p.HikariPool [main] HikariPool-1 - Added connection conn0: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2025-09-07 15:28:19,357 INFO c.z.h.HikariDataSource [main] HikariPool-1 - Start completed.
2025-09-07 15:28:19,691 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2025-09-07 15:28:20,499 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2025-09-07 15:28:20,577 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2025-09-07 15:28:20,858 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.UserRepository
2025-09-07 15:28:20,936 INFO o.s.d.j.r.q.QueryEnhancerFactory [main] Hibernate is in classpath; If applicable, HQL parser will be used.
2025-09-07 15:28:21,508 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.TokenRepository
2025-09-07 15:28:21,601 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.ActivationHashRepository
2025-09-07 15:28:21,822 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2025-09-07 15:28:21,941 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@8362d66, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@65a14ef7, org.springframework.security.web.context.SecurityContextHolderFilter@89ba325, org.springframework.security.web.header.HeaderWriterFilter@260cb066, org.springframework.security.web.authentication.logout.LogoutFilter@60fa1436, com.setup.backend.configs.security.JwtAuthenticationFilter@15dd0233, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@216d9454, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@2a51e358, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@3f76aeac, org.springframework.security.web.session.SessionManagementFilter@48949b48, org.springframework.security.web.access.ExceptionTranslationFilter@3cee8415, org.springframework.security.web.access.intercept.AuthorizationFilter@3afae00f]
2025-09-07 15:28:23,167 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='68bd88775e425b328ce5b896', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
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
2025-09-07 15:28:23,175 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.11.0-26-generic"}, "platform": "Java/Oracle Corporation/19.0.2+7-44"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@1754aaa4, com.mongodb.Jep395RecordCodecProvider@52884195]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2025-09-07 15:28:23,647 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2025-09-07 15:28:23,695 INFO o.s.b.StartupInfoLogger [main] Started BackendApplicationTests in 11.002 seconds (process running for 12.735)
2025-09-07 15:28:24,170 INFO c.s.b.s.i.DBInitializationServiceImpl [main] admin token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkB0ZXN0LmNvbSIsImlhdCI6MTc1NzI1MTcwNCwiZXhwIjoxNzU3MzExNzA0fQ.cp5FXniT1WJe5anzdLC6LXUIQ1w2uvTsUtGnsQHa474
2025-09-07 15:28:24,275 INFO c.s.b.s.i.DBInitializationServiceImpl [main] User token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyQHRlc3QuY29tIiwiaWF0IjoxNzU3MjUxNzA0LCJleHAiOjE3NTczMTE3MDR9.WLMU2GjQPfiwAfNLJfw4wdolq8fsQeDqMYTpDAZ-CA8
2025-09-07 15:28:24,379 INFO c.s.b.s.i.DBInitializationServiceImpl [main] Enterprise token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlbnRlcnByaXNlQHRlc3QuY29tIiwiaWF0IjoxNzU3MjUxNzA0LCJleHAiOjE3NTczMTE3MDR9.-T_InskTAjOtjUUz5y9sgGwkRsETyuf7EJzshCqIyu8
2025-09-07 15:28:24,466 INFO c.s.b.s.i.DBInitializationServiceImpl [main] association token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhc3NvY2lhdGlvbkB0ZXN0LmNvbSIsImlhdCI6MTc1NzI1MTcwNCwiZXhwIjoxNzU3MzExNzA0fQ.673_zmfron1qSs858rwMm_A5xAZ-40iaOuGK8yYT0CM
2025-09-07 15:28:25,099 INFO c.h.l.StandardLoggerFactory$StandardLogger [hz.ShutdownThread] [172.18.0.1]:5701 [dev] [5.0-BETA-1] Running shutdown hook... Current state: ACTIVE
2025-09-07 15:28:25,260 INFO o.s.o.j.AbstractEntityManagerFactoryBean [SpringApplicationShutdownHook] Closing JPA EntityManagerFactory for persistence unit 'default'
2025-09-07 15:28:25,263 INFO c.z.h.HikariDataSource [SpringApplicationShutdownHook] HikariPool-1 - Shutdown initiated...
2025-09-07 15:28:25,266 INFO c.z.h.HikariDataSource [SpringApplicationShutdownHook] HikariPool-1 - Shutdown completed.
