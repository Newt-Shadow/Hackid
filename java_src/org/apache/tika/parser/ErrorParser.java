package org.apache.tika.parser;

import java.io.InputStream;
import java.util.Collections;
import java.util.Set;
import org.apache.tika.exception.TikaException;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.mime.MediaType;
import org.xml.sax.ContentHandler;
/* loaded from: classes2.dex */
public class ErrorParser implements Parser {
    public static final ErrorParser INSTANCE = new ErrorParser();
    private static final long serialVersionUID = 7727423956957641824L;

    @Override // org.apache.tika.parser.Parser
    public Set<MediaType> getSupportedTypes(ParseContext parseContext) {
        return Collections.emptySet();
    }

    @Override // org.apache.tika.parser.Parser
    public void parse(InputStream inputStream, ContentHandler contentHandler, Metadata metadata, ParseContext parseContext) {
        throw new TikaException("Parse error");
    }
}
