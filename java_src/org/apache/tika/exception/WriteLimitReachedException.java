package org.apache.tika.exception;

import org.xml.sax.SAXException;
/* loaded from: classes2.dex */
public class WriteLimitReachedException extends SAXException {
    private static final int MAX_DEPTH = 100;
    private final int writeLimit;

    public WriteLimitReachedException(int i10) {
        this.writeLimit = i10;
    }

    public static boolean isWriteLimitReached(Throwable th) {
        return isWriteLimitReached(th, 0);
    }

    public static void throwIfWriteLimitReached(Exception exc) {
        throwIfWriteLimitReached(exc, 0);
    }

    @Override // org.xml.sax.SAXException, java.lang.Throwable
    public String getMessage() {
        int i10 = this.writeLimit;
        return "Your document contained more than " + i10 + " characters, and so your requested limit has been reached. To receive the full text of the document, increase your limit. (Text up to the limit is however available).";
    }

    private static boolean isWriteLimitReached(Throwable th, int i10) {
        if (th != null && i10 <= 100) {
            if (th instanceof WriteLimitReachedException) {
                return true;
            }
            return isWriteLimitReached(th.getCause(), i10 + 1);
        }
        return false;
    }

    private static void throwIfWriteLimitReached(Throwable th, int i10) {
        if (th != null && i10 <= 100) {
            if (!(th instanceof WriteLimitReachedException)) {
                throwIfWriteLimitReached(th.getCause(), i10 + 1);
                return;
            }
            throw ((SAXException) th);
        }
    }
}
