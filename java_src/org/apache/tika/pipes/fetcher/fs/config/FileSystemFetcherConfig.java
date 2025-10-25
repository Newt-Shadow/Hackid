package org.apache.tika.pipes.fetcher.fs.config;

import org.apache.tika.pipes.fetcher.config.AbstractConfig;
/* loaded from: classes2.dex */
public class FileSystemFetcherConfig extends AbstractConfig {
    private String basePath;
    private boolean extractFileSystemMetadata;

    public String getBasePath() {
        return this.basePath;
    }

    public boolean isExtractFileSystemMetadata() {
        return this.extractFileSystemMetadata;
    }

    public FileSystemFetcherConfig setBasePath(String str) {
        this.basePath = str;
        return this;
    }

    public FileSystemFetcherConfig setExtractFileSystemMetadata(boolean z10) {
        this.extractFileSystemMetadata = z10;
        return this;
    }
}
