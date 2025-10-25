package org.apache.tika.sax;

import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.helpers.DefaultHandler;
/* loaded from: classes2.dex */
public class TextContentHandler extends DefaultHandler {
    private static final char[] SPACE = {' '};
    private final boolean addSpaceBetweenElements;
    private final ContentHandler delegate;

    public TextContentHandler(ContentHandler contentHandler) {
        this(contentHandler, false);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i10, int i11) {
        this.delegate.characters(cArr, i10, i11);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() {
        this.delegate.endDocument();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i10, int i11) {
        this.delegate.ignorableWhitespace(cArr, i10, i11);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this.delegate.setDocumentLocator(locator);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() {
        this.delegate.startDocument();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        if (this.addSpaceBetweenElements) {
            ContentHandler contentHandler = this.delegate;
            char[] cArr = SPACE;
            contentHandler.characters(cArr, 0, cArr.length);
        }
    }

    public String toString() {
        return this.delegate.toString();
    }

    public TextContentHandler(ContentHandler contentHandler, boolean z10) {
        this.delegate = contentHandler;
        this.addSpaceBetweenElements = z10;
    }
}
