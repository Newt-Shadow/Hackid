package org.apache.tika.sax;

import org.apache.tika.utils.StringUtils;
/* loaded from: classes2.dex */
class LinkBuilder {
    private final String type;
    private final StringBuilder text = new StringBuilder();
    private String uri = "";
    private String title = "";
    private String rel = "";

    public LinkBuilder(String str) {
        this.type = str;
    }

    public void characters(char[] cArr, int i10, int i11) {
        this.text.append(cArr, i10, i11);
    }

    public Link getLink() {
        return getLink(false);
    }

    public String getType() {
        return this.type;
    }

    public void setRel(String str) {
        if (str != null) {
            this.rel = str;
        } else {
            this.rel = "";
        }
    }

    public void setTitle(String str) {
        if (str != null) {
            this.title = str;
        } else {
            this.title = "";
        }
    }

    public void setURI(String str) {
        if (str != null) {
            this.uri = str;
        } else {
            this.uri = "";
        }
    }

    public Link getLink(boolean z10) {
        String sb2 = this.text.toString();
        if (z10) {
            sb2 = sb2.replaceAll("\\s+", StringUtils.SPACE).trim();
        }
        return new Link(this.type, this.uri, this.title, sb2, this.rel);
    }
}
