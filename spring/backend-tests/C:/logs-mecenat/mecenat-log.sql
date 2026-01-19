2026-01-20 00:00:34,252 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.BackendApplicationTests]: BackendApplicationTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2026-01-20 00:00:34,445 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.BackendApplicationTests
2026-01-20 00:00:35,069 INFO o.s.b.StartupInfoLogger [main] Starting BackendApplicationTests using Java 17.0.17 with PID 42980 (started by bolan in /home/bolan/Documents/setup_backenf/spring/backend-tests)
2026-01-20 00:00:35,070 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2026-01-20 00:00:35,071 INFO o.s.b.SpringApplication [main] The following 1 profile is active: "test"
2026-01-20 00:00:35,888 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:00:35,889 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2026-01-20 00:00:35,938 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:35,942 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:35,945 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:35,946 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 46 ms. Found 0 MongoDB repository interfaces.
2026-01-20 00:00:36,320 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:00:36,322 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2026-01-20 00:00:36,394 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 66 ms. Found 3 JPA repository interfaces.
2026-01-20 00:00:37,058 WARN c.h.l.StandardLoggerFactory$StandardLogger [main] Hazelcast is starting in a Java modular environment (Java 9 and newer) but without proper access to required Java packages. Use additional Java arguments to provide Hazelcast access to Java internal API. The internal API access is used to get the best performance results. Arguments to be used:
 --add-modules java.se --add-exports java.base/jdk.internal.ref=ALL-UNNAMED --add-opens java.base/java.lang=ALL-UNNAMED --add-opens java.base/java.nio=ALL-UNNAMED --add-opens java.base/sun.nio.ch=ALL-UNNAMED --add-opens java.management/sun.management=ALL-UNNAMED --add-opens jdk.management/com.sun.management.internal=ALL-UNNAMED
2026-01-20 00:00:37,157 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] 
	+       +  o    o     o     o---o o----o o      o---o     o     o----o o--o--o
	+ +   + +  |    |    / \       /  |      |     /         / \    |         |   
	+ + + + +  o----o   o   o     o   o----o |    o         o   o   o----o    |   
	+ +   + +  |    |  /     \   /    |      |     \       /     \       |    |   
	+       +  o    o o       o o---o o----o o----o o---o o       o o----o    o   
2026-01-20 00:00:37,157 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] Copyright (c) 2008-2021, Hazelcast, Inc. All Rights Reserved.
2026-01-20 00:00:37,157 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] Hazelcast Platform 5.0-BETA-1 (20210713 - e8e010a) starting at [192.168.1.121]:5701
2026-01-20 00:00:37,158 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] Cluster name: dev
2026-01-20 00:00:37,158 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] Jet is disabled. Enable it by setting the "hz.jet.enabled" property to true.
2026-01-20 00:00:37,689 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] Using Multicast discovery
2026-01-20 00:00:37,696 WARN c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] CP Subsystem is not enabled. CP data structures will operate in UNSAFE mode! Please note that UNSAFE mode will not provide strong consistency guarantees.
2026-01-20 00:00:38,076 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] Diagnostics disabled. To enable add -Dhazelcast.diagnostics.enabled=true to the JVM arguments.
2026-01-20 00:00:38,085 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] [192.168.1.121]:5701 is STARTING
2026-01-20 00:00:39,888 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] 

Members {size:1, ver:1} [
	Member [192.168.1.121]:5701 - 821f2010-828a-4d7a-959a-dd7500e4e6a0 this
]

2026-01-20 00:00:39,907 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] [192.168.1.121]:5701 is STARTED
2026-01-20 00:00:40,088 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2026-01-20 00:00:40,160 INFO o.h.Version [main] HHH000412: Hibernate ORM core version [WORKING]
2026-01-20 00:00:40,164 INFO o.h.c.Environment [main] HHH000406: Using bytecode reflection optimizer
2026-01-20 00:00:40,338 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2026-01-20 00:00:40,514 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2026-01-20 00:00:40,541 INFO c.z.h.HikariDataSource [main] HikariPool-1 - Starting...
2026-01-20 00:00:40,932 INFO c.z.h.p.HikariPool [main] HikariPool-1 - Added connection conn0: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2026-01-20 00:00:40,936 INFO c.z.h.HikariDataSource [main] HikariPool-1 - Start completed.
2026-01-20 00:00:41,361 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2026-01-20 00:00:42,247 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2026-01-20 00:00:42,331 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2026-01-20 00:00:42,670 INFO o.s.d.j.r.q.QueryEnhancerFactory [main] Hibernate is in classpath; If applicable, HQL parser will be used.
2026-01-20 00:00:43,238 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.UserRepository
2026-01-20 00:00:43,408 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.TokenRepository
2026-01-20 00:00:43,500 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.ActivationHashRepository
2026-01-20 00:00:43,686 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.14.0-37-generic"}, "platform": "Java/Ubuntu/17.0.17+10-Ubuntu-124.04"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@771c658d, com.mongodb.Jep395RecordCodecProvider@3e9bc533]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2026-01-20 00:00:43,684 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='696eb79b8be1f65e7c36b416', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
com.mongodb.MongoSocketOpenException: Exception opening socket
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:73)
	at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:204)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:199)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:159)
	at java.base/java.lang.Thread.run(Thread.java:840)
Caused by: java.net.ConnectException: Connexion refusée
	at java.base/sun.nio.ch.Net.pollConnect(Native Method)
	at java.base/sun.nio.ch.Net.pollConnectNow(Net.java:672)
	at java.base/sun.nio.ch.NioSocketImpl.timedFinishConnect(NioSocketImpl.java:547)
	at java.base/sun.nio.ch.NioSocketImpl.connect(NioSocketImpl.java:602)
	at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:327)
	at java.base/java.net.Socket.connect(Socket.java:633)
	at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107)
	at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:82)
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:68)
	... 4 common frames omitted
2026-01-20 00:00:44,038 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2026-01-20 00:00:44,164 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@35580065, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@42f4bc9e, org.springframework.security.web.context.SecurityContextHolderFilter@472df1b5, org.springframework.security.web.header.HeaderWriterFilter@2c37626f, org.springframework.security.web.authentication.logout.LogoutFilter@c1fb6f4, com.setup.backend.configs.security.JwtAuthenticationFilter@5a605d86, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@5a54e746, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@39ff2654, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@187ff373, org.springframework.security.web.session.SessionManagementFilter@6b6c7472, org.springframework.security.web.access.ExceptionTranslationFilter@1183f35c, org.springframework.security.web.access.intercept.AuthorizationFilter@64127921]
2026-01-20 00:00:44,928 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2026-01-20 00:00:44,962 INFO o.s.b.StartupInfoLogger [main] Started BackendApplicationTests in 10.247 seconds (process running for 12.322)
2026-01-20 00:00:45,389 INFO c.s.b.s.i.DBInitializationServiceImpl [main] admin token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkB0ZXN0LmNvbSIsImlhdCI6MTc2ODg2MzY0NSwiZXhwIjoxNzY4OTIzNjQ1fQ.Eep8mToPYbJ4gg-B3F3Z1MwlCCug0sGr2bOiMRQNTzw
2026-01-20 00:00:45,480 INFO c.s.b.s.i.DBInitializationServiceImpl [main] User token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyQHRlc3QuY29tIiwiaWF0IjoxNzY4ODYzNjQ1LCJleHAiOjE3Njg5MjM2NDV9.ygThP3cUflHuR0Sr5rhqQs0lOl5qwuUpaqrgXplybqs
2026-01-20 00:00:45,564 INFO c.s.b.s.i.DBInitializationServiceImpl [main] Enterprise token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlbnRlcnByaXNlQHRlc3QuY29tIiwiaWF0IjoxNzY4ODYzNjQ1LCJleHAiOjE3Njg5MjM2NDV9.jhiGfwyJeVfjZ6qnqc3n5HDTr29-AibtlUxu9j0y1m0
2026-01-20 00:00:45,647 INFO c.s.b.s.i.DBInitializationServiceImpl [main] association token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhc3NvY2lhdGlvbkB0ZXN0LmNvbSIsImlhdCI6MTc2ODg2MzY0NSwiZXhwIjoxNzY4OTIzNjQ1fQ.2SEAxApZp_3K5UwHwK436mluzvbqbBqoUTqhPNLAAPY
2026-01-20 00:00:46,507 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:00:46,507 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2026-01-20 00:00:46,516 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:46,517 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:46,518 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:46,519 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 10 ms. Found 0 MongoDB repository interfaces.
2026-01-20 00:00:46,579 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:00:46,579 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2026-01-20 00:00:46,608 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 28 ms. Found 3 JPA repository interfaces.
2026-01-20 00:00:47,593 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2026-01-20 00:00:47,605 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2026-01-20 00:00:47,606 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2026-01-20 00:00:47,608 INFO c.z.h.HikariDataSource [main] HikariPool-2 - Starting...
2026-01-20 00:00:47,610 INFO c.z.h.p.HikariPool [main] HikariPool-2 - Added connection conn10: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2026-01-20 00:00:47,611 INFO c.z.h.HikariDataSource [main] HikariPool-2 - Start completed.
2026-01-20 00:00:47,646 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2026-01-20 00:00:47,746 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2026-01-20 00:00:47,777 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2026-01-20 00:00:48,061 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.14.0-37-generic"}, "platform": "Java/Ubuntu/17.0.17+10-Ubuntu-124.04"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@771c658d, com.mongodb.Jep395RecordCodecProvider@3e9bc533]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2026-01-20 00:00:48,061 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='696eb7a08be1f65e7c36b417', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
com.mongodb.MongoSocketOpenException: Exception opening socket
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:73)
	at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:204)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:199)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:159)
	at java.base/java.lang.Thread.run(Thread.java:840)
Caused by: java.net.ConnectException: Connexion refusée
	at java.base/sun.nio.ch.Net.pollConnect(Native Method)
	at java.base/sun.nio.ch.Net.pollConnectNow(Net.java:672)
	at java.base/sun.nio.ch.NioSocketImpl.timedFinishConnect(NioSocketImpl.java:547)
	at java.base/sun.nio.ch.NioSocketImpl.connect(NioSocketImpl.java:602)
	at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:327)
	at java.base/java.net.Socket.connect(Socket.java:633)
	at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107)
	at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:82)
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:68)
	... 4 common frames omitted
2026-01-20 00:00:48,239 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2026-01-20 00:00:48,286 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@76e431b7, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@5a4bf9c2, org.springframework.security.web.context.SecurityContextHolderFilter@3cad2dd4, org.springframework.security.web.header.HeaderWriterFilter@7c0368da, org.springframework.security.web.authentication.logout.LogoutFilter@4dac25ec, com.setup.backend.configs.security.JwtAuthenticationFilter@f401e2e, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@45f5415f, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@22d7a483, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@1be309a6, org.springframework.security.web.session.SessionManagementFilter@7fa8bfe4, org.springframework.security.web.access.ExceptionTranslationFilter@62f37a44, org.springframework.security.web.access.intercept.AuthorizationFilter@3dd021c7]
2026-01-20 00:00:48,690 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2026-01-20 00:00:48,771 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:48,772 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:48,774 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 2 ms
2026-01-20 00:00:48,808 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:48,808 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:48,810 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:00:50,220 INFO o.s.b.StartupInfoLogger [main] Starting AuthenticationControllerIntTests using Java 17.0.17 with PID 42980 (started by bolan in /home/bolan/Documents/setup_backenf/spring/backend-tests)
2026-01-20 00:00:50,221 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2026-01-20 00:00:50,221 INFO o.s.b.SpringApplication [main] The following 1 profile is active: "test"
2026-01-20 00:00:50,527 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:00:50,528 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2026-01-20 00:00:50,555 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:50,557 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:50,559 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:50,560 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 31 ms. Found 0 MongoDB repository interfaces.
2026-01-20 00:00:50,680 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:00:50,681 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2026-01-20 00:00:50,745 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 63 ms. Found 3 JPA repository interfaces.
2026-01-20 00:00:51,227 INFO o.s.b.w.e.t.TomcatWebServer [main] Tomcat initialized with port(s): 0 (http)
2026-01-20 00:00:51,250 INFO o.a.j.l.DirectJDKLog [main] Initializing ProtocolHandler ["http-nio-auto-1"]
2026-01-20 00:00:51,254 INFO o.a.j.l.DirectJDKLog [main] Starting service [Tomcat]
2026-01-20 00:00:51,255 INFO o.a.j.l.DirectJDKLog [main] Starting Servlet engine: [Apache Tomcat/10.1.11]
2026-01-20 00:00:51,422 INFO o.a.j.l.DirectJDKLog [main] Initializing Spring embedded WebApplicationContext
2026-01-20 00:00:51,423 INFO o.s.b.w.s.c.ServletWebServerApplicationContext [main] Root WebApplicationContext: initialization completed in 1198 ms
2026-01-20 00:00:51,534 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2026-01-20 00:00:51,544 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2026-01-20 00:00:51,545 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2026-01-20 00:00:51,547 INFO c.z.h.HikariDataSource [main] HikariPool-3 - Starting...
2026-01-20 00:00:51,549 INFO c.z.h.p.HikariPool [main] HikariPool-3 - Added connection conn20: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2026-01-20 00:00:51,550 INFO c.z.h.HikariDataSource [main] HikariPool-3 - Start completed.
2026-01-20 00:00:51,574 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2026-01-20 00:00:51,661 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2026-01-20 00:00:51,680 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2026-01-20 00:00:51,913 DEBUG o.s.w.f.GenericFilterBean [main] Filter 'jwtAuthenticationFilter' configured for use
2026-01-20 00:00:52,032 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='696eb7a48be1f65e7c36b418', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
com.mongodb.MongoSocketOpenException: Exception opening socket
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:73)
	at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:204)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:199)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:159)
	at java.base/java.lang.Thread.run(Thread.java:840)
Caused by: java.net.ConnectException: Connexion refusée
	at java.base/sun.nio.ch.Net.pollConnect(Native Method)
	at java.base/sun.nio.ch.Net.pollConnectNow(Net.java:672)
	at java.base/sun.nio.ch.NioSocketImpl.timedFinishConnect(NioSocketImpl.java:547)
	at java.base/sun.nio.ch.NioSocketImpl.connect(NioSocketImpl.java:602)
	at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:327)
	at java.base/java.net.Socket.connect(Socket.java:633)
	at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107)
	at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:82)
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:68)
	... 4 common frames omitted
2026-01-20 00:00:52,032 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.14.0-37-generic"}, "platform": "Java/Ubuntu/17.0.17+10-Ubuntu-124.04"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@771c658d, com.mongodb.Jep395RecordCodecProvider@3e9bc533]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2026-01-20 00:00:52,178 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2026-01-20 00:00:52,221 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@123e8cec, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@7b842d4c, org.springframework.security.web.context.SecurityContextHolderFilter@119e720d, org.springframework.security.web.header.HeaderWriterFilter@41effced, org.springframework.security.web.authentication.logout.LogoutFilter@73134817, com.setup.backend.configs.security.JwtAuthenticationFilter@49695973, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@17650196, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@29d38f03, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@1b530b60, org.springframework.security.web.session.SessionManagementFilter@f96e056, org.springframework.security.web.access.ExceptionTranslationFilter@47182ca4, org.springframework.security.web.access.intercept.AuthorizationFilter@79dbbb5e]
2026-01-20 00:00:52,572 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2026-01-20 00:00:52,628 INFO o.a.j.l.DirectJDKLog [main] Starting ProtocolHandler ["http-nio-auto-1"]
2026-01-20 00:00:52,652 INFO o.s.b.w.e.t.TomcatWebServer [main] Tomcat started on port(s): 33873 (http) with context path ''
2026-01-20 00:00:52,659 INFO o.s.b.StartupInfoLogger [main] Started AuthenticationControllerIntTests in 2.479 seconds (process running for 20.019)
2026-01-20 00:00:52,760 INFO c.s.b.s.i.DBInitializationServiceImpl [main] admin token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkB0ZXN0LmNvbSIsImlhdCI6MTc2ODg2MzY1MiwiZXhwIjoxNzY4OTIzNjUyfQ.3K3ldgkfmBeiEuwmLvCI5sf2Ja0nyJ09mV8YJl5zmYg
2026-01-20 00:00:52,847 INFO c.s.b.s.i.DBInitializationServiceImpl [main] User token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyQHRlc3QuY29tIiwiaWF0IjoxNzY4ODYzNjUyLCJleHAiOjE3Njg5MjM2NTJ9.duUSMrmmSlyMi0FLXGUZvBmTEIyMtJUxNoxcXelLE0s
2026-01-20 00:00:52,936 INFO c.s.b.s.i.DBInitializationServiceImpl [main] Enterprise token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlbnRlcnByaXNlQHRlc3QuY29tIiwiaWF0IjoxNzY4ODYzNjUyLCJleHAiOjE3Njg5MjM2NTJ9.DgenFEeanmnMUjc-LpbjnmTPJXOA4timarUJqlILJVs
2026-01-20 00:00:53,032 INFO c.s.b.s.i.DBInitializationServiceImpl [main] association token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhc3NvY2lhdGlvbkB0ZXN0LmNvbSIsImlhdCI6MTc2ODg2MzY1MywiZXhwIjoxNzY4OTIzNjUzfQ.50Qi_L75V--oHptJq2sQkQX0HR5QTYgT4vjoMBs3vK4
2026-01-20 00:00:53,320 INFO o.a.j.l.DirectJDKLog [http-nio-auto-1-exec-1] Initializing Spring DispatcherServlet 'dispatcherServlet'
2026-01-20 00:00:53,320 INFO o.s.w.s.FrameworkServlet [http-nio-auto-1-exec-1] Initializing Servlet 'dispatcherServlet'
2026-01-20 00:00:53,321 INFO o.s.w.s.FrameworkServlet [http-nio-auto-1-exec-1] Completed initialization in 1 ms
2026-01-20 00:00:53,409 INFO o.a.j.l.DirectJDKLog [main] Pausing ProtocolHandler ["http-nio-auto-1"]
2026-01-20 00:00:53,409 INFO o.a.j.l.DirectJDKLog [main] Stopping service [Tomcat]
2026-01-20 00:00:53,413 INFO o.a.j.l.DirectJDKLog [main] Destroying Spring FrameworkServlet 'dispatcherServlet'
2026-01-20 00:00:53,417 WARN o.a.j.l.DirectJDKLog [main] The web application [ROOT] appears to have started a thread named [HikariPool-3 housekeeper] but has failed to stop it. This is very likely to create a memory leak. Stack trace of thread:
 java.base@17.0.17/jdk.internal.misc.Unsafe.park(Native Method)
 java.base@17.0.17/java.util.concurrent.locks.LockSupport.parkNanos(LockSupport.java:252)
 java.base@17.0.17/java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos(AbstractQueuedSynchronizer.java:1679)
 java.base@17.0.17/java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue.take(ScheduledThreadPoolExecutor.java:1182)
 java.base@17.0.17/java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue.take(ScheduledThreadPoolExecutor.java:899)
 java.base@17.0.17/java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:1062)
 java.base@17.0.17/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1122)
 java.base@17.0.17/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
 java.base@17.0.17/java.lang.Thread.run(Thread.java:840)
2026-01-20 00:00:53,418 WARN o.a.j.l.DirectJDKLog [main] The web application [ROOT] appears to have started a thread named [HikariPool-3 connection adder] but has failed to stop it. This is very likely to create a memory leak. Stack trace of thread:
 java.base@17.0.17/jdk.internal.misc.Unsafe.park(Native Method)
 java.base@17.0.17/java.util.concurrent.locks.LockSupport.parkNanos(LockSupport.java:252)
 java.base@17.0.17/java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos(AbstractQueuedSynchronizer.java:1679)
 java.base@17.0.17/java.util.concurrent.LinkedBlockingQueue.poll(LinkedBlockingQueue.java:460)
 java.base@17.0.17/java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:1061)
 java.base@17.0.17/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1122)
 java.base@17.0.17/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
 java.base@17.0.17/java.lang.Thread.run(Thread.java:840)
2026-01-20 00:00:53,421 INFO o.a.j.l.DirectJDKLog [main] Stopping ProtocolHandler ["http-nio-auto-1"]
2026-01-20 00:00:53,425 INFO o.a.j.l.DirectJDKLog [main] Destroying ProtocolHandler ["http-nio-auto-1"]
2026-01-20 00:00:53,432 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Closing JPA EntityManagerFactory for persistence unit 'default'
2026-01-20 00:00:53,435 INFO c.z.h.HikariDataSource [main] HikariPool-3 - Shutdown initiated...
2026-01-20 00:00:53,438 INFO c.z.h.HikariDataSource [main] HikariPool-3 - Shutdown completed.
2026-01-20 00:00:53,465 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.controllers.unit_tests.AuthenticationControllerTests]: AuthenticationControllerTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2026-01-20 00:00:53,517 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.controllers.unit_tests.AuthenticationControllerTests
2026-01-20 00:00:53,560 INFO o.s.b.StartupInfoLogger [main] Starting AuthenticationControllerTests using Java 17.0.17 with PID 42980 (started by bolan in /home/bolan/Documents/setup_backenf/spring/backend-tests)
2026-01-20 00:00:53,560 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2026-01-20 00:00:53,561 INFO o.s.b.SpringApplication [main] No active profile set, falling back to 1 default profile: "default"
2026-01-20 00:00:53,690 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:00:53,691 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2026-01-20 00:00:53,727 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:53,728 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:53,729 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:53,729 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 37 ms. Found 0 MongoDB repository interfaces.
2026-01-20 00:00:54,107 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2026-01-20 00:00:54,149 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@14de531f, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@12c5b728, org.springframework.security.web.context.SecurityContextHolderFilter@1259226e, org.springframework.security.web.header.HeaderWriterFilter@6e3b7d5e, org.springframework.security.web.csrf.CsrfFilter@6c280d43, org.springframework.security.web.authentication.logout.LogoutFilter@7d5d4e54, org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter@58bf6cb6, org.springframework.security.web.authentication.ui.DefaultLoginPageGeneratingFilter@7fb7b1ac, org.springframework.security.web.authentication.ui.DefaultLogoutPageGeneratingFilter@668defe3, org.springframework.security.web.authentication.www.BasicAuthenticationFilter@5b9f24aa, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@3eb76773, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@4ad3f425, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@44953dec, org.springframework.security.web.access.ExceptionTranslationFilter@55b42484, org.springframework.security.web.access.intercept.AuthorizationFilter@7aaca189]
2026-01-20 00:00:54,160 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,161 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,162 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2026-01-20 00:00:54,167 INFO o.s.b.StartupInfoLogger [main] Started AuthenticationControllerTests in 0.645 seconds (process running for 21.527)
2026-01-20 00:00:54,180 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,181 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,182 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:00:54,222 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.controllers.unit_tests.UserControllerTests]: UserControllerTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2026-01-20 00:00:54,226 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.controllers.unit_tests.UserControllerTests
2026-01-20 00:00:54,250 INFO o.s.b.StartupInfoLogger [main] Starting UserControllerTests using Java 17.0.17 with PID 42980 (started by bolan in /home/bolan/Documents/setup_backenf/spring/backend-tests)
2026-01-20 00:00:54,250 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2026-01-20 00:00:54,251 INFO o.s.b.SpringApplication [main] No active profile set, falling back to 1 default profile: "default"
2026-01-20 00:00:54,369 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:00:54,370 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2026-01-20 00:00:54,380 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:54,381 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:54,382 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:00:54,382 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 11 ms. Found 0 MongoDB repository interfaces.
2026-01-20 00:00:54,523 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2026-01-20 00:00:54,543 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@24c8169, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@170d464c, org.springframework.security.web.context.SecurityContextHolderFilter@34d2e0bf, org.springframework.security.web.header.HeaderWriterFilter@259d6aab, org.springframework.security.web.csrf.CsrfFilter@30962e6f, org.springframework.security.web.authentication.logout.LogoutFilter@135dd4b3, org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter@591433d1, org.springframework.security.web.authentication.ui.DefaultLoginPageGeneratingFilter@373024d3, org.springframework.security.web.authentication.ui.DefaultLogoutPageGeneratingFilter@6fff65c7, org.springframework.security.web.authentication.www.BasicAuthenticationFilter@24919c0c, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@3536551c, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@79b6c17c, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@47a6f5c8, org.springframework.security.web.access.ExceptionTranslationFilter@2cbc1e18, org.springframework.security.web.access.intercept.AuthorizationFilter@6a8feb7f]
2026-01-20 00:00:54,553 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,553 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,554 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:00:54,559 INFO o.s.b.StartupInfoLogger [main] Started UserControllerTests in 0.329 seconds (process running for 21.919)
2026-01-20 00:00:54,567 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,567 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,568 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:00:54,593 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,593 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,594 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:00:54,606 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,607 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,608 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:00:54,625 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,626 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,626 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2026-01-20 00:00:54,643 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,643 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,644 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:00:54,658 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,658 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,659 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:00:54,666 WARN c.s.b.e.GlobalExceptionHandler [main] Erreur connue: 601 - User not found
2026-01-20 00:00:54,685 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,686 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,686 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2026-01-20 00:00:54,690 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.controllers.UserController
2026-01-20 00:00:54,703 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,703 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,703 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2026-01-20 00:00:54,708 WARN c.s.b.e.GlobalExceptionHandler [main] Erreur connue: 601 - User not found
2026-01-20 00:00:54,717 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,718 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,718 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2026-01-20 00:00:54,730 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,731 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,731 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2026-01-20 00:00:54,741 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:00:54,741 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:00:54,742 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 0 ms
2026-01-20 00:00:54,745 WARN c.s.b.e.GlobalExceptionHandler [main] Erreur connue: 601 - User not found
2026-01-20 00:00:55,857 INFO o.s.o.j.AbstractEntityManagerFactoryBean [SpringContextShutdownHook] Closing JPA EntityManagerFactory for persistence unit 'default'
2026-01-20 00:00:55,859 INFO c.z.h.HikariDataSource [SpringContextShutdownHook] HikariPool-2 - Shutdown initiated...
2026-01-20 00:00:55,860 INFO o.s.o.j.AbstractEntityManagerFactoryBean [SpringApplicationShutdownHook] Closing JPA EntityManagerFactory for persistence unit 'default'
2026-01-20 00:00:55,861 INFO c.z.h.HikariDataSource [SpringContextShutdownHook] HikariPool-2 - Shutdown completed.
2026-01-20 00:00:55,861 INFO c.z.h.HikariDataSource [SpringApplicationShutdownHook] HikariPool-1 - Shutdown initiated...
2026-01-20 00:00:55,863 INFO c.z.h.HikariDataSource [SpringApplicationShutdownHook] HikariPool-1 - Shutdown completed.
2026-01-20 00:03:59,507 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.BackendApplicationTests]: BackendApplicationTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2026-01-20 00:03:59,701 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.BackendApplicationTests
2026-01-20 00:04:00,325 INFO o.s.b.StartupInfoLogger [main] Starting BackendApplicationTests using Java 17.0.17 with PID 44909 (started by bolan in /home/bolan/Documents/setup_backenf/spring/backend-tests)
2026-01-20 00:04:00,326 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2026-01-20 00:04:00,328 INFO o.s.b.SpringApplication [main] The following 1 profile is active: "test"
2026-01-20 00:04:01,416 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:04:01,418 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2026-01-20 00:04:01,468 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:01,473 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:01,475 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:01,477 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 44 ms. Found 0 MongoDB repository interfaces.
2026-01-20 00:04:01,854 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:04:01,857 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2026-01-20 00:04:01,927 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 65 ms. Found 3 JPA repository interfaces.
2026-01-20 00:04:02,727 WARN c.h.l.StandardLoggerFactory$StandardLogger [main] Hazelcast is starting in a Java modular environment (Java 9 and newer) but without proper access to required Java packages. Use additional Java arguments to provide Hazelcast access to Java internal API. The internal API access is used to get the best performance results. Arguments to be used:
 --add-modules java.se --add-exports java.base/jdk.internal.ref=ALL-UNNAMED --add-opens java.base/java.lang=ALL-UNNAMED --add-opens java.base/java.nio=ALL-UNNAMED --add-opens java.base/sun.nio.ch=ALL-UNNAMED --add-opens java.management/sun.management=ALL-UNNAMED --add-opens jdk.management/com.sun.management.internal=ALL-UNNAMED
2026-01-20 00:04:02,831 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] 
	+       +  o    o     o     o---o o----o o      o---o     o     o----o o--o--o
	+ +   + +  |    |    / \       /  |      |     /         / \    |         |   
	+ + + + +  o----o   o   o     o   o----o |    o         o   o   o----o    |   
	+ +   + +  |    |  /     \   /    |      |     \       /     \       |    |   
	+       +  o    o o       o o---o o----o o----o o---o o       o o----o    o   
2026-01-20 00:04:02,831 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] Copyright (c) 2008-2021, Hazelcast, Inc. All Rights Reserved.
2026-01-20 00:04:02,832 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] Hazelcast Platform 5.0-BETA-1 (20210713 - e8e010a) starting at [192.168.1.121]:5701
2026-01-20 00:04:02,832 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] Cluster name: dev
2026-01-20 00:04:02,832 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] Jet is disabled. Enable it by setting the "hz.jet.enabled" property to true.
2026-01-20 00:04:03,441 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] Using Multicast discovery
2026-01-20 00:04:03,448 WARN c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] CP Subsystem is not enabled. CP data structures will operate in UNSAFE mode! Please note that UNSAFE mode will not provide strong consistency guarantees.
2026-01-20 00:04:03,826 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] Diagnostics disabled. To enable add -Dhazelcast.diagnostics.enabled=true to the JVM arguments.
2026-01-20 00:04:03,834 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] [192.168.1.121]:5701 is STARTING
2026-01-20 00:04:05,881 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] 

Members {size:1, ver:1} [
	Member [192.168.1.121]:5701 - 71e478c7-f9b2-4707-a10b-1d2922e51030 this
]

2026-01-20 00:04:05,904 INFO c.h.l.StandardLoggerFactory$StandardLogger [main] [192.168.1.121]:5701 [dev] [5.0-BETA-1] [192.168.1.121]:5701 is STARTED
2026-01-20 00:04:06,102 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2026-01-20 00:04:06,185 INFO o.h.Version [main] HHH000412: Hibernate ORM core version [WORKING]
2026-01-20 00:04:06,191 INFO o.h.c.Environment [main] HHH000406: Using bytecode reflection optimizer
2026-01-20 00:04:06,406 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2026-01-20 00:04:06,597 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2026-01-20 00:04:06,623 INFO c.z.h.HikariDataSource [main] HikariPool-1 - Starting...
2026-01-20 00:04:06,993 INFO c.z.h.p.HikariPool [main] HikariPool-1 - Added connection conn0: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2026-01-20 00:04:06,997 INFO c.z.h.HikariDataSource [main] HikariPool-1 - Start completed.
2026-01-20 00:04:07,394 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2026-01-20 00:04:08,332 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2026-01-20 00:04:08,438 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2026-01-20 00:04:08,824 INFO o.s.d.j.r.q.QueryEnhancerFactory [main] Hibernate is in classpath; If applicable, HQL parser will be used.
2026-01-20 00:04:09,507 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.UserRepository
2026-01-20 00:04:09,705 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.TokenRepository
2026-01-20 00:04:09,792 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.repositories.ActivationHashRepository
2026-01-20 00:04:10,031 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='696eb869d0e8c81847b959ca', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
com.mongodb.MongoSocketOpenException: Exception opening socket
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:73)
	at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:204)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:199)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:159)
	at java.base/java.lang.Thread.run(Thread.java:840)
Caused by: java.net.ConnectException: Connexion refusée
	at java.base/sun.nio.ch.Net.pollConnect(Native Method)
	at java.base/sun.nio.ch.Net.pollConnectNow(Net.java:672)
	at java.base/sun.nio.ch.NioSocketImpl.timedFinishConnect(NioSocketImpl.java:547)
	at java.base/sun.nio.ch.NioSocketImpl.connect(NioSocketImpl.java:602)
	at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:327)
	at java.base/java.net.Socket.connect(Socket.java:633)
	at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107)
	at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:82)
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:68)
	... 4 common frames omitted
2026-01-20 00:04:10,036 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.14.0-37-generic"}, "platform": "Java/Ubuntu/17.0.17+10-Ubuntu-124.04"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@5f6f7023, com.mongodb.Jep395RecordCodecProvider@20c99a68]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2026-01-20 00:04:10,482 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2026-01-20 00:04:10,719 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@1dd184c7, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@256909bc, org.springframework.security.web.context.SecurityContextHolderFilter@7fe211f6, org.springframework.security.web.header.HeaderWriterFilter@7f02762f, org.springframework.security.web.authentication.logout.LogoutFilter@69f6b35f, com.setup.backend.configs.security.JwtAuthenticationFilter@6f1bba8b, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@67206f10, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@602673d9, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@2dde5ae5, org.springframework.security.web.session.SessionManagementFilter@1875326b, org.springframework.security.web.access.ExceptionTranslationFilter@5d564140, org.springframework.security.web.access.intercept.AuthorizationFilter@2fb2f64f]
2026-01-20 00:04:11,559 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2026-01-20 00:04:11,595 INFO o.s.b.StartupInfoLogger [main] Started BackendApplicationTests in 11.633 seconds (process running for 13.578)
2026-01-20 00:04:12,018 INFO c.s.b.s.i.DBInitializationServiceImpl [main] admin token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkB0ZXN0LmNvbSIsImlhdCI6MTc2ODg2Mzg1MSwiZXhwIjoxNzY4OTIzODUxfQ.uQhS-4I22QT-JgJ7rYKF3mMzTuFsWgF8E9PcIn_rhyQ
2026-01-20 00:04:12,094 INFO c.s.b.s.i.DBInitializationServiceImpl [main] User token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyQHRlc3QuY29tIiwiaWF0IjoxNzY4ODYzODUyLCJleHAiOjE3Njg5MjM4NTJ9.tNFkWnmaDMbJNNmKcJV9tr7-SyQZl9gvEidYbBYzjew
2026-01-20 00:04:12,171 INFO c.s.b.s.i.DBInitializationServiceImpl [main] Enterprise token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlbnRlcnByaXNlQHRlc3QuY29tIiwiaWF0IjoxNzY4ODYzODUyLCJleHAiOjE3Njg5MjM4NTJ9.T6-t4k7TL19RBktBwWXVAVMR42SjmJ-tKZDOrg3YgGE
2026-01-20 00:04:12,256 INFO c.s.b.s.i.DBInitializationServiceImpl [main] association token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhc3NvY2lhdGlvbkB0ZXN0LmNvbSIsImlhdCI6MTc2ODg2Mzg1MiwiZXhwIjoxNzY4OTIzODUyfQ.H5AaDkv3VMJYIdKLulDSDZqkZn12SPabrZn2209SaII
2026-01-20 00:04:13,160 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:04:13,160 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2026-01-20 00:04:13,172 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:13,172 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:13,172 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:13,173 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 12 ms. Found 0 MongoDB repository interfaces.
2026-01-20 00:04:13,233 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:04:13,233 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2026-01-20 00:04:13,254 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 20 ms. Found 3 JPA repository interfaces.
2026-01-20 00:04:14,259 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2026-01-20 00:04:14,284 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2026-01-20 00:04:14,285 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2026-01-20 00:04:14,288 INFO c.z.h.HikariDataSource [main] HikariPool-2 - Starting...
2026-01-20 00:04:14,291 INFO c.z.h.p.HikariPool [main] HikariPool-2 - Added connection conn10: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2026-01-20 00:04:14,292 INFO c.z.h.HikariDataSource [main] HikariPool-2 - Start completed.
2026-01-20 00:04:14,339 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2026-01-20 00:04:14,495 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2026-01-20 00:04:14,521 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2026-01-20 00:04:14,864 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='696eb86ed0e8c81847b959cb', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
com.mongodb.MongoSocketOpenException: Exception opening socket
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:73)
	at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:204)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:199)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:159)
	at java.base/java.lang.Thread.run(Thread.java:840)
Caused by: java.net.ConnectException: Connexion refusée
	at java.base/sun.nio.ch.Net.pollConnect(Native Method)
	at java.base/sun.nio.ch.Net.pollConnectNow(Net.java:672)
	at java.base/sun.nio.ch.NioSocketImpl.timedFinishConnect(NioSocketImpl.java:547)
	at java.base/sun.nio.ch.NioSocketImpl.connect(NioSocketImpl.java:602)
	at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:327)
	at java.base/java.net.Socket.connect(Socket.java:633)
	at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107)
	at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:82)
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:68)
	... 4 common frames omitted
2026-01-20 00:04:14,865 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.14.0-37-generic"}, "platform": "Java/Ubuntu/17.0.17+10-Ubuntu-124.04"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@5f6f7023, com.mongodb.Jep395RecordCodecProvider@20c99a68]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2026-01-20 00:04:15,102 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2026-01-20 00:04:15,160 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@1a9d1d3, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@faa06fc, org.springframework.security.web.context.SecurityContextHolderFilter@16508c7d, org.springframework.security.web.header.HeaderWriterFilter@5aff942d, org.springframework.security.web.authentication.logout.LogoutFilter@745f5a40, com.setup.backend.configs.security.JwtAuthenticationFilter@97f7cd2, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@1f19376a, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@39e19658, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@71f1136e, org.springframework.security.web.session.SessionManagementFilter@55414032, org.springframework.security.web.access.ExceptionTranslationFilter@4789d924, org.springframework.security.web.access.intercept.AuthorizationFilter@17cd808d]
2026-01-20 00:04:15,647 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2026-01-20 00:04:15,748 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:15,748 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:15,751 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 2 ms
2026-01-20 00:04:15,784 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:15,784 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:15,787 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 3 ms
2026-01-20 00:04:17,246 INFO o.s.b.StartupInfoLogger [main] Starting AuthenticationControllerIntTests using Java 17.0.17 with PID 44909 (started by bolan in /home/bolan/Documents/setup_backenf/spring/backend-tests)
2026-01-20 00:04:17,246 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2026-01-20 00:04:17,247 INFO o.s.b.SpringApplication [main] The following 1 profile is active: "test"
2026-01-20 00:04:17,590 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:04:17,590 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2026-01-20 00:04:17,624 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:17,625 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:17,626 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:17,626 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 35 ms. Found 0 MongoDB repository interfaces.
2026-01-20 00:04:17,756 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:04:17,757 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2026-01-20 00:04:17,821 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 64 ms. Found 3 JPA repository interfaces.
2026-01-20 00:04:18,434 INFO o.s.b.w.e.t.TomcatWebServer [main] Tomcat initialized with port(s): 0 (http)
2026-01-20 00:04:18,467 INFO o.a.j.l.DirectJDKLog [main] Initializing ProtocolHandler ["http-nio-auto-1"]
2026-01-20 00:04:18,472 INFO o.a.j.l.DirectJDKLog [main] Starting service [Tomcat]
2026-01-20 00:04:18,472 INFO o.a.j.l.DirectJDKLog [main] Starting Servlet engine: [Apache Tomcat/10.1.11]
2026-01-20 00:04:18,660 INFO o.a.j.l.DirectJDKLog [main] Initializing Spring embedded WebApplicationContext
2026-01-20 00:04:18,661 INFO o.s.b.w.s.c.ServletWebServerApplicationContext [main] Root WebApplicationContext: initialization completed in 1411 ms
2026-01-20 00:04:18,807 INFO o.h.j.i.u.LogHelper [main] HHH000204: Processing PersistenceUnitInfo [name: default]
2026-01-20 00:04:18,824 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2026-01-20 00:04:18,824 INFO o.s.o.j.p.SpringPersistenceUnitInfo [main] No LoadTimeWeaver setup: ignoring JPA class transformer
2026-01-20 00:04:18,827 INFO c.z.h.HikariDataSource [main] HikariPool-3 - Starting...
2026-01-20 00:04:18,830 INFO c.z.h.p.HikariPool [main] HikariPool-3 - Added connection conn20: url=jdbc:h2:mem:mecenat-db user=USERMECENAT
2026-01-20 00:04:18,831 INFO c.z.h.HikariDataSource [main] HikariPool-3 - Start completed.
2026-01-20 00:04:18,874 INFO o.h.b.i.BytecodeProviderInitiator [main] HHH000021: Bytecode provider name : bytebuddy
2026-01-20 00:04:19,001 INFO o.h.e.t.j.p.i.JtaPlatformInitiator [main] HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2026-01-20 00:04:19,021 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Initialized JPA EntityManagerFactory for persistence unit 'default'
2026-01-20 00:04:19,319 DEBUG o.s.w.f.GenericFilterBean [main] Filter 'jwtAuthenticationFilter' configured for use
2026-01-20 00:04:19,451 INFO c.m.i.d.l.SLF4JLogger [main] MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.9.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "6.14.0-37-generic"}, "platform": "Java/Ubuntu/17.0.17+10-Ubuntu-124.04"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, CollectionCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.client.model.mql.ExpressionCodecProvider@5f6f7023, com.mongodb.Jep395RecordCodecProvider@20c99a68]}, loggerSettings=LoggerSettings{maxDocumentLength=1000}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
2026-01-20 00:04:19,451 INFO c.m.i.d.l.SLF4JLogger [cluster-ClusterId{value='696eb873d0e8c81847b959cc', description='null'}-localhost:27017] Exception in monitor thread while connecting to server localhost:27017
com.mongodb.MongoSocketOpenException: Exception opening socket
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:73)
	at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:204)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:199)
	at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:159)
	at java.base/java.lang.Thread.run(Thread.java:840)
Caused by: java.net.ConnectException: Connexion refusée
	at java.base/sun.nio.ch.Net.pollConnect(Native Method)
	at java.base/sun.nio.ch.Net.pollConnectNow(Net.java:672)
	at java.base/sun.nio.ch.NioSocketImpl.timedFinishConnect(NioSocketImpl.java:547)
	at java.base/sun.nio.ch.NioSocketImpl.connect(NioSocketImpl.java:602)
	at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:327)
	at java.base/java.net.Socket.connect(Socket.java:633)
	at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107)
	at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:82)
	at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:68)
	... 4 common frames omitted
2026-01-20 00:04:19,649 WARN o.s.b.a.o.j.JpaBaseConfiguration$JpaWebConfiguration [main] spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2026-01-20 00:04:19,697 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@37d07d62, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@c0e9730, org.springframework.security.web.context.SecurityContextHolderFilter@73e7ad4b, org.springframework.security.web.header.HeaderWriterFilter@6b629cc7, org.springframework.security.web.authentication.logout.LogoutFilter@7f6891b1, com.setup.backend.configs.security.JwtAuthenticationFilter@7ef645db, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@5a0830ed, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@25730bcf, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@a3bb459, org.springframework.security.web.session.SessionManagementFilter@68ef8477, org.springframework.security.web.access.ExceptionTranslationFilter@7c2abd9f, org.springframework.security.web.access.intercept.AuthorizationFilter@59ec0bda]
2026-01-20 00:04:20,076 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2026-01-20 00:04:20,149 INFO o.a.j.l.DirectJDKLog [main] Starting ProtocolHandler ["http-nio-auto-1"]
2026-01-20 00:04:20,182 INFO o.s.b.w.e.t.TomcatWebServer [main] Tomcat started on port(s): 33591 (http) with context path ''
2026-01-20 00:04:20,190 INFO o.s.b.StartupInfoLogger [main] Started AuthenticationControllerIntTests in 3.012 seconds (process running for 22.173)
2026-01-20 00:04:20,278 INFO c.s.b.s.i.DBInitializationServiceImpl [main] admin token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkB0ZXN0LmNvbSIsImlhdCI6MTc2ODg2Mzg2MCwiZXhwIjoxNzY4OTIzODYwfQ.4yffMR-fwf4kj0SKcAfoBj5BlWQHIjFXQ53P-aBdvHs
2026-01-20 00:04:20,356 INFO c.s.b.s.i.DBInitializationServiceImpl [main] User token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyQHRlc3QuY29tIiwiaWF0IjoxNzY4ODYzODYwLCJleHAiOjE3Njg5MjM4NjB9.FdxdEIiSdQoMoQprFQ0sfNOb9zR17-GG7DA_9T4rzi4
2026-01-20 00:04:20,433 INFO c.s.b.s.i.DBInitializationServiceImpl [main] Enterprise token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlbnRlcnByaXNlQHRlc3QuY29tIiwiaWF0IjoxNzY4ODYzODYwLCJleHAiOjE3Njg5MjM4NjB9.z00zno7H3MyHGnItA-6gFQHa6G0RRonyYuS6oqZHz4M
2026-01-20 00:04:20,527 INFO c.s.b.s.i.DBInitializationServiceImpl [main] association token: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhc3NvY2lhdGlvbkB0ZXN0LmNvbSIsImlhdCI6MTc2ODg2Mzg2MCwiZXhwIjoxNzY4OTIzODYwfQ._P6eIyXulBrFyJ0XE3sxntbdvm61-Y_CrdTsD-GjaBw
2026-01-20 00:04:20,969 INFO o.a.j.l.DirectJDKLog [http-nio-auto-1-exec-2] Initializing Spring DispatcherServlet 'dispatcherServlet'
2026-01-20 00:04:20,969 INFO o.s.w.s.FrameworkServlet [http-nio-auto-1-exec-2] Initializing Servlet 'dispatcherServlet'
2026-01-20 00:04:20,972 INFO o.s.w.s.FrameworkServlet [http-nio-auto-1-exec-2] Completed initialization in 2 ms
2026-01-20 00:04:21,070 INFO o.a.j.l.DirectJDKLog [main] Pausing ProtocolHandler ["http-nio-auto-1"]
2026-01-20 00:04:21,071 INFO o.a.j.l.DirectJDKLog [main] Stopping service [Tomcat]
2026-01-20 00:04:21,074 INFO o.a.j.l.DirectJDKLog [main] Destroying Spring FrameworkServlet 'dispatcherServlet'
2026-01-20 00:04:21,078 WARN o.a.j.l.DirectJDKLog [main] The web application [ROOT] appears to have started a thread named [HikariPool-3 housekeeper] but has failed to stop it. This is very likely to create a memory leak. Stack trace of thread:
 java.base@17.0.17/jdk.internal.misc.Unsafe.park(Native Method)
 java.base@17.0.17/java.util.concurrent.locks.LockSupport.parkNanos(LockSupport.java:252)
 java.base@17.0.17/java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos(AbstractQueuedSynchronizer.java:1679)
 java.base@17.0.17/java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue.take(ScheduledThreadPoolExecutor.java:1182)
 java.base@17.0.17/java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue.take(ScheduledThreadPoolExecutor.java:899)
 java.base@17.0.17/java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:1062)
 java.base@17.0.17/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1122)
 java.base@17.0.17/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
 java.base@17.0.17/java.lang.Thread.run(Thread.java:840)
2026-01-20 00:04:21,079 WARN o.a.j.l.DirectJDKLog [main] The web application [ROOT] appears to have started a thread named [HikariPool-3 connection adder] but has failed to stop it. This is very likely to create a memory leak. Stack trace of thread:
 java.base@17.0.17/jdk.internal.misc.Unsafe.park(Native Method)
 java.base@17.0.17/java.util.concurrent.locks.LockSupport.parkNanos(LockSupport.java:252)
 java.base@17.0.17/java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos(AbstractQueuedSynchronizer.java:1679)
 java.base@17.0.17/java.util.concurrent.LinkedBlockingQueue.poll(LinkedBlockingQueue.java:460)
 java.base@17.0.17/java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:1061)
 java.base@17.0.17/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1122)
 java.base@17.0.17/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
 java.base@17.0.17/java.lang.Thread.run(Thread.java:840)
2026-01-20 00:04:21,090 INFO o.a.j.l.DirectJDKLog [main] Stopping ProtocolHandler ["http-nio-auto-1"]
2026-01-20 00:04:21,094 INFO o.a.j.l.DirectJDKLog [main] Destroying ProtocolHandler ["http-nio-auto-1"]
2026-01-20 00:04:21,104 INFO o.s.o.j.AbstractEntityManagerFactoryBean [main] Closing JPA EntityManagerFactory for persistence unit 'default'
2026-01-20 00:04:21,108 INFO c.z.h.HikariDataSource [main] HikariPool-3 - Shutdown initiated...
2026-01-20 00:04:21,110 INFO c.z.h.HikariDataSource [main] HikariPool-3 - Shutdown completed.
2026-01-20 00:04:21,138 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.controllers.unit_tests.AuthenticationControllerTests]: AuthenticationControllerTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2026-01-20 00:04:21,206 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.controllers.unit_tests.AuthenticationControllerTests
2026-01-20 00:04:21,307 INFO o.s.b.StartupInfoLogger [main] Starting AuthenticationControllerTests using Java 17.0.17 with PID 44909 (started by bolan in /home/bolan/Documents/setup_backenf/spring/backend-tests)
2026-01-20 00:04:21,317 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2026-01-20 00:04:21,318 INFO o.s.b.SpringApplication [main] No active profile set, falling back to 1 default profile: "default"
2026-01-20 00:04:21,540 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:04:21,541 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2026-01-20 00:04:21,574 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:21,574 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:21,574 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:21,575 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 33 ms. Found 0 MongoDB repository interfaces.
2026-01-20 00:04:22,099 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2026-01-20 00:04:22,172 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@28b4968b, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@2a01b32e, org.springframework.security.web.context.SecurityContextHolderFilter@39881492, org.springframework.security.web.header.HeaderWriterFilter@2ad27966, org.springframework.security.web.csrf.CsrfFilter@7f32e026, org.springframework.security.web.authentication.logout.LogoutFilter@21019bfd, org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter@28242046, org.springframework.security.web.authentication.ui.DefaultLoginPageGeneratingFilter@3392d8c7, org.springframework.security.web.authentication.ui.DefaultLogoutPageGeneratingFilter@7232e4f9, org.springframework.security.web.authentication.www.BasicAuthenticationFilter@12876a57, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@5153e055, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@ab289be, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@5b4efd3a, org.springframework.security.web.access.ExceptionTranslationFilter@4b721918, org.springframework.security.web.access.intercept.AuthorizationFilter@23acde6b]
2026-01-20 00:04:22,191 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:22,192 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:22,193 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:22,208 INFO o.s.b.StartupInfoLogger [main] Started AuthenticationControllerTests in 0.996 seconds (process running for 24.191)
2026-01-20 00:04:22,243 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:22,244 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:22,245 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:22,357 INFO o.s.t.c.s.AnnotationConfigContextLoaderUtils [main] Could not detect default configuration classes for test class [com.setup.backend.controllers.unit_tests.UserControllerTests]: UserControllerTests does not declare any static, non-private, non-final, nested classes annotated with @Configuration.
2026-01-20 00:04:22,367 INFO o.s.b.t.c.SpringBootTestContextBootstrapper [main] Found @SpringBootConfiguration com.setup.backend.BackendApplication for test class com.setup.backend.controllers.unit_tests.UserControllerTests
2026-01-20 00:04:22,424 INFO o.s.b.StartupInfoLogger [main] Starting UserControllerTests using Java 17.0.17 with PID 44909 (started by bolan in /home/bolan/Documents/setup_backenf/spring/backend-tests)
2026-01-20 00:04:22,424 DEBUG o.s.b.StartupInfoLogger [main] Running with Spring Boot, Spring
2026-01-20 00:04:22,425 INFO o.s.b.SpringApplication [main] No active profile set, falling back to 1 default profile: "default"
2026-01-20 00:04:22,606 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Multiple Spring Data modules found, entering strict repository configuration mode
2026-01-20 00:04:22,607 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
2026-01-20 00:04:22,637 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.ActivationHashRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:22,638 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.TokenRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:22,638 INFO o.s.d.r.c.RepositoryConfigurationExtensionSupport [main] Spring Data MongoDB - Could not safely identify store assignment for repository candidate interface com.setup.backend.repositories.UserRepository; If you want this repository to be a MongoDB repository, consider annotating your entities with one of these annotations: org.springframework.data.mongodb.core.mapping.Document (preferred), or consider extending one of the following types with your repository: org.springframework.data.mongodb.repository.MongoRepository
2026-01-20 00:04:22,638 INFO o.s.d.r.c.RepositoryConfigurationDelegate [main] Finished Spring Data repository scanning in 31 ms. Found 0 MongoDB repository interfaces.
2026-01-20 00:04:22,819 WARN o.s.b.a.t.ThymeleafAutoConfiguration$DefaultTemplateResolverConfiguration [main] Cannot find template location: classpath:/templates/ (please add some templates, check your Thymeleaf configuration, or set spring.thymeleaf.check-template-location=false)
2026-01-20 00:04:22,840 INFO o.s.s.w.DefaultSecurityFilterChain [main] Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@3af10af2, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@6a3c71b7, org.springframework.security.web.context.SecurityContextHolderFilter@6437bed0, org.springframework.security.web.header.HeaderWriterFilter@6d90e705, org.springframework.security.web.csrf.CsrfFilter@4cd8dfaf, org.springframework.security.web.authentication.logout.LogoutFilter@1c931e34, org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter@64a7af24, org.springframework.security.web.authentication.ui.DefaultLoginPageGeneratingFilter@6a3ea067, org.springframework.security.web.authentication.ui.DefaultLogoutPageGeneratingFilter@33bb3d5b, org.springframework.security.web.authentication.www.BasicAuthenticationFilter@60c17f3a, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@6e98205e, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@7cd7a2, org.springframework.security.web.authentication.AnonymousAuthenticationFilter@58e8bcb9, org.springframework.security.web.access.ExceptionTranslationFilter@e4c08df, org.springframework.security.web.access.intercept.AuthorizationFilter@6596b17a]
2026-01-20 00:04:22,849 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:22,850 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:22,851 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:22,861 INFO o.s.b.StartupInfoLogger [main] Started UserControllerTests in 0.488 seconds (process running for 24.843)
2026-01-20 00:04:22,870 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:22,870 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:22,872 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:22,893 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:22,894 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:22,895 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:22,908 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:22,908 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:22,909 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:22,925 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:22,926 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:22,927 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:22,943 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:22,943 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:22,944 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:22,956 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:22,957 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:22,958 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:22,967 WARN c.s.b.e.GlobalExceptionHandler [main] Erreur connue: 601 - User not found
2026-01-20 00:04:22,986 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:22,986 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:22,987 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:22,991 WARN o.s.c.LocalVariableTableParameterNameDiscoverer [main] Using deprecated '-debug' fallback for parameter name resolution. Compile the affected code with '-parameters' instead or avoid its introspection: com.setup.backend.controllers.UserController
2026-01-20 00:04:23,008 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:23,009 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:23,010 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:23,013 WARN c.s.b.e.GlobalExceptionHandler [main] Erreur connue: 601 - User not found
2026-01-20 00:04:23,022 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:23,023 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:23,025 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 2 ms
2026-01-20 00:04:23,038 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:23,039 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:23,040 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:23,051 INFO o.s.m.w.MockServletContext [main] Initializing Spring TestDispatcherServlet ''
2026-01-20 00:04:23,052 INFO o.s.w.s.FrameworkServlet [main] Initializing Servlet ''
2026-01-20 00:04:23,053 INFO o.s.w.s.FrameworkServlet [main] Completed initialization in 1 ms
2026-01-20 00:04:23,055 WARN c.s.b.e.GlobalExceptionHandler [main] Erreur connue: 601 - User not found
2026-01-20 00:04:24,554 INFO o.s.o.j.AbstractEntityManagerFactoryBean [SpringContextShutdownHook] Closing JPA EntityManagerFactory for persistence unit 'default'
2026-01-20 00:04:24,555 INFO o.s.o.j.AbstractEntityManagerFactoryBean [SpringApplicationShutdownHook] Closing JPA EntityManagerFactory for persistence unit 'default'
2026-01-20 00:04:24,556 INFO c.z.h.HikariDataSource [SpringContextShutdownHook] HikariPool-2 - Shutdown initiated...
2026-01-20 00:04:24,556 INFO c.z.h.HikariDataSource [SpringApplicationShutdownHook] HikariPool-1 - Shutdown initiated...
2026-01-20 00:04:24,558 INFO c.z.h.HikariDataSource [SpringContextShutdownHook] HikariPool-2 - Shutdown completed.
2026-01-20 00:04:24,558 INFO c.z.h.HikariDataSource [SpringApplicationShutdownHook] HikariPool-1 - Shutdown completed.
