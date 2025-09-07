package com.setup.backend.configs.cache;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.hazelcast.config.Config;
import com.hazelcast.config.MapConfig;

@Configuration
public class CacheConfig {

    @Bean
    Config hazelCastConfig() {
        return new Config()
                .setInstanceName("hazelcast-instance")
                .addMapConfig(
                        new MapConfig()
                                .setName("resetPasswordToken")
                                .setTimeToLiveSeconds(300)); // 5 minutes
    }

}
