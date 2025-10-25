package org.apache.tika.parser;

import io.flutter.plugins.firebase.analytics.Constants;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.URI;
import java.net.URLConnection;
import java.util.Collections;
import java.util.Set;
import org.apache.tika.exception.TikaException;
import org.apache.tika.io.TemporaryResources;
import org.apache.tika.io.TikaInputStream;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.Office;
import org.apache.tika.mime.MediaType;
import org.apache.tika.sax.TaggedContentHandler;
import org.apache.tika.sax.TeeContentHandler;
import org.apache.tika.sax.XHTMLContentHandler;
import org.apache.tika.utils.XMLReaderUtils;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
/* loaded from: classes2.dex */
public class NetworkParser implements Parser {
    private final Set<MediaType> supportedTypes;
    private final URI uri;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class MetaHandler extends DefaultHandler {
        private final Metadata metadata;

        public MetaHandler(Metadata metadata) {
            this.metadata = metadata;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            if (XHTMLContentHandler.XHTML.equals(str) && Office.PREFIX_DOC_META.equals(str2)) {
                String value = attributes.getValue("", Constants.NAME);
                String value2 = attributes.getValue("", "content");
                if (value != null && value2 != null) {
                    this.metadata.add(value, value2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ParsingTask implements Runnable {
        private volatile Exception exception = null;
        private final TikaInputStream input;
        private final OutputStream output;

        public ParsingTask(TikaInputStream tikaInputStream, OutputStream outputStream) {
            this.input = tikaInputStream;
            this.output = outputStream;
        }

        public void parse(InputStream inputStream, ContentHandler contentHandler, Metadata metadata, ParseContext parseContext) {
            Thread thread = new Thread(this, "Tika network parser");
            thread.start();
            TaggedContentHandler taggedContentHandler = new TaggedContentHandler(contentHandler);
            try {
                try {
                    XMLReaderUtils.parseSAX(inputStream, new TeeContentHandler(taggedContentHandler, new MetaHandler(metadata)), parseContext);
                    try {
                        thread.join(1000L);
                        if (this.exception == null) {
                            return;
                        }
                        this.input.throwIfCauseOf(this.exception);
                        throw new TikaException("Unexpected network parser error", this.exception);
                    } catch (InterruptedException e10) {
                        throw new TikaException("Network parser interrupted", e10);
                    }
                } catch (Throwable th) {
                    try {
                        thread.join(1000L);
                        if (this.exception != null) {
                            this.input.throwIfCauseOf(this.exception);
                            throw new TikaException("Unexpected network parser error", this.exception);
                        }
                        throw th;
                    } catch (InterruptedException e11) {
                        throw new TikaException("Network parser interrupted", e11);
                    }
                }
            } catch (IOException e12) {
                throw new TikaException("Unable to read network parser output", e12);
            } catch (SAXException e13) {
                taggedContentHandler.throwIfCauseOf(e13);
                throw new TikaException("Invalid network parser output", e13);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                cf.g.n(this.input, this.output);
                this.output.close();
            } catch (Exception e10) {
                this.exception = e10;
            }
        }
    }

    public NetworkParser(URI uri, Set<MediaType> set) {
        this.uri = uri;
        this.supportedTypes = set;
    }

    @Override // org.apache.tika.parser.Parser
    public Set<MediaType> getSupportedTypes(ParseContext parseContext) {
        return this.supportedTypes;
    }

    @Override // org.apache.tika.parser.Parser
    public void parse(InputStream inputStream, ContentHandler contentHandler, Metadata metadata, ParseContext parseContext) {
        TemporaryResources temporaryResources = new TemporaryResources();
        try {
            parse(TikaInputStream.get(inputStream, temporaryResources, metadata), contentHandler, metadata, parseContext);
        } finally {
            temporaryResources.dispose();
        }
    }

    public NetworkParser(URI uri) {
        this(uri, Collections.singleton(MediaType.OCTET_STREAM));
    }

    private void parse(TikaInputStream tikaInputStream, ContentHandler contentHandler, Metadata metadata, ParseContext parseContext) {
        if ("telnet".equals(this.uri.getScheme())) {
            final Socket socket = new Socket(this.uri.getHost(), this.uri.getPort());
            try {
                new ParsingTask(tikaInputStream, new FilterOutputStream(socket.getOutputStream()) { // from class: org.apache.tika.parser.NetworkParser.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public void close() {
                        socket.shutdownOutput();
                    }
                }).parse(socket.getInputStream(), contentHandler, metadata, parseContext);
                socket.close();
                return;
            } catch (Throwable th) {
                try {
                    socket.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        URLConnection openConnection = this.uri.toURL().openConnection();
        openConnection.setDoOutput(true);
        openConnection.connect();
        InputStream inputStream = openConnection.getInputStream();
        try {
            new ParsingTask(tikaInputStream, openConnection.getOutputStream()).parse(org.apache.commons.io.input.a.a(inputStream), contentHandler, metadata, parseContext);
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th3) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
            }
            throw th3;
        }
    }
}
