package com.setup.backend.services;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.setup.backend.models.File;

public interface FileService {

    public String store(MultipartFile file) throws IOException;

    public File downloadFile(String id) throws IOException;

}
