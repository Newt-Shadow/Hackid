package com.arthenica.smartexception;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedList;
import java.util.Set;
/* loaded from: classes.dex */
public class ThrowableWrapper {
    private final ThrowableWrapper cause;
    private final String className;
    private final String message;
    private final StackTraceElementWrapper[] stackTrace;
    private final ThrowableWrapper[] suppressed;

    public ThrowableWrapper(Throwable th) {
        this(th, Collections.newSetFromMap(new IdentityHashMap()));
    }

    public ThrowableWrapper getCause() {
        return this.cause;
    }

    public String getClassName() {
        return this.className;
    }

    public String getMessage() {
        return this.message;
    }

    public StackTraceElementWrapper[] getStackTrace() {
        return this.stackTrace;
    }

    public ThrowableWrapper[] getSuppressed() {
        return this.suppressed;
    }

    public ThrowableWrapper(Throwable th, Set<Throwable> set) {
        set.add(th);
        this.message = th.getMessage();
        if (th.getCause() != null && !set.contains(th.getCause())) {
            this.cause = new ThrowableWrapper(th.getCause(), set);
        } else {
            this.cause = null;
        }
        this.className = th.getClass().getName();
        Throwable[] suppressed = th.getSuppressed();
        LinkedList linkedList = new LinkedList();
        int length = suppressed.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!set.contains(suppressed[i10])) {
                linkedList.add(new ThrowableWrapper(suppressed[i10], set));
            }
        }
        this.suppressed = (ThrowableWrapper[]) linkedList.toArray(new ThrowableWrapper[0]);
        StackTraceElement[] stackTrace = th.getStackTrace();
        this.stackTrace = new StackTraceElementWrapper[stackTrace.length];
        int length2 = stackTrace.length;
        for (int i11 = 0; i11 < length2; i11++) {
            this.stackTrace[i11] = new StackTraceElementWrapper(stackTrace[i11]);
        }
    }

    public ThrowableWrapper(String str, ThrowableWrapper throwableWrapper, String str2, ThrowableWrapper[] throwableWrapperArr, StackTraceElementWrapper[] stackTraceElementWrapperArr) {
        this.message = str;
        this.cause = throwableWrapper;
        this.className = str2;
        this.suppressed = throwableWrapperArr;
        this.stackTrace = stackTraceElementWrapperArr;
    }
}
