package org.apache.tika.extractor;

import java.io.Serializable;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.ParseContext;
/* loaded from: classes2.dex */
public interface EmbeddedDocumentExtractorFactory extends Serializable {
    EmbeddedDocumentExtractor newInstance(Metadata metadata, ParseContext parseContext);
}
