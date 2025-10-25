package org.apache.tika.extractor;

import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import org.apache.tika.exception.CorruptedFileException;
import org.apache.tika.exception.EncryptedDocumentException;
import org.apache.tika.exception.TikaException;
import org.apache.tika.io.TemporaryResources;
import org.apache.tika.io.TikaInputStream;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.TikaCoreProperties;
import org.apache.tika.parser.DelegatingParser;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.ParseRecord;
import org.apache.tika.parser.Parser;
import org.apache.tika.sax.BodyContentHandler;
import org.apache.tika.sax.EmbeddedContentHandler;
import org.apache.tika.sax.XHTMLContentHandler;
import org.xml.sax.ContentHandler;
import org.xml.sax.helpers.AttributesImpl;
/* loaded from: classes2.dex */
public class ParsingEmbeddedDocumentExtractor implements EmbeddedDocumentExtractor {
    private static final File ABSTRACT_PATH = new File("");
    private static final Parser DELEGATING_PARSER = new DelegatingParser();
    protected final ParseContext context;
    private boolean writeFileNameToContent = true;

    public ParsingEmbeddedDocumentExtractor(ParseContext parseContext) {
        this.context = parseContext;
    }

    public Parser getDelegatingParser() {
        return DELEGATING_PARSER;
    }

    public boolean isWriteFileNameToContent() {
        return this.writeFileNameToContent;
    }

    @Override // org.apache.tika.extractor.EmbeddedDocumentExtractor
    public void parseEmbedded(InputStream inputStream, ContentHandler contentHandler, Metadata metadata, boolean z10) {
        Object openContainer;
        if (z10) {
            AttributesImpl attributesImpl = new AttributesImpl();
            attributesImpl.addAttribute("", Constants.CLASS, Constants.CLASS, "CDATA", "package-entry");
            contentHandler.startElement(XHTMLContentHandler.XHTML, "div", "div", attributesImpl);
        }
        String str = metadata.get(TikaCoreProperties.RESOURCE_NAME_KEY);
        if (this.writeFileNameToContent && str != null && str.length() > 0 && z10) {
            contentHandler.startElement(XHTMLContentHandler.XHTML, "h1", "h1", new AttributesImpl());
            char[] charArray = str.toCharArray();
            contentHandler.characters(charArray, 0, charArray.length);
            contentHandler.endElement(XHTMLContentHandler.XHTML, "h1", "h1");
        }
        try {
            TemporaryResources temporaryResources = new TemporaryResources();
            try {
                TikaInputStream tikaInputStream = TikaInputStream.get(org.apache.commons.io.input.a.a(inputStream), temporaryResources, metadata);
                if ((inputStream instanceof TikaInputStream) && (openContainer = ((TikaInputStream) inputStream).getOpenContainer()) != null) {
                    tikaInputStream.setOpenContainer(openContainer);
                }
                DELEGATING_PARSER.parse(tikaInputStream, new EmbeddedContentHandler(new BodyContentHandler(contentHandler)), metadata, this.context);
                temporaryResources.close();
            } catch (Throwable th) {
                try {
                    temporaryResources.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (CorruptedFileException e10) {
            throw new IOException(e10);
        } catch (EncryptedDocumentException e11) {
            recordException(e11, this.context);
        } catch (TikaException e12) {
            recordException(e12, this.context);
        }
        if (z10) {
            contentHandler.endElement(XHTMLContentHandler.XHTML, "div", "div");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void recordException(Exception exc, ParseContext parseContext) {
        ParseRecord parseRecord = (ParseRecord) parseContext.get(ParseRecord.class);
        if (parseRecord == null) {
            return;
        }
        parseRecord.addException(exc);
    }

    public void setWriteFileNameToContent(boolean z10) {
        this.writeFileNameToContent = z10;
    }

    @Override // org.apache.tika.extractor.EmbeddedDocumentExtractor
    public boolean shouldParseEmbedded(Metadata metadata) {
        String str;
        DocumentSelector documentSelector = (DocumentSelector) this.context.get(DocumentSelector.class);
        if (documentSelector != null) {
            return documentSelector.select(metadata);
        }
        FilenameFilter filenameFilter = (FilenameFilter) this.context.get(FilenameFilter.class);
        if (filenameFilter != null && (str = metadata.get(TikaCoreProperties.RESOURCE_NAME_KEY)) != null) {
            return filenameFilter.accept(ABSTRACT_PATH, str);
        }
        return true;
    }
}
