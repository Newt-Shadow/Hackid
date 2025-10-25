package org.apache.tika.sax;

import java.util.Arrays;
import org.apache.tika.metadata.Metadata;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
/* loaded from: classes2.dex */
public class PhoneExtractingContentHandler extends ContentHandlerDecorator {
    private static final String PHONE_NUMBERS = "phonenumbers";
    private final Metadata metadata;
    private final StringBuilder stringBuilder;

    public PhoneExtractingContentHandler(ContentHandler contentHandler, Metadata metadata) {
        super(contentHandler);
        this.metadata = metadata;
        this.stringBuilder = new StringBuilder();
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i10, int i11) {
        try {
            this.stringBuilder.append(new String(Arrays.copyOfRange(cArr, i10, i10 + i11)));
            super.characters(cArr, i10, i11);
        } catch (SAXException e10) {
            handleException(e10);
        }
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() {
        super.endDocument();
        for (String str : CleanPhoneText.extractPhoneNumbers(this.stringBuilder.toString())) {
            this.metadata.add(PHONE_NUMBERS, str);
        }
    }

    protected PhoneExtractingContentHandler() {
        this(new DefaultHandler(), new Metadata());
    }
}
