package org.apache.tika.sax;

import java.io.StringWriter;
import java.io.Writer;
import org.apache.tika.exception.WriteLimitReachedException;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.ParseRecord;
import org.xml.sax.ContentHandler;
/* loaded from: classes2.dex */
public class WriteOutContentHandler extends ContentHandlerDecorator {
    private ParseContext parseContext;
    private boolean throwOnWriteLimitReached;
    private int writeCount;
    private final int writeLimit;
    private boolean writeLimitReached;

    public WriteOutContentHandler(ContentHandler contentHandler, int i10) {
        super(contentHandler);
        this.writeCount = 0;
        this.throwOnWriteLimitReached = true;
        this.parseContext = null;
        this.writeLimit = i10;
    }

    private void handleWriteLimitReached() {
        this.writeLimitReached = true;
        this.writeCount = this.writeLimit;
        if (!this.throwOnWriteLimitReached) {
            ParseRecord parseRecord = (ParseRecord) this.parseContext.get(ParseRecord.class);
            if (parseRecord != null) {
                parseRecord.setWriteLimitReached(true);
                return;
            }
            return;
        }
        throw new WriteLimitReachedException(this.writeLimit);
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i10, int i11) {
        if (this.writeLimitReached) {
            return;
        }
        int i12 = this.writeLimit;
        if (i12 != -1) {
            int i13 = this.writeCount;
            if (i13 + i11 > i12) {
                super.characters(cArr, i10, i12 - i13);
                handleWriteLimitReached();
                return;
            }
        }
        super.characters(cArr, i10, i11);
        this.writeCount += i11;
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i10, int i11) {
        if (this.writeLimitReached) {
            return;
        }
        int i12 = this.writeLimit;
        if (i12 != -1) {
            int i13 = this.writeCount;
            if (i13 + i11 > i12) {
                super.ignorableWhitespace(cArr, i10, i12 - i13);
                handleWriteLimitReached();
                return;
            }
        }
        super.ignorableWhitespace(cArr, i10, i11);
        this.writeCount += i11;
    }

    public WriteOutContentHandler(Writer writer, int i10) {
        this(new ToTextContentHandler(writer), i10);
    }

    public WriteOutContentHandler(Writer writer) {
        this(writer, -1);
    }

    public WriteOutContentHandler(int i10) {
        this(new StringWriter(), i10);
    }

    public WriteOutContentHandler() {
        this(100000);
    }

    public WriteOutContentHandler(ContentHandler contentHandler, int i10, boolean z10, ParseContext parseContext) {
        super(contentHandler);
        this.writeCount = 0;
        this.writeLimit = i10;
        this.throwOnWriteLimitReached = z10;
        this.parseContext = parseContext;
    }
}
