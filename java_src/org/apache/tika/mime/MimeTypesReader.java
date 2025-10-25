package org.apache.tika.mime;

import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.TransformerException;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXResult;
import mf.c;
import mf.e;
import org.apache.commons.io.input.h;
import org.apache.tika.exception.TikaException;
import org.apache.tika.utils.XMLReaderUtils;
import org.w3c.dom.Document;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
/* loaded from: classes2.dex */
public class MimeTypesReader extends DefaultHandler implements MimeTypesReaderMetKeys {
    protected int priority;
    protected final MimeTypes types;
    private static final ReentrantReadWriteLock READ_WRITE_LOCK = new ReentrantReadWriteLock();
    private static int POOL_SIZE = 10;
    private static ArrayBlockingQueue<SAXParser> SAX_PARSERS = new ArrayBlockingQueue<>(POOL_SIZE);
    static c LOG = e.l(MimeTypesReader.class);
    protected MimeType type = null;
    protected StringBuilder characters = null;
    private ClauseRecord current = new ClauseRecord(null);

    /* loaded from: classes2.dex */
    private class ClauseRecord {
        private Clause clause;
        private final ClauseRecord parent;
        private List<Clause> subclauses = null;

        public ClauseRecord(Clause clause) {
            this.parent = MimeTypesReader.this.current;
            this.clause = clause;
        }

        public List<Clause> getClauses() {
            return this.subclauses;
        }

        public void stop() {
            Clause orClause;
            Clause clause = this.clause;
            if (clause instanceof MinShouldMatchVal) {
                this.clause = new MinShouldMatchClause(((MinShouldMatchVal) clause).getVal(), this.subclauses);
            } else {
                List<Clause> list = this.subclauses;
                if (list != null) {
                    if (list.size() == 1) {
                        orClause = this.subclauses.get(0);
                    } else {
                        orClause = new OrClause(this.subclauses);
                    }
                    this.clause = new AndClause(this.clause, orClause);
                }
            }
            ClauseRecord clauseRecord = this.parent;
            List<Clause> list2 = clauseRecord.subclauses;
            if (list2 == null) {
                clauseRecord.subclauses = Collections.singletonList(this.clause);
            } else {
                if (list2.size() == 1) {
                    this.parent.subclauses = new ArrayList(this.parent.subclauses);
                }
                this.parent.subclauses.add(this.clause);
            }
            MimeTypesReader mimeTypesReader = MimeTypesReader.this;
            mimeTypesReader.current = mimeTypesReader.current.parent;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class MinShouldMatchVal implements Clause {
        private final int val;

        MinShouldMatchVal(int i10) {
            this.val = i10;
        }

        @Override // org.apache.tika.mime.Clause
        public boolean eval(byte[] bArr) {
            throw new IllegalStateException("This should never be used on this placeholder class");
        }

        int getVal() {
            return this.val;
        }

        @Override // org.apache.tika.mime.Clause
        public int size() {
            return 0;
        }
    }

    static {
        try {
            setPoolSize(POOL_SIZE);
        } catch (TikaException e10) {
            throw new RuntimeException("problem initializing SAXParser pool", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MimeTypesReader(MimeTypes mimeTypes) {
        this.types = mimeTypes;
    }

    private static SAXParser acquireSAXParser() {
        SAXParser poll;
        do {
            try {
                try {
                    ReentrantReadWriteLock reentrantReadWriteLock = READ_WRITE_LOCK;
                    reentrantReadWriteLock.readLock().lock();
                    poll = SAX_PARSERS.poll(10L, TimeUnit.MILLISECONDS);
                    reentrantReadWriteLock.readLock().unlock();
                } catch (InterruptedException e10) {
                    throw new TikaException("interrupted while waiting for SAXParser", e10);
                }
            } catch (Throwable th) {
                READ_WRITE_LOCK.readLock().unlock();
                throw th;
            }
        } while (poll == null);
        return poll;
    }

    private static SAXParser newSAXParser() {
        SAXParserFactory newInstance = SAXParserFactory.newInstance();
        newInstance.setNamespaceAware(false);
        try {
            newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
        } catch (ParserConfigurationException | SAXException unused) {
            c cVar = LOG;
            Class<?> cls = newInstance.getClass();
            cVar.x("can't set secure processing feature on: " + cls + ". User assumes responsibility for consequences.");
        }
        try {
            return newInstance.newSAXParser();
        } catch (ParserConfigurationException | SAXException e10) {
            throw new TikaException("Can't create new sax parser", e10);
        }
    }

    private static void releaseParser(SAXParser sAXParser) {
        try {
            sAXParser.reset();
        } catch (UnsupportedOperationException unused) {
        }
        try {
            ReentrantReadWriteLock reentrantReadWriteLock = READ_WRITE_LOCK;
            reentrantReadWriteLock.readLock().lock();
            SAX_PARSERS.offer(sAXParser);
            reentrantReadWriteLock.readLock().unlock();
        } catch (Throwable th) {
            READ_WRITE_LOCK.readLock().unlock();
            throw th;
        }
    }

    public static void setPoolSize(int i10) {
        try {
            READ_WRITE_LOCK.writeLock().lock();
            SAX_PARSERS = new ArrayBlockingQueue<>(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                SAX_PARSERS.offer(newSAXParser());
            }
            POOL_SIZE = i10;
        } finally {
            READ_WRITE_LOCK.writeLock().unlock();
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i10, int i11) {
        StringBuilder sb2 = this.characters;
        if (sb2 != null) {
            sb2.append(cArr, i10, i11);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        if (this.type != null) {
            if ("mime-type".equals(str3)) {
                this.type = null;
            } else if (MimeTypesReaderMetKeys.COMMENT_TAG.equals(str3)) {
                this.type.setDescription(this.characters.toString().trim());
                this.characters = null;
            } else if (MimeTypesReaderMetKeys.ACRONYM_TAG.equals(str3)) {
                this.type.setAcronym(this.characters.toString().trim());
                this.characters = null;
            } else if (MimeTypesReaderMetKeys.TIKA_UTI_TAG.equals(str3)) {
                this.type.setUniformTypeIdentifier(this.characters.toString().trim());
                this.characters = null;
            } else if (MimeTypesReaderMetKeys.TIKA_LINK_TAG.equals(str3)) {
                try {
                    this.type.addLink(new URI(this.characters.toString().trim()));
                    this.characters = null;
                } catch (URISyntaxException e10) {
                    StringBuilder sb2 = this.characters;
                    throw new IllegalArgumentException("unable to parse link: " + ((Object) sb2), e10);
                }
            } else if ("match".equals(str3)) {
                this.current.stop();
            } else if (MimeTypesReaderMetKeys.MAGIC_TAG.equals(str3)) {
                for (Clause clause : this.current.getClauses()) {
                    MimeType mimeType = this.type;
                    mimeType.addMagic(new Magic(mimeType, this.priority, clause));
                }
                this.current = null;
            }
        }
    }

    protected void handleGlobError(MimeType mimeType, String str, MimeTypeException mimeTypeException, String str2, Attributes attributes) {
        throw new SAXException(mimeTypeException);
    }

    protected void handleMimeError(String str, MimeTypeException mimeTypeException, String str2, Attributes attributes) {
        throw new SAXException(mimeTypeException);
    }

    public void read(InputStream inputStream) {
        SAXParser sAXParser = null;
        try {
            try {
                try {
                    sAXParser = acquireSAXParser();
                    sAXParser.parse(inputStream, this);
                    releaseParser(sAXParser);
                } catch (TikaException e10) {
                    throw new MimeTypeException("Unable to create an XML parser", e10);
                }
            } catch (SAXException e11) {
                throw new MimeTypeException("Invalid type configuration", e11);
            }
        } catch (Throwable th) {
            if (sAXParser != null) {
                releaseParser(sAXParser);
            }
            throw th;
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) {
        return new InputSource(new h(new byte[0]));
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        if (this.type == null) {
            if ("mime-type".equals(str3)) {
                String value = attributes.getValue("type");
                boolean equals = "true".equals(attributes.getValue(MimeTypesReaderMetKeys.INTERPRETED_ATTR));
                try {
                    MimeType forName = this.types.forName(value);
                    this.type = forName;
                    forName.setInterpreted(equals);
                } catch (MimeTypeException e10) {
                    handleMimeError(value, e10, str3, attributes);
                }
            }
        } else if (MimeTypesReaderMetKeys.ALIAS_TAG.equals(str3)) {
            this.types.addAlias(this.type, MediaType.parse(attributes.getValue("type")));
        } else if (MimeTypesReaderMetKeys.SUB_CLASS_OF_TAG.equals(str3)) {
            this.types.setSuperType(this.type, MediaType.parse(attributes.getValue("type")));
        } else if (!MimeTypesReaderMetKeys.ACRONYM_TAG.equals(str3) && !MimeTypesReaderMetKeys.COMMENT_TAG.equals(str3) && !MimeTypesReaderMetKeys.TIKA_LINK_TAG.equals(str3) && !MimeTypesReaderMetKeys.TIKA_UTI_TAG.equals(str3)) {
            if (MimeTypesReaderMetKeys.GLOB_TAG.equals(str3)) {
                String value2 = attributes.getValue(MimeTypesReaderMetKeys.PATTERN_ATTR);
                String value3 = attributes.getValue(MimeTypesReaderMetKeys.ISREGEX_ATTR);
                if (value2 != null) {
                    try {
                        this.types.addPattern(this.type, value2, Boolean.parseBoolean(value3));
                    } catch (MimeTypeException e11) {
                        handleGlobError(this.type, value2, e11, str3, attributes);
                    }
                }
            } else if (MimeTypesReaderMetKeys.ROOT_XML_TAG.equals(str3)) {
                this.type.addRootXML(attributes.getValue(MimeTypesReaderMetKeys.NS_URI_ATTR), attributes.getValue(MimeTypesReaderMetKeys.LOCAL_NAME_ATTR));
            } else if ("match".equals(str3)) {
                if (attributes.getValue(MimeTypesReaderMetKeys.MATCH_MINSHOULDMATCH_ATTR) != null) {
                    this.current = new ClauseRecord(new MinShouldMatchVal(Integer.parseInt(attributes.getValue(MimeTypesReaderMetKeys.MATCH_MINSHOULDMATCH_ATTR))));
                    return;
                }
                String value4 = attributes.getValue("type");
                String value5 = attributes.getValue(MimeTypesReaderMetKeys.MATCH_OFFSET_ATTR);
                String value6 = attributes.getValue("value");
                String value7 = attributes.getValue(MimeTypesReaderMetKeys.MATCH_MASK_ATTR);
                if (value4 == null) {
                    value4 = "string";
                }
                this.current = new ClauseRecord(new MagicMatch(this.type.getType(), value4, value5, value6, value7));
            } else if (MimeTypesReaderMetKeys.MAGIC_TAG.equals(str3)) {
                String value8 = attributes.getValue(MimeTypesReaderMetKeys.MAGIC_PRIORITY_ATTR);
                if (value8 != null && value8.length() > 0) {
                    this.priority = Integer.parseInt(value8);
                } else {
                    this.priority = 50;
                }
                this.current = new ClauseRecord(null);
            }
        } else {
            this.characters = new StringBuilder();
        }
    }

    public void read(Document document) {
        try {
            XMLReaderUtils.getTransformer().transform(new DOMSource(document), new SAXResult(this));
        } catch (TransformerException | TikaException e10) {
            throw new MimeTypeException("Failed to parse type registry", e10);
        }
    }
}
