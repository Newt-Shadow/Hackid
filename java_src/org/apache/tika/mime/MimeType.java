package org.apache.tika.mime;

import java.io.Serializable;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class MimeType implements Comparable<MimeType>, Serializable {
    private static final long serialVersionUID = 4357830439860729201L;
    private final MediaType type;
    private final int minLength = 0;
    private String acronym = "";
    private String uti = "";
    private List<URI> links = Collections.emptyList();
    private String description = "";
    private List<Magic> magics = null;
    private List<RootXML> rootXML = null;
    private List<String> extensions = null;
    private boolean isInterpreted = false;

    /* loaded from: classes2.dex */
    static class RootXML implements Serializable {
        private static final long serialVersionUID = 5140496601491000730L;
        private String localName;
        private String namespaceURI;
        private MimeType type;

        RootXML(MimeType mimeType, String str, String str2) {
            this.type = null;
            this.namespaceURI = null;
            this.localName = null;
            if (isEmpty(str) && isEmpty(str2)) {
                throw new IllegalArgumentException("Both namespaceURI and localName cannot be empty");
            }
            this.type = mimeType;
            this.namespaceURI = str;
            this.localName = str2;
        }

        private boolean isEmpty(String str) {
            if (str != null && !str.equals("")) {
                return false;
            }
            return true;
        }

        String getLocalName() {
            return this.localName;
        }

        String getNameSpaceURI() {
            return this.namespaceURI;
        }

        MimeType getType() {
            return this.type;
        }

        boolean matches(String str, String str2) {
            if (!isEmpty(this.namespaceURI)) {
                if (!this.namespaceURI.equals(str)) {
                    return false;
                }
            } else if (!isEmpty(str)) {
                return false;
            }
            if (!isEmpty(this.localName)) {
                return this.localName.equals(str2);
            }
            return isEmpty(str2);
        }

        public String toString() {
            MimeType mimeType = this.type;
            String str = this.namespaceURI;
            String str2 = this.localName;
            return mimeType + ", " + str + ", " + str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MimeType(MediaType mediaType) {
        if (mediaType != null) {
            this.type = mediaType;
            return;
        }
        throw new IllegalArgumentException("Media type name is missing");
    }

    public static boolean isValid(String str) {
        if (str != null) {
            boolean z10 = false;
            for (int i10 = 0; i10 < str.length(); i10++) {
                char charAt = str.charAt(i10);
                if (charAt <= ' ' || charAt >= 127 || charAt == '(' || charAt == ')' || charAt == '<' || charAt == '>' || charAt == '@' || charAt == ',' || charAt == ';' || charAt == ':' || charAt == '\\' || charAt == '\"' || charAt == '[' || charAt == ']' || charAt == '?' || charAt == '=') {
                    return false;
                }
                if (charAt == '/') {
                    if (z10 || i10 == 0 || i10 + 1 == str.length()) {
                        return false;
                    }
                    z10 = true;
                }
            }
            return z10;
        }
        throw new IllegalArgumentException("Name is missing");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addExtension(String str) {
        List<String> list = this.extensions;
        if (list == null) {
            this.extensions = Collections.singletonList(str);
        } else if (list.size() == 1) {
            this.extensions = new ArrayList(this.extensions);
        }
        if (!this.extensions.contains(str)) {
            this.extensions.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addLink(URI uri) {
        if (uri != null) {
            ArrayList arrayList = new ArrayList(this.links.size() + 1);
            arrayList.addAll(this.links);
            arrayList.add(uri);
            this.links = Collections.unmodifiableList(arrayList);
            return;
        }
        throw new IllegalArgumentException("Missing Link");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addMagic(Magic magic) {
        if (magic == null) {
            return;
        }
        if (this.magics == null) {
            this.magics = new ArrayList();
        }
        this.magics.add(magic);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addRootXML(String str, String str2) {
        if (this.rootXML == null) {
            this.rootXML = new ArrayList();
        }
        this.rootXML.add(new RootXML(this, str, str2));
    }

    public boolean equals(Object obj) {
        if (obj instanceof MimeType) {
            return this.type.equals(((MimeType) obj).type);
        }
        return false;
    }

    public String getAcronym() {
        return this.acronym;
    }

    public String getDescription() {
        return this.description;
    }

    public String getExtension() {
        List<String> list = this.extensions;
        if (list == null) {
            return "";
        }
        return list.get(0);
    }

    public List<String> getExtensions() {
        List<String> list = this.extensions;
        if (list != null) {
            return Collections.unmodifiableList(list);
        }
        return Collections.emptyList();
    }

    public List<URI> getLinks() {
        return this.links;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Magic> getMagics() {
        List<Magic> list = this.magics;
        if (list != null) {
            return list;
        }
        return Collections.emptyList();
    }

    int getMinLength() {
        return 0;
    }

    public String getName() {
        return this.type.toString();
    }

    public MediaType getType() {
        return this.type;
    }

    public String getUniformTypeIdentifier() {
        return this.uti;
    }

    public boolean hasMagic() {
        if (this.magics != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasRootXML() {
        if (this.rootXML != null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.type.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInterpreted() {
        return this.isInterpreted;
    }

    public boolean matches(byte[] bArr) {
        return matchesMagic(bArr);
    }

    public boolean matchesMagic(byte[] bArr) {
        int i10 = 0;
        while (true) {
            List<Magic> list = this.magics;
            if (list == null || i10 >= list.size()) {
                break;
            } else if (this.magics.get(i10).eval(bArr)) {
                return true;
            } else {
                i10++;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean matchesXML(String str, String str2) {
        List<RootXML> list = this.rootXML;
        if (list != null) {
            for (RootXML rootXML : list) {
                if (rootXML.matches(str, str2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAcronym(String str) {
        if (str != null) {
            this.acronym = str;
            return;
        }
        throw new IllegalArgumentException("Acronym is missing");
    }

    public void setDescription(String str) {
        if (str != null) {
            this.description = str;
            return;
        }
        throw new IllegalArgumentException("Description is missing");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setInterpreted(boolean z10) {
        this.isInterpreted = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setUniformTypeIdentifier(String str) {
        if (str != null) {
            this.uti = str;
            return;
        }
        throw new IllegalArgumentException("Uniform Type Identifier is missing");
    }

    public String toString() {
        return this.type.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(MimeType mimeType) {
        return this.type.compareTo(mimeType.type);
    }
}
