package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.StrictMode;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class n0 implements u {

    /* renamed from: a  reason: collision with root package name */
    private static final Map f6120a = new r.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n0 b(Context context, String str, Runnable runnable) {
        if (!m.b()) {
            synchronized (n0.class) {
                android.support.v4.media.session.b.a(f6120a.get(null));
                StrictMode.allowThreadDiskReads();
                throw null;
            }
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void c() {
        synchronized (n0.class) {
            Map map = f6120a;
            Iterator it = map.values().iterator();
            if (!it.hasNext()) {
                map.clear();
            } else {
                android.support.v4.media.session.b.a(it.next());
                throw null;
            }
        }
    }
}
