package org.apache.tika.sax;

import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.helpers.DefaultHandler;
/* loaded from: classes2.dex */
public class TeeContentHandler extends DefaultHandler {
    private final ContentHandler[] handlers;

    public TeeContentHandler(ContentHandler... contentHandlerArr) {
        this.handlers = contentHandlerArr;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i10, int i11) {
        for (ContentHandler contentHandler : this.handlers) {
            contentHandler.characters(cArr, i10, i11);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() {
        for (ContentHandler contentHandler : this.handlers) {
            contentHandler.endDocument();
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        for (ContentHandler contentHandler : this.handlers) {
            contentHandler.endElement(str, str2, str3);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) {
        for (ContentHandler contentHandler : this.handlers) {
            contentHandler.endPrefixMapping(str);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i10, int i11) {
        for (ContentHandler contentHandler : this.handlers) {
            contentHandler.ignorableWhitespace(cArr, i10, i11);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) {
        for (ContentHandler contentHandler : this.handlers) {
            contentHandler.processingInstruction(str, str2);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        for (ContentHandler contentHandler : this.handlers) {
            contentHandler.setDocumentLocator(locator);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void skippedEntity(String str) {
        for (ContentHandler contentHandler : this.handlers) {
            contentHandler.skippedEntity(str);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() {
        for (ContentHandler contentHandler : this.handlers) {
            contentHandler.startDocument();
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        for (ContentHandler contentHandler : this.handlers) {
            contentHandler.startElement(str, str2, str3, attributes);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) {
        for (ContentHandler contentHandler : this.handlers) {
            contentHandler.startPrefixMapping(str, str2);
        }
    }
}
