package org.apache.tika.mime;

import org.apache.tika.exception.TikaException;
/* loaded from: classes2.dex */
public class MimeTypeException extends TikaException {
    public MimeTypeException(String str) {
        super(str);
    }

    public MimeTypeException(String str, Throwable th) {
        super(str, th);
    }
}
