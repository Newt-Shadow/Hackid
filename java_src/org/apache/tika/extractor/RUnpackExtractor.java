package org.apache.tika.extractor;

import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import mf.c;
import mf.e;
import org.apache.tika.exception.CorruptedFileException;
import org.apache.tika.exception.EncryptedDocumentException;
import org.apache.tika.exception.TikaException;
import org.apache.tika.io.BoundedInputStream;
import org.apache.tika.io.TemporaryResources;
import org.apache.tika.io.TikaInputStream;
import org.apache.tika.metadata.HttpHeaders;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.TikaCoreProperties;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.sax.BodyContentHandler;
import org.apache.tika.sax.EmbeddedContentHandler;
import org.apache.tika.sax.XHTMLContentHandler;
import org.xml.sax.ContentHandler;
import org.xml.sax.helpers.AttributesImpl;
/* loaded from: classes2.dex */
public class RUnpackExtractor extends ParsingEmbeddedDocumentExtractor {
    private long bytesExtracted;
    private EmbeddedBytesSelector embeddedBytesSelector;
    private final long maxEmbeddedBytesForExtraction;
    private static final c LOGGER = e.l(ParsingEmbeddedDocumentExtractor.class);
    private static final File ABSTRACT_PATH = new File("");

    public RUnpackExtractor(ParseContext parseContext, long j10) {
        super(parseContext);
        this.embeddedBytesSelector = EmbeddedBytesSelector.ACCEPT_ALL;
        this.bytesExtracted = 0L;
        this.maxEmbeddedBytesForExtraction = j10;
    }

    private void parse(InputStream inputStream, ContentHandler contentHandler, Metadata metadata) {
        getDelegatingParser().parse(inputStream, new EmbeddedContentHandler(new BodyContentHandler(contentHandler)), metadata, this.context);
    }

    private void parseWithBytes(TikaInputStream tikaInputStream, ContentHandler contentHandler, Metadata metadata) {
        Path path = tikaInputStream.getPath();
        try {
            parse(org.apache.commons.io.input.a.a(tikaInputStream), contentHandler, metadata);
        } finally {
            storeEmbeddedBytes(path, metadata);
        }
    }

    private void storeEmbeddedBytes(Path path, Metadata metadata) {
        InputStream newInputStream;
        if (!this.embeddedBytesSelector.select(metadata)) {
            c cVar = LOGGER;
            if (cVar.e()) {
                cVar.d("skipping embedded bytes {} <-> {}", metadata.get(HttpHeaders.CONTENT_TYPE), metadata.get(TikaCoreProperties.EMBEDDED_RESOURCE_TYPE));
                return;
            }
            return;
        }
        EmbeddedDocumentBytesHandler embeddedDocumentBytesHandler = (EmbeddedDocumentBytesHandler) this.context.get(EmbeddedDocumentBytesHandler.class);
        int intValue = metadata.getInt(TikaCoreProperties.EMBEDDED_ID).intValue();
        try {
            newInputStream = Files.newInputStream(path, new OpenOption[0]);
            long j10 = this.bytesExtracted;
            long j11 = this.maxEmbeddedBytesForExtraction;
            if (j10 < j11) {
                BoundedInputStream boundedInputStream = new BoundedInputStream(j11 - j10, newInputStream);
                try {
                    embeddedDocumentBytesHandler.add(intValue, metadata, boundedInputStream);
                    this.bytesExtracted += boundedInputStream.getPos();
                    if (!boundedInputStream.hasHitBound()) {
                        boundedInputStream.close();
                        if (newInputStream != null) {
                            newInputStream.close();
                            return;
                        }
                        return;
                    }
                    throw new IOException("Bytes extracted (" + this.bytesExtracted + ") >= max allowed (" + this.maxEmbeddedBytesForExtraction + "). Truncated bytes");
                } catch (Throwable th) {
                    try {
                        boundedInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            throw new IOException("Bytes extracted (" + this.bytesExtracted + ") >= max allowed (" + this.maxEmbeddedBytesForExtraction + ")");
        } catch (IOException e10) {
            LOGGER.u("problem writing out embedded bytes", e10);
        }
    }

    public EmbeddedBytesSelector getEmbeddedBytesSelector() {
        return this.embeddedBytesSelector;
    }

    @Override // org.apache.tika.extractor.ParsingEmbeddedDocumentExtractor, org.apache.tika.extractor.EmbeddedDocumentExtractor
    public void parseEmbedded(InputStream inputStream, ContentHandler contentHandler, Metadata metadata, boolean z10) {
        Object openContainer;
        if (z10) {
            AttributesImpl attributesImpl = new AttributesImpl();
            attributesImpl.addAttribute("", Constants.CLASS, Constants.CLASS, "CDATA", "package-entry");
            contentHandler.startElement(XHTMLContentHandler.XHTML, "div", "div", attributesImpl);
        }
        String str = metadata.get(TikaCoreProperties.RESOURCE_NAME_KEY);
        if (isWriteFileNameToContent() && str != null && str.length() > 0 && z10) {
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
                if (((EmbeddedDocumentBytesHandler) this.context.get(EmbeddedDocumentBytesHandler.class)) != null) {
                    parseWithBytes(tikaInputStream, contentHandler, metadata);
                } else {
                    parse(tikaInputStream, contentHandler, metadata);
                }
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

    public void setEmbeddedBytesSelector(EmbeddedBytesSelector embeddedBytesSelector) {
        this.embeddedBytesSelector = embeddedBytesSelector;
    }
}
