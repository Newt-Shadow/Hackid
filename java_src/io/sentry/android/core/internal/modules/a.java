package io.sentry.android.core.internal.modules;

import android.content.Context;
import io.sentry.ILogger;
import io.sentry.android.core.x0;
import io.sentry.internal.modules.d;
import io.sentry.j5;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class a extends d {

    /* renamed from: d  reason: collision with root package name */
    private final Context f22311d;

    public a(Context context, ILogger iLogger) {
        super(iLogger);
        this.f22311d = x0.h(context);
    }

    @Override // io.sentry.internal.modules.d
    protected Map b() {
        TreeMap treeMap = new TreeMap();
        try {
            InputStream open = this.f22311d.getAssets().open("sentry-external-modules.txt");
            Map c10 = c(open);
            if (open != null) {
                open.close();
            }
            return c10;
        } catch (FileNotFoundException unused) {
            this.f23185a.c(j5.INFO, "%s file was not found.", "sentry-external-modules.txt");
            return treeMap;
        } catch (IOException e10) {
            this.f23185a.b(j5.ERROR, "Error extracting modules.", e10);
            return treeMap;
        }
    }
}
