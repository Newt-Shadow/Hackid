package org.apache.tika.embedder;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Set;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.mime.MediaType;
import org.apache.tika.parser.ParseContext;
/* loaded from: classes2.dex */
public interface Embedder extends Serializable {
    void embed(Metadata metadata, InputStream inputStream, OutputStream outputStream, ParseContext parseContext);

    Set<MediaType> getSupportedEmbedTypes(ParseContext parseContext);
}
