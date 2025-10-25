package org.apache.tika.parser;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.tika.exception.TikaException;
import org.apache.tika.exception.WriteLimitReachedException;
import org.apache.tika.io.TemporaryResources;
import org.apache.tika.io.TikaInputStream;
import org.apache.tika.metadata.HttpHeaders;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.TikaCoreProperties;
import org.apache.tika.mime.MediaType;
import org.apache.tika.mime.MediaTypeRegistry;
import org.apache.tika.sax.TaggedContentHandler;
import org.apache.tika.utils.ExceptionUtils;
import org.apache.tika.utils.ParserUtils;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
/* loaded from: classes2.dex */
public class CompositeParser implements Parser {
    private static final long serialVersionUID = 2192845797749627824L;
    private Parser fallback;
    private List<Parser> parsers;
    private MediaTypeRegistry registry;

    /* JADX WARN: Multi-variable type inference failed */
    public CompositeParser(MediaTypeRegistry mediaTypeRegistry, List<Parser> list, Collection<Class<? extends Parser>> collection) {
        this.fallback = new EmptyParser();
        if (collection != null && !collection.isEmpty()) {
            this.parsers = new ArrayList();
            for (Parser parser : list) {
                if (!isExcluded(collection, parser.getClass())) {
                    this.parsers.add(parser);
                }
            }
        } else {
            this.parsers = list;
        }
        this.registry = mediaTypeRegistry;
    }

    private boolean assignableFrom(Collection<Class<? extends Parser>> collection, Class<? extends Parser> cls) {
        for (Class<? extends Parser> cls2 : collection) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean isExcluded(Collection<Class<? extends Parser>> collection, Class<? extends Parser> cls) {
        if (!collection.contains(cls) && !assignableFrom(collection, cls)) {
            return false;
        }
        return true;
    }

    private void recordEmbeddedMetadata(Metadata metadata, ParseContext parseContext) {
        String[] names;
        ParseRecord parseRecord = (ParseRecord) parseContext.get(ParseRecord.class);
        if (parseRecord == null) {
            return;
        }
        for (Exception exc : parseRecord.getExceptions()) {
            metadata.add(TikaCoreProperties.EMBEDDED_EXCEPTION, ExceptionUtils.getStackTrace(exc));
        }
        for (String str : parseRecord.getWarnings()) {
            metadata.add(TikaCoreProperties.EMBEDDED_WARNING, str);
        }
        if (parseRecord.isWriteLimitReached()) {
            metadata.set(TikaCoreProperties.WRITE_LIMIT_REACHED, true);
        }
        for (Metadata metadata2 : parseRecord.getMetadataList()) {
            for (String str2 : metadata2.names()) {
                for (String str3 : metadata2.getValues(str2)) {
                    metadata.add(str2, str3);
                }
            }
        }
    }

    public Map<MediaType, List<Parser>> findDuplicateParsers(ParseContext parseContext) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (Parser parser : this.parsers) {
            for (MediaType mediaType : parser.getSupportedTypes(parseContext)) {
                MediaType normalize = this.registry.normalize(mediaType);
                if (hashMap.containsKey(normalize)) {
                    List list = (List) hashMap2.get(normalize);
                    if (list == null) {
                        list = new ArrayList();
                        list.add((Parser) hashMap.get(normalize));
                        hashMap2.put(normalize, list);
                    }
                    list.add(parser);
                } else {
                    hashMap.put(normalize, parser);
                }
            }
        }
        return hashMap2;
    }

    public List<Parser> getAllComponentParsers() {
        return Collections.unmodifiableList(this.parsers);
    }

    public Parser getFallback() {
        return this.fallback;
    }

    public MediaTypeRegistry getMediaTypeRegistry() {
        return this.registry;
    }

    protected Parser getParser(Metadata metadata) {
        return getParser(metadata, new ParseContext());
    }

    public Map<MediaType, Parser> getParsers(ParseContext parseContext) {
        HashMap hashMap = new HashMap();
        for (Parser parser : this.parsers) {
            for (MediaType mediaType : parser.getSupportedTypes(parseContext)) {
                hashMap.put(this.registry.normalize(mediaType), parser);
            }
        }
        return hashMap;
    }

    @Override // org.apache.tika.parser.Parser
    public Set<MediaType> getSupportedTypes(ParseContext parseContext) {
        return getParsers(parseContext).keySet();
    }

    @Override // org.apache.tika.parser.Parser
    public void parse(InputStream inputStream, ContentHandler contentHandler, Metadata metadata, ParseContext parseContext) {
        TaggedContentHandler taggedContentHandler;
        Parser parser = getParser(metadata, parseContext);
        TemporaryResources temporaryResources = new TemporaryResources();
        ParseRecord parseRecord = (ParseRecord) parseContext.get(ParseRecord.class);
        if (parseRecord == null) {
            parseRecord = new ParseRecord();
            parseContext.set(ParseRecord.class, parseRecord);
        }
        try {
            TikaInputStream tikaInputStream = TikaInputStream.get(inputStream, temporaryResources, metadata);
            if (contentHandler != null) {
                taggedContentHandler = new TaggedContentHandler(contentHandler);
            } else {
                taggedContentHandler = null;
            }
            String parserClassname = ParserUtils.getParserClassname(parser);
            parseRecord.addParserClass(parserClassname);
            ParserUtils.recordParserDetails(parserClassname, metadata);
            parseRecord.beforeParse();
            try {
                try {
                    parser.parse(tikaInputStream, taggedContentHandler, metadata, parseContext);
                } catch (IOException e10) {
                    tikaInputStream.throwIfCauseOf(e10);
                    throw new TikaException("TIKA-198: Illegal IOException from " + parser, e10);
                } catch (SecurityException e11) {
                    throw e11;
                }
            } catch (RuntimeException e12) {
                throw new TikaException("Unexpected RuntimeException from " + parser, e12);
            } catch (SAXException e13) {
                WriteLimitReachedException.throwIfWriteLimitReached(e13);
                if (taggedContentHandler != null) {
                    taggedContentHandler.throwIfCauseOf(e13);
                }
                throw new TikaException("TIKA-237: Illegal SAXException from " + parser, e13);
            }
        } finally {
            temporaryResources.dispose();
            parseRecord.afterParse();
            if (parseRecord.getDepth() == 0) {
                metadata.set(TikaCoreProperties.TIKA_PARSED_BY_FULL_SET, parseRecord.getParsers());
                recordEmbeddedMetadata(metadata, parseContext);
            }
        }
    }

    public void setFallback(Parser parser) {
        this.fallback = parser;
    }

    public void setMediaTypeRegistry(MediaTypeRegistry mediaTypeRegistry) {
        this.registry = mediaTypeRegistry;
    }

    public void setParsers(Map<MediaType, Parser> map) {
        this.parsers = new ArrayList(map.size());
        for (Map.Entry<MediaType, Parser> entry : map.entrySet()) {
            this.parsers.add(ParserDecorator.withTypes(entry.getValue(), Collections.singleton(entry.getKey())));
        }
    }

    protected Parser getParser(Metadata metadata, ParseContext parseContext) {
        Map<MediaType, Parser> parsers = getParsers(parseContext);
        String str = metadata.get(TikaCoreProperties.CONTENT_TYPE_PARSER_OVERRIDE);
        if (str == null) {
            str = metadata.get(HttpHeaders.CONTENT_TYPE);
        }
        MediaType parse = MediaType.parse(str);
        if (parse != null) {
            parse = this.registry.normalize(parse);
        }
        while (parse != null) {
            Parser parser = parsers.get(parse);
            if (parser != null) {
                return parser;
            }
            parse = this.registry.getSupertype(parse);
        }
        return this.fallback;
    }

    public Map<MediaType, Parser> getParsers() {
        return getParsers(new ParseContext());
    }

    public CompositeParser(MediaTypeRegistry mediaTypeRegistry, List<Parser> list) {
        this(mediaTypeRegistry, list, null);
    }

    public CompositeParser(MediaTypeRegistry mediaTypeRegistry, Parser... parserArr) {
        this(mediaTypeRegistry, Arrays.asList(parserArr));
    }

    public CompositeParser() {
        this(new MediaTypeRegistry(), new Parser[0]);
    }
}
