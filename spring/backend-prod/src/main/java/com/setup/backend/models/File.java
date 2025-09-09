package com.setup.backend.models;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
public class File {
    private String filename;
    private String fileSize;
    private String fileType;
    private byte[] fichier;

    public String getFilename() {
        return filename;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFileSize() {
        return fileSize;
    }

    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

    public byte[] getFile() {
        return fichier;
    }

    public void setFile(byte[] file) {
        this.fichier = file;
    }
}
