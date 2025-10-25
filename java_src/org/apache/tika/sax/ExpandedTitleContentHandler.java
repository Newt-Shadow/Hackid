package org.apache.tika.sax;

import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
/* loaded from: classes2.dex */
public class ExpandedTitleContentHandler extends ContentHandlerDecorator {
    private static final String TITLE_TAG = "TITLE";
    private boolean isTitleTagOpen;

    public ExpandedTitleContentHandler() {
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i10, int i11) {
        if (this.isTitleTagOpen && i11 == 0) {
            try {
                super.characters(new char[0], 0, 1);
                return;
            } catch (ArrayIndexOutOfBoundsException unused) {
                return;
            }
        }
        super.characters(cArr, i10, i11);
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        super.endElement(str, str2, str3);
        if (TITLE_TAG.equalsIgnoreCase(str2) && XHTMLContentHandler.XHTML.equals(str)) {
            this.isTitleTagOpen = false;
        }
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() {
        super.startDocument();
        this.isTitleTagOpen = false;
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        super.startElement(str, str2, str3, attributes);
        if (TITLE_TAG.equalsIgnoreCase(str2) && XHTMLContentHandler.XHTML.equals(str)) {
            this.isTitleTagOpen = true;
        }
    }

    public ExpandedTitleContentHandler(ContentHandler contentHandler) {
        super(contentHandler);
    }
}
