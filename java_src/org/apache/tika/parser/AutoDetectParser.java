package org.apache.tika.parser;

import java.io.InputStream;
import org.apache.tika.config.TikaConfig;
import org.apache.tika.detect.DefaultDetector;
import org.apache.tika.detect.Detector;
import org.apache.tika.exception.ZeroByteFileException;
import org.apache.tika.extractor.EmbeddedDocumentExtractor;
import org.apache.tika.extractor.EmbeddedDocumentExtractorFactory;
import org.apache.tika.extractor.ParsingEmbeddedDocumentExtractorFactory;
import org.apache.tika.io.TemporaryResources;
import org.apache.tika.io.TikaInputStream;
import org.apache.tika.metadata.HttpHeaders;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.Property;
import org.apache.tika.metadata.TikaCoreProperties;
import org.apache.tika.mime.MediaType;
import org.apache.tika.mime.MediaTypeRegistry;
import org.apache.tika.parser.RecursiveParserWrapper;
import org.apache.tika.sax.SecureContentHandler;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
/* loaded from: classes2.dex */
public class AutoDetectParser extends CompositeParser {
    private static final long serialVersionUID = 6110455808615143122L;
    private AutoDetectParserConfig autoDetectParserConfig;
    private Detector detector;

    public AutoDetectParser() {
        this(TikaConfig.getDefaultConfig());
    }

    private static Parser buildFallbackParser(TikaConfig tikaConfig) {
        Parser emptyParser;
        Parser parser = tikaConfig.getParser();
        if (parser instanceof DefaultParser) {
            emptyParser = ((DefaultParser) parser).getFallback();
        } else {
            emptyParser = new EmptyParser();
        }
        if (tikaConfig.getAutoDetectParserConfig().getDigesterFactory() == null) {
            return emptyParser;
        }
        return new DigestingParser(emptyParser, tikaConfig.getAutoDetectParserConfig().getDigesterFactory().build(), tikaConfig.getAutoDetectParserConfig().getDigesterFactory().isSkipContainerDocument());
    }

    private SecureContentHandler createSecureContentHandler(ContentHandler contentHandler, TikaInputStream tikaInputStream, AutoDetectParserConfig autoDetectParserConfig) {
        SecureContentHandler secureContentHandler = new SecureContentHandler(contentHandler, tikaInputStream);
        if (autoDetectParserConfig == null) {
            return secureContentHandler;
        }
        if (autoDetectParserConfig.getOutputThreshold() != null) {
            secureContentHandler.setOutputThreshold(autoDetectParserConfig.getOutputThreshold().longValue());
        }
        if (autoDetectParserConfig.getMaximumCompressionRatio() != null) {
            secureContentHandler.setMaximumCompressionRatio(autoDetectParserConfig.getMaximumCompressionRatio().longValue());
        }
        if (autoDetectParserConfig.getMaximumDepth() != null) {
            secureContentHandler.setMaximumDepth(autoDetectParserConfig.getMaximumDepth().intValue());
        }
        if (autoDetectParserConfig.getMaximumPackageEntryDepth() != null) {
            secureContentHandler.setMaximumPackageEntryDepth(autoDetectParserConfig.getMaximumPackageEntryDepth().intValue());
        }
        return secureContentHandler;
    }

    private ContentHandler decorateHandler(ContentHandler contentHandler, Metadata metadata, ParseContext parseContext, AutoDetectParserConfig autoDetectParserConfig) {
        if (parseContext.get(RecursiveParserWrapper.RecursivelySecureContentHandler.class) != null) {
            return autoDetectParserConfig.getContentHandlerDecoratorFactory().decorate(contentHandler, metadata, parseContext);
        }
        ParseRecord parseRecord = (ParseRecord) parseContext.get(ParseRecord.class);
        if (parseRecord != null && parseRecord.getDepth() != 0) {
            return contentHandler;
        }
        return autoDetectParserConfig.getContentHandlerDecoratorFactory().decorate(contentHandler, metadata, parseContext);
    }

    private static Parser getParser(TikaConfig tikaConfig) {
        if (tikaConfig.getAutoDetectParserConfig().getDigesterFactory() == null) {
            return tikaConfig.getParser();
        }
        return new DigestingParser(tikaConfig.getParser(), tikaConfig.getAutoDetectParserConfig().getDigesterFactory().build(), tikaConfig.getAutoDetectParserConfig().getDigesterFactory().isSkipContainerDocument());
    }

    private void initializeEmbeddedDocumentExtractor(Metadata metadata, ParseContext parseContext) {
        if (parseContext.get(EmbeddedDocumentExtractor.class) != null) {
            return;
        }
        if (((Parser) parseContext.get(Parser.class)) == null) {
            parseContext.set(Parser.class, this);
        }
        EmbeddedDocumentExtractorFactory embeddedDocumentExtractorFactory = this.autoDetectParserConfig.getEmbeddedDocumentExtractorFactory();
        if (embeddedDocumentExtractorFactory == null) {
            embeddedDocumentExtractorFactory = new ParsingEmbeddedDocumentExtractorFactory();
        }
        parseContext.set(EmbeddedDocumentExtractor.class, embeddedDocumentExtractorFactory.newInstance(metadata, parseContext));
    }

    private void maybeSpool(TikaInputStream tikaInputStream, AutoDetectParserConfig autoDetectParserConfig, Metadata metadata) {
        if (tikaInputStream.hasFile() || autoDetectParserConfig.getSpoolToDisk() == null) {
            return;
        }
        if (autoDetectParserConfig.getSpoolToDisk().longValue() == 0) {
            tikaInputStream.getPath();
            metadata.set(HttpHeaders.CONTENT_LENGTH, Long.toString(tikaInputStream.getLength()));
        } else if (metadata.get(HttpHeaders.CONTENT_LENGTH) != null) {
            try {
                if (Long.parseLong(metadata.get(HttpHeaders.CONTENT_LENGTH)) > autoDetectParserConfig.getSpoolToDisk().longValue()) {
                    tikaInputStream.getPath();
                    metadata.set(HttpHeaders.CONTENT_LENGTH, Long.toString(tikaInputStream.getLength()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    public AutoDetectParserConfig getAutoDetectParserConfig() {
        return this.autoDetectParserConfig;
    }

    public Detector getDetector() {
        return this.detector;
    }

    @Override // org.apache.tika.parser.CompositeParser, org.apache.tika.parser.Parser
    public void parse(InputStream inputStream, ContentHandler contentHandler, Metadata metadata, ParseContext parseContext) {
        if (this.autoDetectParserConfig.getMetadataWriteFilterFactory() != null) {
            metadata.setMetadataWriteFilter(this.autoDetectParserConfig.getMetadataWriteFilterFactory().newInstance());
        }
        TemporaryResources temporaryResources = new TemporaryResources();
        try {
            TikaInputStream tikaInputStream = TikaInputStream.get(inputStream, temporaryResources, metadata);
            maybeSpool(tikaInputStream, this.autoDetectParserConfig, metadata);
            MediaType detect = this.detector.detect(tikaInputStream, metadata);
            Property property = TikaCoreProperties.CONTENT_TYPE_PARSER_OVERRIDE;
            if (metadata.get(property) == null || !metadata.get(property).equals(detect.toString())) {
                metadata.set(HttpHeaders.CONTENT_TYPE, detect.toString());
            }
            if (tikaInputStream.getOpenContainer() == null && this.autoDetectParserConfig.getThrowOnZeroBytes()) {
                tikaInputStream.mark(1);
                if (tikaInputStream.read() != -1) {
                    tikaInputStream.reset();
                } else {
                    throw new ZeroByteFileException("InputStream must have > 0 bytes");
                }
            }
            ContentHandler decorateHandler = decorateHandler(contentHandler, metadata, parseContext, this.autoDetectParserConfig);
            SecureContentHandler createSecureContentHandler = decorateHandler != null ? createSecureContentHandler(decorateHandler, tikaInputStream, this.autoDetectParserConfig) : null;
            initializeEmbeddedDocumentExtractor(metadata, parseContext);
            try {
                super.parse(tikaInputStream, createSecureContentHandler, metadata, parseContext);
            } catch (SAXException e10) {
                createSecureContentHandler.throwIfCauseOf(e10);
                throw e10;
            }
        } finally {
            temporaryResources.dispose();
        }
    }

    public void setAutoDetectParserConfig(AutoDetectParserConfig autoDetectParserConfig) {
        this.autoDetectParserConfig = autoDetectParserConfig;
    }

    public void setDetector(Detector detector) {
        this.detector = detector;
    }

    public AutoDetectParser(Detector detector) {
        this(TikaConfig.getDefaultConfig());
        setDetector(detector);
    }

    public AutoDetectParser(Parser... parserArr) {
        this(new DefaultDetector(), parserArr);
    }

    public AutoDetectParser(Detector detector, Parser... parserArr) {
        super(MediaTypeRegistry.getDefaultRegistry(), parserArr);
        setDetector(detector);
        setAutoDetectParserConfig(AutoDetectParserConfig.DEFAULT);
    }

    public AutoDetectParser(TikaConfig tikaConfig) {
        super(tikaConfig.getMediaTypeRegistry(), getParser(tikaConfig));
        setFallback(buildFallbackParser(tikaConfig));
        setDetector(tikaConfig.getDetector());
        setAutoDetectParserConfig(tikaConfig.getAutoDetectParserConfig());
    }

    public void parse(InputStream inputStream, ContentHandler contentHandler, Metadata metadata) {
        ParseContext parseContext = new ParseContext();
        parseContext.set(Parser.class, this);
        parse(inputStream, contentHandler, metadata, parseContext);
    }
}
