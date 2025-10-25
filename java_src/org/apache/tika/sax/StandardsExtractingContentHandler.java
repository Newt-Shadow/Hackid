package org.apache.tika.sax;

import java.util.Arrays;
import org.apache.tika.metadata.Metadata;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
/* loaded from: classes2.dex */
public class StandardsExtractingContentHandler extends ContentHandlerDecorator {
    public static final String STANDARD_REFERENCES = "standard_references";
    private int maxBufferLength;
    private final Metadata metadata;
    private final StringBuilder stringBuilder;
    private double threshold;

    public StandardsExtractingContentHandler(ContentHandler contentHandler, Metadata metadata) {
        super(contentHandler);
        this.maxBufferLength = 100000;
        this.threshold = 0.0d;
        this.metadata = metadata;
        this.stringBuilder = new StringBuilder();
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i10, int i11) {
        int length;
        try {
            int i12 = this.maxBufferLength;
            if (i12 > -1 && (length = i12 - this.stringBuilder.length()) <= i11) {
                i11 = length;
            }
            this.stringBuilder.append(new String(Arrays.copyOfRange(cArr, i10, i10 + i11)));
            super.characters(cArr, i10, i11);
        } catch (SAXException e10) {
            handleException(e10);
        }
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() {
        super.endDocument();
        for (StandardReference standardReference : StandardsText.extractStandardReferences(this.stringBuilder.toString(), this.threshold)) {
            this.metadata.add(STANDARD_REFERENCES, standardReference.toString());
        }
    }

    public double getThreshold() {
        return this.threshold;
    }

    public void setMaxBufferLength(int i10) {
        this.maxBufferLength = i10;
    }

    public void setThreshold(double d10) {
        this.threshold = d10;
    }

    protected StandardsExtractingContentHandler() {
        this(new DefaultHandler(), new Metadata());
    }
}
