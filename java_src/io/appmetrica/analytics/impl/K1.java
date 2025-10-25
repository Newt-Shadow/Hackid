package io.appmetrica.analytics.impl;

import android.content.Context;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class K1 {

    /* renamed from: a  reason: collision with root package name */
    public final C1341ma f18471a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f18472b;

    public K1() {
        this(new C1341ma());
    }

    public final synchronized long a(Context context) {
        long j10;
        String a10;
        try {
            this.f18471a.getClass();
            a10 = Va.a(FileUtils.getFileFromAppStorage(context, "metrica_service_settings.dat"));
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(a10)) {
            j10 = new JSONObject(a10).optLong("delay");
        }
        j10 = 0;
        return j10;
    }

    public final void b(Context context) {
        synchronized (this) {
        }
        if (!this.f18472b) {
            long a10 = a(context);
            if (a10 > 0) {
                try {
                    Thread.sleep(a10);
                } catch (Throwable unused) {
                }
            }
            this.f18472b = true;
        }
    }

    public K1(C1341ma c1341ma) {
        this.f18472b = false;
        this.f18471a = c1341ma;
    }
}
