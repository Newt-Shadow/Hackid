package org.apache.tika.fork;

import io.flutter.plugins.firebase.analytics.Constants;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.Office;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;
/* loaded from: classes2.dex */
class MetadataContentHandler extends DefaultHandler {
    private final Metadata metadata;

    public MetadataContentHandler(Metadata metadata) {
        this.metadata = metadata;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        if (Office.PREFIX_DOC_META.equals(str2)) {
            this.metadata.add(attributes.getValue(Constants.NAME), attributes.getValue("content"));
        }
    }
}
