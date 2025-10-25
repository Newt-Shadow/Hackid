package io.appmetrica.analytics.screenshot.impl;

import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class W extends ContentObserver {

    /* renamed from: d  reason: collision with root package name */
    public static final String f21402d = MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString();

    /* renamed from: a  reason: collision with root package name */
    public final ClientContext f21403a;

    /* renamed from: b  reason: collision with root package name */
    public final id.a f21404b;

    /* renamed from: c  reason: collision with root package name */
    public volatile C1688j f21405c;

    public W(ClientContext clientContext, r rVar) {
        super(clientContext.getClientExecutorProvider().getDefaultExecutor().getHandler());
        this.f21403a = clientContext;
        this.f21404b = rVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10, Uri uri) {
        boolean H;
        C1688j c1688j;
        Object[] o10;
        boolean N;
        super.onChange(z10, uri);
        H = rd.y.H(String.valueOf(uri), f21402d, false, 2, null);
        if (H && (c1688j = this.f21405c) != null) {
            try {
                o10 = yc.j.o(new String[]{"date_added"}, c1688j.f21438b);
                String[] strArr = (String[]) o10;
                Cursor query = this.f21403a.getContext().getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, strArr, "date_added >= ?", new String[]{String.valueOf(new SystemTimeProvider().currentTimeSeconds() - c1688j.f21439c)}, "date_added DESC");
                if (query != null && query.moveToFirst()) {
                    for (String str : strArr) {
                    }
                    for (String str2 : c1688j.f21438b) {
                        N = rd.b0.N(query.getString(query.getColumnIndexOrThrow(str2)).toLowerCase(Locale.ROOT), "screenshot", false, 2, null);
                        if (N) {
                            this.f21404b.invoke();
                        }
                    }
                }
                xc.t tVar = xc.t.f32733a;
                gd.b.a(query, null);
            } catch (Exception unused) {
            }
        }
    }
}
