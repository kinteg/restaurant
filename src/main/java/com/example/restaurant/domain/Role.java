package com.example.restaurant.domain;

import org.springframework.security.core.GrantedAuthority;

public enum  Role implements GrantedAuthority { //отражает разрешения выданные доверителю в масштабе всего приложения

    USER, ADMIN;

    @Override
    public String getAuthority() {
        return name();
    }
}
