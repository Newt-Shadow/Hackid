package org.apache.tika.exception;
/* loaded from: classes2.dex */
public class AccessPermissionException extends TikaException {
    public AccessPermissionException() {
        super("Unable to process: content extraction is not allowed");
    }

    public AccessPermissionException(Throwable th) {
        super("Unable to process: content extraction is not allowed", th);
    }

    public AccessPermissionException(String str) {
        super(str);
    }

    public AccessPermissionException(String str, Throwable th) {
        super(str, th);
    }
}
