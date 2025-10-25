package io.sentry.flutter;

import id.l;
import java.util.Map;
/* loaded from: classes2.dex */
public final class SentryFlutterKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> void getIfNotNull(Map<String, ? extends Object> map, String str, l lVar) {
        Object obj = map.get(str);
        if (obj == null) {
            obj = null;
        }
        if (obj != null) {
            lVar.invoke(obj);
        }
    }
}
