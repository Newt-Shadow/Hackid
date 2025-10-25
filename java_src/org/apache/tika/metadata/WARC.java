package org.apache.tika.metadata;
/* loaded from: classes2.dex */
public interface WARC {
    public static final String PREFIX = "warc:";
    public static final Property WARC_WARNING = Property.externalTextBag("warc:warning");
    public static final Property WARC_RECORD_CONTENT_TYPE = Property.externalText("warc:record-content-type");
    public static final Property WARC_PAYLOAD_CONTENT_TYPE = Property.externalText("warc:payload-content-type");
    public static final Property WARC_RECORD_ID = Property.externalText("warc:WARC-Record-ID");
}
