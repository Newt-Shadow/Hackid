package org.apache.tika.sax;

import java.io.Writer;
import org.apache.tika.sax.xpath.Matcher;
import org.apache.tika.sax.xpath.MatchingContentHandler;
import org.apache.tika.sax.xpath.XPathParser;
import org.xml.sax.ContentHandler;
/* loaded from: classes2.dex */
public class BodyContentHandler extends ContentHandlerDecorator {
    private static final Matcher MATCHER;
    private static final XPathParser PARSER;

    static {
        XPathParser xPathParser = new XPathParser("xhtml", XHTMLContentHandler.XHTML);
        PARSER = xPathParser;
        MATCHER = xPathParser.parse("/xhtml:html/xhtml:body/descendant::node()");
    }

    public BodyContentHandler(ContentHandler contentHandler) {
        super(new MatchingContentHandler(contentHandler, MATCHER));
    }

    public BodyContentHandler(Writer writer) {
        this(new WriteOutContentHandler(writer));
    }

    public BodyContentHandler(int i10) {
        this(new WriteOutContentHandler(i10));
    }

    public BodyContentHandler() {
        this(new WriteOutContentHandler());
    }
}
