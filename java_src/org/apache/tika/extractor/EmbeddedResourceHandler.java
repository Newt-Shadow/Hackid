package org.apache.tika.extractor;

import java.io.InputStream;
import org.apache.tika.mime.MediaType;
/* loaded from: classes2.dex */
public interface EmbeddedResourceHandler {
    void handle(String str, MediaType mediaType, InputStream inputStream);
}
