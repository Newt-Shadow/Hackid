package org.apache.tika.sax;

import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
/* loaded from: classes2.dex */
public class OfflineContentHandler extends ContentHandlerDecorator {
    public OfflineContentHandler(ContentHandler contentHandler) {
        super(contentHandler);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) {
        return new InputSource(new org.apache.commons.io.input.b());
    }
}
