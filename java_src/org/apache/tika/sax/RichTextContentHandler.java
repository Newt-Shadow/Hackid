package org.apache.tika.sax;

import io.flutter.plugins.firebase.analytics.Constants;
import java.io.Writer;
import org.xml.sax.Attributes;
/* loaded from: classes2.dex */
public class RichTextContentHandler extends WriteOutContentHandler {
    public RichTextContentHandler(Writer writer) {
        super(writer);
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        super.startElement(str, str2, str3, attributes);
        if ("img".equals(str2) && attributes.getValue("alt") != null) {
            String str4 = "[image: " + attributes.getValue("alt") + "]";
            characters(str4.toCharArray(), 0, str4.length());
        }
        if ("a".equals(str2) && attributes.getValue(Constants.NAME) != null) {
            String str5 = "[bookmark: " + attributes.getValue(Constants.NAME) + "]";
            characters(str5.toCharArray(), 0, str5.length());
        }
    }
}
