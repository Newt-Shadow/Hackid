package io.sentry.internal.modules;

import io.sentry.ILogger;
import io.sentry.j5;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public abstract class d implements b {

    /* renamed from: c  reason: collision with root package name */
    private static final Charset f23184c = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    protected final ILogger f23185a;

    /* renamed from: b  reason: collision with root package name */
    private Map f23186b = null;

    public d(ILogger iLogger) {
        this.f23185a = iLogger;
    }

    @Override // io.sentry.internal.modules.b
    public Map a() {
        Map map = this.f23186b;
        if (map != null) {
            return map;
        }
        Map b10 = b();
        this.f23186b = b10;
        return b10;
    }

    protected abstract Map b();

    /* JADX INFO: Access modifiers changed from: protected */
    public Map c(InputStream inputStream) {
        TreeMap treeMap = new TreeMap();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, f23184c));
            try {
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    int lastIndexOf = readLine.lastIndexOf(58);
                    treeMap.put(readLine.substring(0, lastIndexOf), readLine.substring(lastIndexOf + 1));
                }
                this.f23185a.c(j5.DEBUG, "Extracted %d modules from resources.", Integer.valueOf(treeMap.size()));
                bufferedReader.close();
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e10) {
            this.f23185a.b(j5.ERROR, "Error extracting modules.", e10);
        } catch (RuntimeException e11) {
            this.f23185a.a(j5.ERROR, e11, "%s file is malformed.", "sentry-external-modules.txt");
        }
        return treeMap;
    }
}
