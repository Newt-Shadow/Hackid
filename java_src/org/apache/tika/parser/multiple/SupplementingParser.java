package org.apache.tika.parser.multiple;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.apache.tika.config.Param;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.mime.MediaTypeRegistry;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.Parser;
import org.apache.tika.parser.multiple.AbstractMultipleParser;
import org.xml.sax.ContentHandler;
/* loaded from: classes2.dex */
public class SupplementingParser extends AbstractMultipleParser {
    public static final List<AbstractMultipleParser.MetadataPolicy> allowedPolicies = Arrays.asList(AbstractMultipleParser.MetadataPolicy.FIRST_WINS, AbstractMultipleParser.MetadataPolicy.LAST_WINS, AbstractMultipleParser.MetadataPolicy.KEEP_ALL);
    private static final long serialVersionUID = 313179254565350994L;

    public SupplementingParser(MediaTypeRegistry mediaTypeRegistry, Collection<? extends Parser> collection, Map<String, Param> map) {
        super(mediaTypeRegistry, collection, map);
    }

    @Override // org.apache.tika.parser.multiple.AbstractMultipleParser
    protected boolean parserCompleted(Parser parser, Metadata metadata, ContentHandler contentHandler, ParseContext parseContext, Exception exc) {
        return true;
    }

    public SupplementingParser(MediaTypeRegistry mediaTypeRegistry, AbstractMultipleParser.MetadataPolicy metadataPolicy, Parser... parserArr) {
        this(mediaTypeRegistry, metadataPolicy, Arrays.asList(parserArr));
    }

    public SupplementingParser(MediaTypeRegistry mediaTypeRegistry, AbstractMultipleParser.MetadataPolicy metadataPolicy, Collection<? extends Parser> collection) {
        super(mediaTypeRegistry, metadataPolicy, collection);
        if (allowedPolicies.contains(metadataPolicy)) {
            return;
        }
        throw new IllegalArgumentException("Unsupported policy for SupplementingParser: " + metadataPolicy);
    }
}
