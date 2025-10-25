package org.apache.tika.mime;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.xml.namespace.QName;
import org.apache.commons.io.input.h;
import org.apache.tika.Tika;
import org.apache.tika.detect.Detector;
import org.apache.tika.detect.TextDetector;
import org.apache.tika.detect.XmlRootExtractor;
import org.apache.tika.metadata.Metadata;
/* loaded from: classes2.dex */
public final class MimeTypes implements Detector, Serializable {
    private static final Map<ClassLoader, MimeTypes> CLASSLOADER_SPECIFIC_DEFAULT_TYPES = new HashMap();
    private static MimeTypes DEFAULT_TYPES = null;
    public static final String OCTET_STREAM = "application/octet-stream";
    public static final String PLAIN_TEXT = "text/plain";
    public static final String XML = "application/xml";
    private static final long serialVersionUID = -1350863170146349036L;
    private final MimeType htmlMimeType;
    private final List<Magic> magics;
    private final Patterns patterns;
    private final MediaTypeRegistry registry;
    private final MimeType rootMimeType;
    private final List<MimeType> rootMimeTypeL;
    private final MimeType textMimeType;
    private final Map<MediaType, MimeType> types;
    private final MimeType xmlMimeType;
    private final List<MimeType> xmls;

    public MimeTypes() {
        MediaTypeRegistry mediaTypeRegistry = new MediaTypeRegistry();
        this.registry = mediaTypeRegistry;
        this.types = new HashMap();
        this.patterns = new Patterns(mediaTypeRegistry);
        this.magics = new ArrayList();
        this.xmls = new ArrayList();
        MimeType mimeType = new MimeType(MediaType.OCTET_STREAM);
        this.rootMimeType = mimeType;
        MimeType mimeType2 = new MimeType(MediaType.TEXT_PLAIN);
        this.textMimeType = mimeType2;
        this.htmlMimeType = new MimeType(MediaType.TEXT_HTML);
        MimeType mimeType3 = new MimeType(MediaType.APPLICATION_XML);
        this.xmlMimeType = mimeType3;
        this.rootMimeTypeL = Collections.singletonList(mimeType);
        add(mimeType);
        add(mimeType2);
        add(mimeType3);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<org.apache.tika.mime.MimeType> applyHint(java.util.List<org.apache.tika.mime.MimeType> r5, org.apache.tika.mime.MimeType r6) {
        /*
            r4 = this;
            if (r5 == 0) goto L34
            boolean r0 = r5.isEmpty()
            if (r0 == 0) goto L9
            goto L34
        L9:
            java.util.Iterator r0 = r5.iterator()
        Ld:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L33
            java.lang.Object r1 = r0.next()
            org.apache.tika.mime.MimeType r1 = (org.apache.tika.mime.MimeType) r1
            boolean r2 = r6.equals(r1)
            if (r2 != 0) goto L2f
            org.apache.tika.mime.MediaTypeRegistry r2 = r4.registry
            org.apache.tika.mime.MediaType r3 = r6.getType()
            org.apache.tika.mime.MediaType r1 = r1.getType()
            boolean r1 = r2.isSpecializationOf(r3, r1)
            if (r1 == 0) goto Ld
        L2f:
            java.util.List r5 = java.util.Collections.singletonList(r6)
        L33:
            return r5
        L34:
            java.util.List r5 = java.util.Collections.singletonList(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.mime.MimeTypes.applyHint(java.util.List, org.apache.tika.mime.MimeType):java.util.List");
    }

    public static synchronized MimeTypes getDefaultMimeTypes() {
        MimeTypes defaultMimeTypes;
        synchronized (MimeTypes.class) {
            defaultMimeTypes = getDefaultMimeTypes(null);
        }
        return defaultMimeTypes;
    }

    void add(MimeType mimeType) {
        this.registry.addType(mimeType.getType());
        this.types.put(mimeType.getType(), mimeType);
        if (mimeType.hasMagic()) {
            this.magics.addAll(mimeType.getMagics());
        }
        if (mimeType.hasRootXML()) {
            this.xmls.add(mimeType);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void addAlias(MimeType mimeType, MediaType mediaType) {
        this.registry.addAlias(mimeType.getType(), mediaType);
    }

    public void addPattern(MimeType mimeType, String str) {
        addPattern(mimeType, str, false);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:23|24|(2:26|(6:28|29|30|(1:34)|36|(2:38|(1:42))))|45|29|30|(2:32|34)|36|(0)) */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0058  */
    @Override // org.apache.tika.detect.Detector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.tika.mime.MediaType detect(java.io.InputStream r8, org.apache.tika.metadata.Metadata r9) {
        /*
            r7 = this;
            r0 = 0
            if (r8 == 0) goto L1b
            int r1 = r7.getMinLength()
            r8.mark(r1)
            byte[] r1 = r7.readMagicHeader(r8)     // Catch: java.lang.Throwable -> L16
            java.util.List r1 = r7.getMimeType(r1)     // Catch: java.lang.Throwable -> L16
            r8.reset()
            goto L1c
        L16:
            r9 = move-exception
            r8.reset()
            throw r9
        L1b:
            r1 = r0
        L1c:
            java.lang.String r8 = "resourceName"
            java.lang.String r8 = r9.get(r8)
            r2 = 0
            if (r8 == 0) goto L68
            java.net.URI r3 = new java.net.URI     // Catch: java.net.URISyntaxException -> L55
            r3.<init>(r8)     // Catch: java.net.URISyntaxException -> L55
            java.lang.String r4 = r3.getScheme()     // Catch: java.net.URISyntaxException -> L55
            r5 = 1
            if (r4 == 0) goto L3b
            java.lang.String r6 = "http"
            boolean r4 = r4.startsWith(r6)     // Catch: java.net.URISyntaxException -> L55
            if (r4 == 0) goto L3b
            r4 = r5
            goto L3c
        L3b:
            r4 = r2
        L3c:
            java.lang.String r3 = r3.getPath()     // Catch: java.net.URISyntaxException -> L56
            if (r3 == 0) goto L53
            r6 = 47
            int r6 = r3.lastIndexOf(r6)     // Catch: java.net.URISyntaxException -> L56
            int r6 = r6 + r5
            int r5 = r3.length()     // Catch: java.net.URISyntaxException -> L56
            if (r6 >= r5) goto L53
            java.lang.String r0 = r3.substring(r6)     // Catch: java.net.URISyntaxException -> L56
        L53:
            r8 = r0
            goto L56
        L55:
            r4 = r2
        L56:
            if (r8 == 0) goto L68
            org.apache.tika.mime.MimeType r8 = r7.getMimeType(r8)
            if (r4 == 0) goto L64
            boolean r0 = r8.isInterpreted()
            if (r0 != 0) goto L68
        L64:
            java.util.List r1 = r7.applyHint(r1, r8)
        L68:
            java.lang.String r8 = "Content-Type"
            java.lang.String r8 = r9.get(r8)
            if (r8 == 0) goto L78
            org.apache.tika.mime.MimeType r8 = r7.forName(r8)     // Catch: org.apache.tika.mime.MimeTypeException -> L78
            java.util.List r1 = r7.applyHint(r1, r8)     // Catch: org.apache.tika.mime.MimeTypeException -> L78
        L78:
            if (r1 == 0) goto L8c
            boolean r8 = r1.isEmpty()
            if (r8 == 0) goto L81
            goto L8c
        L81:
            java.lang.Object r8 = r1.get(r2)
            org.apache.tika.mime.MimeType r8 = (org.apache.tika.mime.MimeType) r8
            org.apache.tika.mime.MediaType r8 = r8.getType()
            return r8
        L8c:
            org.apache.tika.mime.MediaType r8 = org.apache.tika.mime.MediaType.OCTET_STREAM
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.mime.MimeTypes.detect(java.io.InputStream, org.apache.tika.metadata.Metadata):org.apache.tika.mime.MediaType");
    }

    public MimeType forName(String str) {
        MediaType parse = MediaType.parse(str);
        if (parse != null) {
            MediaType normalize = this.registry.normalize(parse);
            MimeType mimeType = this.types.get(normalize);
            if (mimeType == null) {
                synchronized (this) {
                    MimeType mimeType2 = this.types.get(normalize);
                    if (mimeType2 == null) {
                        mimeType2 = new MimeType(parse);
                        add(mimeType2);
                        this.types.put(parse, mimeType2);
                    }
                    mimeType = mimeType2;
                }
            }
            return mimeType;
        }
        throw new MimeTypeException("Invalid media type name: " + str);
    }

    public MediaTypeRegistry getMediaTypeRegistry() {
        return this.registry;
    }

    @Deprecated
    public MimeType getMimeType(String str) {
        MimeType matches = this.patterns.matches(str);
        if (matches != null) {
            return matches;
        }
        MimeType matches2 = this.patterns.matches(str.toLowerCase(Locale.ENGLISH));
        return matches2 != null ? matches2 : this.rootMimeType;
    }

    public int getMinLength() {
        return 65536;
    }

    public MimeType getRegisteredMimeType(String str) {
        MediaType parse = MediaType.parse(str);
        if (parse != null) {
            MediaType normalize = this.registry.normalize(parse);
            MimeType mimeType = this.types.get(normalize);
            if (mimeType != null) {
                return mimeType;
            }
            if (normalize.hasParameters()) {
                return this.types.get(normalize.getBaseType());
            }
            return null;
        }
        throw new MimeTypeException("Invalid media type name: " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void init() {
        for (MimeType mimeType : this.types.values()) {
            this.magics.addAll(mimeType.getMagics());
            if (mimeType.hasRootXML()) {
                this.xmls.add(mimeType);
            }
        }
        Collections.sort(this.magics);
        Collections.sort(this.xmls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] readMagicHeader(InputStream inputStream) {
        if (inputStream != null) {
            int minLength = getMinLength();
            byte[] bArr = new byte[minLength];
            int read = inputStream.read(bArr);
            int i10 = 0;
            while (read != -1) {
                i10 += read;
                if (i10 == minLength) {
                    return bArr;
                }
                read = inputStream.read(bArr, i10, minLength - i10);
            }
            byte[] bArr2 = new byte[i10];
            System.arraycopy(bArr, 0, bArr2, 0, i10);
            return bArr2;
        }
        throw new IllegalArgumentException("InputStream is missing");
    }

    public synchronized void setSuperType(MimeType mimeType, MediaType mediaType) {
        this.registry.addSuperType(mimeType.getType(), mediaType);
    }

    public static synchronized MimeTypes getDefaultMimeTypes(ClassLoader classLoader) {
        MimeTypes mimeTypes;
        synchronized (MimeTypes.class) {
            mimeTypes = DEFAULT_TYPES;
            if (classLoader != null) {
                mimeTypes = CLASSLOADER_SPECIFIC_DEFAULT_TYPES.get(classLoader);
            }
            if (mimeTypes == null) {
                try {
                    mimeTypes = MimeTypesFactory.create("tika-mimetypes.xml", "custom-mimetypes.xml", classLoader);
                    if (classLoader == null) {
                        DEFAULT_TYPES = mimeTypes;
                    } else {
                        CLASSLOADER_SPECIFIC_DEFAULT_TYPES.put(classLoader, mimeTypes);
                    }
                } catch (IOException e10) {
                    throw new RuntimeException("Unable to read the default media type registry", e10);
                } catch (MimeTypeException e11) {
                    throw new RuntimeException("Unable to parse the default media type registry", e11);
                }
            }
        }
        return mimeTypes;
    }

    public void addPattern(MimeType mimeType, String str, boolean z10) {
        this.patterns.add(str, z10, mimeType);
    }

    @Deprecated
    public MimeType getMimeType(File file) {
        return forName(new Tika(this).detect(file));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<MimeType> getMimeType(byte[] bArr) {
        boolean z10;
        if (bArr != null) {
            if (bArr.length == 0) {
                return this.rootMimeTypeL;
            }
            ArrayList arrayList = new ArrayList(1);
            int i10 = -1;
            for (Magic magic : this.magics) {
                if (i10 > 0 && i10 > magic.getPriority()) {
                    break;
                } else if (magic.eval(bArr)) {
                    arrayList.add(magic.getType());
                    i10 = magic.getPriority();
                }
            }
            if (!arrayList.isEmpty()) {
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    MimeType mimeType = (MimeType) arrayList.get(i11);
                    if (XML.equals(mimeType.getName()) || "text/html".equals(mimeType.getName())) {
                        QName extractRootElement = new XmlRootExtractor().extractRootElement(bArr);
                        if (extractRootElement != null) {
                            Iterator<MimeType> it = this.xmls.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    MimeType next = it.next();
                                    if (next.matchesXML(extractRootElement.getNamespaceURI(), extractRootElement.getLocalPart())) {
                                        arrayList.set(i11, next);
                                        break;
                                    }
                                }
                            }
                        } else if (XML.equals(mimeType.getName())) {
                            Iterator<Magic> it2 = this.magics.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    z10 = false;
                                    break;
                                }
                                Magic next2 = it2.next();
                                if (next2.getType().equals(this.htmlMimeType) && next2.eval(bArr)) {
                                    z10 = true;
                                    break;
                                }
                            }
                            if (z10) {
                                arrayList.set(i11, this.htmlMimeType);
                            } else {
                                arrayList.set(i11, this.textMimeType);
                            }
                        }
                    }
                }
                return arrayList;
            }
            try {
                return Collections.singletonList(forName(new TextDetector(getMinLength()).detect(h.a().m(bArr).l(), new Metadata()).toString()));
            } catch (Exception unused) {
                return this.rootMimeTypeL;
            }
        }
        throw new IllegalArgumentException("Data is missing");
    }
}
