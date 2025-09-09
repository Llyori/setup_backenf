package com.setup.backend.services.impl;

import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import org.apache.commons.io.IOUtils;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.gridfs.GridFsOperations;
import org.springframework.data.mongodb.gridfs.GridFsTemplate;
import org.springframework.data.mongodb.core.query.Query;
import com.mongodb.client.gridfs.model.GridFSFile;

import com.setup.backend.models.File;
import com.setup.backend.services.FileService;

@Service
public class FileServiceImpl implements FileService {

    private GridFsTemplate gridFsTemplate;

    private GridFsOperations operations;

    public FileServiceImpl(GridFsTemplate gridFsTemplate, GridFsOperations operations) {
        this.gridFsTemplate = gridFsTemplate;
        this.operations = operations;
    }

    @Override
    public String store(MultipartFile file) throws IOException {
        ObjectId id = gridFsTemplate.store(
                file.getInputStream(),
                file.getOriginalFilename(),
                file.getContentType());
        return id.toHexString();
    }

    @Override
    public File downloadFile(String id) throws IOException {
        GridFSFile gridFSFile = gridFsTemplate.findOne(new Query(Criteria.where("_id").is(id)));
        File file = new File();
        if (gridFSFile != null && gridFSFile.getMetadata() != null) {
            file.setFilename(gridFSFile.getFilename());
            file.setFileType(gridFSFile.getMetadata().get("_contentType").toString());
            file.setFile(IOUtils.toByteArray(operations.getResource(gridFSFile).getInputStream()));
        }
        return file;
    }

}
