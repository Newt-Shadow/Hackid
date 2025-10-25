package io.sentry;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class w5 {

    /* renamed from: a  reason: collision with root package name */
    private final s5 f23904a;

    public w5(s5 s5Var) {
        this.f23904a = s5Var;
    }

    public List a(StackTraceElement[] stackTraceElementArr, boolean z10) {
        if (stackTraceElementArr != null && stackTraceElementArr.length > 0) {
            ArrayList arrayList = new ArrayList();
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                if (stackTraceElement != null) {
                    String className = stackTraceElement.getClassName();
                    if (z10 || !className.startsWith("io.sentry.") || className.startsWith("io.sentry.samples.") || className.startsWith("io.sentry.mobile.")) {
                        io.sentry.protocol.v vVar = new io.sentry.protocol.v();
                        vVar.u(b(className));
                        vVar.x(className);
                        vVar.t(stackTraceElement.getMethodName());
                        vVar.s(stackTraceElement.getFileName());
                        if (stackTraceElement.getLineNumber() >= 0) {
                            vVar.v(Integer.valueOf(stackTraceElement.getLineNumber()));
                        }
                        vVar.y(Boolean.valueOf(stackTraceElement.isNativeMethod()));
                        arrayList.add(vVar);
                        if (arrayList.size() >= 100) {
                            break;
                        }
                    }
                }
            }
            Collections.reverse(arrayList);
            return arrayList;
        }
        return null;
    }

    public Boolean b(String str) {
        if (str != null && !str.isEmpty()) {
            for (String str2 : this.f23904a.getInAppIncludes()) {
                if (str.startsWith(str2)) {
                    return Boolean.TRUE;
                }
            }
            for (String str3 : this.f23904a.getInAppExcludes()) {
                if (str.startsWith(str3)) {
                    return Boolean.FALSE;
                }
            }
            return null;
        }
        return Boolean.TRUE;
    }
}
