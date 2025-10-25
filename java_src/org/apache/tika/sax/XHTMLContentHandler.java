package org.apache.tika.sax;

import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.tika.metadata.HttpHeaders;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.Office;
import org.apache.tika.metadata.TikaCoreProperties;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.helpers.AttributesImpl;
/* loaded from: classes2.dex */
public class XHTMLContentHandler extends SafeContentHandler {
    public static final String XHTML = "http://www.w3.org/1999/xhtml";
    private boolean documentStarted;
    private boolean headEnded;
    private boolean headStarted;
    private final Metadata metadata;
    private boolean useFrameset;
    public static final Set<String> ENDLINE = unmodifiableSet("p", "h1", "h2", "h3", "h4", "h5", "h6", "div", "ul", "ol", "dl", "pre", "hr", "blockquote", "address", "fieldset", "table", "form", "noscript", "li", "dt", "dd", "noframes", "br", "tr", "select", "option", "link", "script");
    private static final char[] NL = {'\n'};
    private static final char[] TAB = {'\t'};
    private static final Set<String> HEAD = unmodifiableSet("title", "link", "base", Office.PREFIX_DOC_META, "script");
    private static final Set<String> AUTO = unmodifiableSet("head", "frameset");
    private static final Set<String> INDENT = unmodifiableSet("li", "dd", "dt", "td", "th", "frame");
    private static final Attributes EMPTY_ATTRIBUTES = new AttributesImpl();

    public XHTMLContentHandler(ContentHandler contentHandler, Metadata metadata) {
        super(contentHandler);
        this.documentStarted = false;
        this.headStarted = false;
        this.headEnded = false;
        this.useFrameset = false;
        this.metadata = metadata;
    }

    private void lazyEndHead(boolean z10) {
        String[] names;
        String[] values;
        lazyStartHead();
        if (!this.headEnded) {
            this.headEnded = true;
            this.useFrameset = z10;
            for (String str : this.metadata.names()) {
                if (!str.equals("title")) {
                    for (String str2 : this.metadata.getValues(str)) {
                        if (str2 != null) {
                            AttributesImpl attributesImpl = new AttributesImpl();
                            attributesImpl.addAttribute("", Constants.NAME, Constants.NAME, "CDATA", str);
                            attributesImpl.addAttribute("", "content", "content", "CDATA", str2);
                            super.startElement(XHTML, Office.PREFIX_DOC_META, Office.PREFIX_DOC_META, attributesImpl);
                            super.endElement(XHTML, Office.PREFIX_DOC_META, Office.PREFIX_DOC_META);
                            newline();
                        }
                    }
                }
            }
            Attributes attributes = EMPTY_ATTRIBUTES;
            super.startElement(XHTML, "title", "title", attributes);
            String str3 = this.metadata.get(TikaCoreProperties.TITLE);
            if (str3 != null && str3.length() > 0) {
                char[] charArray = str3.toCharArray();
                super.characters(charArray, 0, charArray.length);
            } else {
                super.characters(new char[0], 0, 0);
            }
            super.endElement(XHTML, "title", "title");
            newline();
            super.endElement(XHTML, "head", "head");
            newline();
            if (this.useFrameset) {
                super.startElement(XHTML, "frameset", "frameset", attributes);
            } else {
                super.startElement(XHTML, "body", "body", attributes);
            }
        }
    }

    private void lazyStartHead() {
        if (!this.headStarted) {
            this.headStarted = true;
            AttributesImpl attributesImpl = new AttributesImpl();
            String str = this.metadata.get(HttpHeaders.CONTENT_LANGUAGE);
            if (str != null) {
                attributesImpl.addAttribute("", "lang", "lang", "CDATA", str);
            }
            super.startElement(XHTML, "html", "html", attributesImpl);
            newline();
            super.startElement(XHTML, "head", "head", EMPTY_ATTRIBUTES);
            newline();
        }
    }

    private static Set<String> unmodifiableSet(String... strArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(strArr)));
    }

    @Override // org.apache.tika.sax.SafeContentHandler, org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i10, int i11) {
        lazyEndHead(this.useFrameset);
        super.characters(cArr, i10, i11);
    }

    public void element(String str, String str2) {
        if (str2 != null && str2.length() > 0) {
            startElement(str);
            characters(str2);
            endElement(str);
        }
    }

    @Override // org.apache.tika.sax.SafeContentHandler, org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() {
        lazyEndHead(this.useFrameset);
        if (this.useFrameset) {
            super.endElement(XHTML, "frameset", "frameset");
        } else {
            super.endElement(XHTML, "body", "body");
        }
        super.endElement(XHTML, "html", "html");
        endPrefixMapping("");
        super.endDocument();
    }

    @Override // org.apache.tika.sax.SafeContentHandler, org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        if (AUTO.contains(str3)) {
            return;
        }
        super.endElement(str, str2, str3);
        if (XHTML.equals(str) && ENDLINE.contains(str3)) {
            newline();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.tika.sax.SafeContentHandler
    public boolean isInvalid(int i10) {
        if (super.isInvalid(i10)) {
            return true;
        }
        if (127 <= i10 && i10 <= 159) {
            return true;
        }
        return false;
    }

    public void newline() {
        char[] cArr = NL;
        ignorableWhitespace(cArr, 0, cArr.length);
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() {
        if (!this.documentStarted) {
            this.documentStarted = true;
            super.startDocument();
            startPrefixMapping("", XHTML);
        }
    }

    @Override // org.apache.tika.sax.SafeContentHandler, org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        if (str3.equals("frameset")) {
            lazyEndHead(true);
        } else if (AUTO.contains(str3)) {
        } else {
            if (HEAD.contains(str3)) {
                lazyStartHead();
            } else {
                lazyEndHead(false);
            }
            if (XHTML.equals(str) && INDENT.contains(str3)) {
                char[] cArr = TAB;
                ignorableWhitespace(cArr, 0, cArr.length);
            }
            super.startElement(str, str2, str3, attributes);
        }
    }

    public void characters(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        characters(str.toCharArray(), 0, str.length());
    }

    public void endElement(String str) {
        endElement(XHTML, str, str);
    }

    public void startElement(String str) {
        startElement(XHTML, str, str, EMPTY_ATTRIBUTES);
    }

    public void startElement(String str, String str2, String str3) {
        AttributesImpl attributesImpl = new AttributesImpl();
        attributesImpl.addAttribute("", str2, str2, "CDATA", str3);
        startElement(XHTML, str, str, attributesImpl);
    }

    public void startElement(String str, AttributesImpl attributesImpl) {
        startElement(XHTML, str, str, attributesImpl);
    }
}
