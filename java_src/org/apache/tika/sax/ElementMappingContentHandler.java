package org.apache.tika.sax;

import java.util.Collections;
import java.util.Map;
import javax.xml.namespace.QName;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.helpers.AttributesImpl;
/* loaded from: classes2.dex */
public class ElementMappingContentHandler extends ContentHandlerDecorator {
    private final Map<QName, TargetElement> mappings;

    public ElementMappingContentHandler(ContentHandler contentHandler, Map<QName, TargetElement> map) {
        super(contentHandler);
        this.mappings = map;
    }

    protected static final String getQNameAsString(QName qName) {
        String prefix = qName.getPrefix();
        if (prefix.length() > 0) {
            String localPart = qName.getLocalPart();
            return prefix + ":" + localPart;
        }
        return qName.getLocalPart();
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        TargetElement targetElement = this.mappings.get(new QName(str, str2));
        if (targetElement != null) {
            QName mappedTagName = targetElement.getMappedTagName();
            super.endElement(mappedTagName.getNamespaceURI(), mappedTagName.getLocalPart(), getQNameAsString(mappedTagName));
        }
    }

    @Override // org.apache.tika.sax.ContentHandlerDecorator, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        TargetElement targetElement = this.mappings.get(new QName(str, str2));
        if (targetElement != null) {
            QName mappedTagName = targetElement.getMappedTagName();
            super.startElement(mappedTagName.getNamespaceURI(), mappedTagName.getLocalPart(), getQNameAsString(mappedTagName), targetElement.mapAttributes(attributes));
        }
    }

    /* loaded from: classes2.dex */
    public static class TargetElement {
        private final Map<QName, QName> attributesMapping;
        private final QName mappedTagName;

        public TargetElement(QName qName, Map<QName, QName> map) {
            this.mappedTagName = qName;
            this.attributesMapping = map;
        }

        public Map<QName, QName> getAttributesMapping() {
            return this.attributesMapping;
        }

        public QName getMappedTagName() {
            return this.mappedTagName;
        }

        public Attributes mapAttributes(Attributes attributes) {
            AttributesImpl attributesImpl = new AttributesImpl();
            for (int i10 = 0; i10 < attributes.getLength(); i10++) {
                QName qName = this.attributesMapping.get(new QName(attributes.getURI(i10), attributes.getLocalName(i10)));
                if (qName != null) {
                    attributesImpl.addAttribute(qName.getNamespaceURI(), qName.getLocalPart(), ElementMappingContentHandler.getQNameAsString(qName), attributes.getType(i10), attributes.getValue(i10));
                }
            }
            return attributesImpl;
        }

        public TargetElement(String str, String str2, Map<QName, QName> map) {
            this(new QName(str, str2), map);
        }

        public TargetElement(QName qName) {
            this(qName, Collections.emptyMap());
        }

        public TargetElement(String str, String str2) {
            this(str, str2, Collections.emptyMap());
        }
    }
}
