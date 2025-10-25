package org.apache.tika.parser;

import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.tika.exception.WriteLimitReachedException;
import org.apache.tika.io.FilenameUtils;
import org.apache.tika.io.TikaInputStream;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.Property;
import org.apache.tika.metadata.TikaCoreProperties;
import org.apache.tika.mime.MediaType;
import org.apache.tika.sax.AbstractRecursiveParserWrapperHandler;
import org.apache.tika.sax.SecureContentHandler;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
/* loaded from: classes2.dex */
public class RecursiveParserWrapper extends ParserDecorator {
    private static final long serialVersionUID = 9086536568120690938L;
    private final boolean catchEmbeddedExceptions;
    private final boolean inlineContent;

    /* loaded from: classes2.dex */
    private class EmbeddedParserDecorator extends StatefulParser {
        private static final long serialVersionUID = 207648200464263337L;
        private String embeddedIdPath;
        private String location;
        private final ParserState parserState;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:56:0x01fb  */
        /* JADX WARN: Type inference failed for: r23v0, types: [org.apache.tika.parser.ParserDecorator, org.apache.tika.parser.Parser, org.apache.tika.parser.RecursiveParserWrapper$EmbeddedParserDecorator] */
        /* JADX WARN: Type inference failed for: r3v11, types: [org.xml.sax.ContentHandler] */
        /* JADX WARN: Type inference failed for: r3v6, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r3v7 */
        /* JADX WARN: Type inference failed for: r4v17, types: [org.apache.tika.sax.AbstractRecursiveParserWrapperHandler] */
        @Override // org.apache.tika.parser.ParserDecorator, org.apache.tika.parser.Parser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void parse(java.io.InputStream r24, org.xml.sax.ContentHandler r25, org.apache.tika.metadata.Metadata r26, org.apache.tika.parser.ParseContext r27) {
            /*
                Method dump skipped, instructions count: 511
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.parser.RecursiveParserWrapper.EmbeddedParserDecorator.parse(java.io.InputStream, org.xml.sax.ContentHandler, org.apache.tika.metadata.Metadata, org.apache.tika.parser.ParseContext):void");
        }

        private EmbeddedParserDecorator(Parser parser, String str, String str2, ParserState parserState) {
            super(parser);
            this.embeddedIdPath = null;
            this.location = str;
            if (!str.endsWith("/")) {
                String str3 = this.location;
                this.location = str3 + "/";
            }
            this.embeddedIdPath = str2;
            this.parserState = parserState;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ParserState {
        private int embeddedCount;
        private final AbstractRecursiveParserWrapperHandler recursiveParserWrapperHandler;
        private AtomicInteger unknownCount;

        private ParserState(AbstractRecursiveParserWrapperHandler abstractRecursiveParserWrapperHandler) {
            this.unknownCount = new AtomicInteger(0);
            this.embeddedCount = 0;
            this.recursiveParserWrapperHandler = abstractRecursiveParserWrapperHandler;
        }
    }

    /* loaded from: classes2.dex */
    static class RecursivelySecureContentHandler extends SecureContentHandler {
        private static AtomicInteger COUNTER = new AtomicInteger();
        private final ContentHandler handler;
        private final SecureHandlerCounter handlerCounter;

        /* renamed from: id  reason: collision with root package name */
        private final int f27654id;
        private final ParseContext parseContext;
        private final boolean throwOnWriteLimitReached;

        public RecursivelySecureContentHandler(ContentHandler contentHandler, TikaInputStream tikaInputStream, SecureHandlerCounter secureHandlerCounter, boolean z10, ParseContext parseContext) {
            super(contentHandler, tikaInputStream);
            this.f27654id = COUNTER.getAndIncrement();
            this.handler = contentHandler;
            this.handlerCounter = secureHandlerCounter;
            this.throwOnWriteLimitReached = z10;
            this.parseContext = parseContext;
        }

        private void handleWriteLimitReached() {
            this.handlerCounter.writeLimitReached = true;
            if (!this.throwOnWriteLimitReached) {
                ParseRecord parseRecord = (ParseRecord) this.parseContext.get(ParseRecord.class);
                if (parseRecord != null) {
                    parseRecord.setWriteLimitReached(true);
                    return;
                }
                return;
            }
            throw new WriteLimitReachedException(this.handlerCounter.totalWriteLimit);
        }

        @Override // org.apache.tika.sax.SecureContentHandler, org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i10, int i11) {
            if (this.handlerCounter.writeLimitReached) {
                return;
            }
            if (this.handlerCounter.totalWriteLimit < 0) {
                super.characters(cArr, i10, i11);
                return;
            }
            int available = this.handlerCounter.getAvailable(i11);
            super.characters(cArr, i10, available);
            this.handlerCounter.addChars(available);
            if (available < i11) {
                handleWriteLimitReached();
            }
        }

        @Override // org.apache.tika.sax.SecureContentHandler, org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            this.handler.endElement(str, str2, str3);
        }

        @Override // org.apache.tika.sax.SecureContentHandler, org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i10, int i11) {
            if (this.handlerCounter.writeLimitReached) {
                return;
            }
            if (this.handlerCounter.totalWriteLimit < 0) {
                super.ignorableWhitespace(cArr, i10, i11);
                return;
            }
            int available = this.handlerCounter.getAvailable(i11);
            super.ignorableWhitespace(cArr, i10, available);
            this.handlerCounter.addChars(available);
            if (available < i11) {
                handleWriteLimitReached();
            }
        }

        @Override // org.apache.tika.sax.SecureContentHandler, org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            this.handler.startElement(str, str2, str3, attributes);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SecureHandlerCounter {
        private int totalChars;
        private final int totalWriteLimit;
        private boolean writeLimitReached;

        void addChars(int i10) {
            this.totalChars += i10;
        }

        int getAvailable(int i10) {
            return Math.min(this.totalWriteLimit - this.totalChars, i10);
        }

        private SecureHandlerCounter(int i10) {
            this.writeLimitReached = false;
            this.totalChars = 0;
            this.totalWriteLimit = i10;
        }
    }

    public RecursiveParserWrapper(Parser parser) {
        this(parser, true);
    }

    public static String getResourceName(Metadata metadata, AtomicInteger atomicInteger) {
        String str;
        if (metadata.get(TikaCoreProperties.RESOURCE_NAME_KEY) != null) {
            str = metadata.get(TikaCoreProperties.RESOURCE_NAME_KEY);
        } else if (metadata.get(TikaCoreProperties.EMBEDDED_RELATIONSHIP_ID) != null) {
            str = metadata.get(TikaCoreProperties.EMBEDDED_RELATIONSHIP_ID);
        } else {
            Property property = TikaCoreProperties.VERSION_NUMBER;
            if (metadata.get(property) != null) {
                str = "version-number-" + metadata.get(property);
            } else {
                str = "embedded-" + atomicInteger.incrementAndGet();
            }
        }
        return FilenameUtils.getName(str);
    }

    @Override // org.apache.tika.parser.ParserDecorator, org.apache.tika.parser.Parser
    public Set<MediaType> getSupportedTypes(ParseContext parseContext) {
        return getWrappedParser().getSupportedTypes(parseContext);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:3|(2:5|(10:7|8|9|10|11|12|13|14|15|16))|38|8|9|10|11|12|13|14|15|16) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00a1, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00a2, code lost:
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a4, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a5, code lost:
        r2 = null;
        r16 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ac, code lost:
        if ((r0 instanceof org.apache.tika.exception.EncryptedDocumentException) != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ae, code lost:
        r20.set(org.apache.tika.metadata.TikaCoreProperties.IS_ENCRYPTED, "true");
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b7, code lost:
        if (org.apache.tika.exception.WriteLimitReachedException.isWriteLimitReached(r0) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b9, code lost:
        r20.set(org.apache.tika.metadata.TikaCoreProperties.WRITE_LIMIT_REACHED, "true");
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00be, code lost:
        r13.dispose();
        r20.set(org.apache.tika.metadata.TikaCoreProperties.PARSE_TIME_MILLIS, java.lang.Long.toString(java.lang.System.currentTimeMillis() - r11));
        r16.recursiveParserWrapperHandler.endDocument(r10, r20);
        r16.recursiveParserWrapperHandler.endDocument();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00df, code lost:
        r20.add(org.apache.tika.metadata.TikaCoreProperties.CONTAINER_EXCEPTION, org.apache.tika.utils.ExceptionUtils.getFilteredStackTrace(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e8, code lost:
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e9, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ea, code lost:
        r13.dispose();
        r20.set(org.apache.tika.metadata.TikaCoreProperties.PARSE_TIME_MILLIS, java.lang.Long.toString(java.lang.System.currentTimeMillis() - r11));
        r16.recursiveParserWrapperHandler.endDocument(r10, r20);
        r16.recursiveParserWrapperHandler.endDocument();
        r21.set(org.apache.tika.parser.RecursiveParserWrapper.RecursivelySecureContentHandler.class, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x010c, code lost:
        throw r0;
     */
    @Override // org.apache.tika.parser.ParserDecorator, org.apache.tika.parser.Parser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parse(java.io.InputStream r18, org.xml.sax.ContentHandler r19, org.apache.tika.metadata.Metadata r20, org.apache.tika.parser.ParseContext r21) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.parser.RecursiveParserWrapper.parse(java.io.InputStream, org.xml.sax.ContentHandler, org.apache.tika.metadata.Metadata, org.apache.tika.parser.ParseContext):void");
    }

    public RecursiveParserWrapper(Parser parser, boolean z10) {
        super(parser);
        this.inlineContent = false;
        this.catchEmbeddedExceptions = z10;
    }
}
