package io.sentry;

import io.sentry.f6;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Date;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class s2 implements Runnable {

    /* renamed from: c  reason: collision with root package name */
    private static final Charset f23638c = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final s5 f23639a;

    /* renamed from: b  reason: collision with root package name */
    private final o0 f23640b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s2(s5 s5Var, o0 o0Var) {
        this.f23639a = s5Var;
        this.f23640b = o0Var;
    }

    private Date a(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), f23638c));
            try {
                String readLine = bufferedReader.readLine();
                this.f23639a.getLogger().c(j5.DEBUG, "Crash marker file has %s timestamp.", readLine);
                Date e10 = j.e(readLine);
                bufferedReader.close();
                return e10;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e11) {
            this.f23639a.getLogger().b(j5.ERROR, "Error reading the crash marker file.", e11);
            return null;
        } catch (IllegalArgumentException e12) {
            this.f23639a.getLogger().a(j5.ERROR, e12, "Error converting the crash timestamp.", new Object[0]);
            return null;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String cacheDirPath = this.f23639a.getCacheDirPath();
        if (cacheDirPath == null) {
            this.f23639a.getLogger().c(j5.INFO, "Cache dir is not set, not finalizing the previous session.", new Object[0]);
        } else if (!this.f23639a.isEnableAutoSessionTracking()) {
            this.f23639a.getLogger().c(j5.DEBUG, "Session tracking is disabled, bailing from previous session finalizer.", new Object[0]);
        } else {
            io.sentry.cache.g envelopeDiskCache = this.f23639a.getEnvelopeDiskCache();
            if ((envelopeDiskCache instanceof io.sentry.cache.f) && !((io.sentry.cache.f) envelopeDiskCache).R()) {
                this.f23639a.getLogger().c(j5.WARNING, "Timed out waiting to flush previous session to its own file in session finalizer.", new Object[0]);
                return;
            }
            File M = io.sentry.cache.f.M(cacheDirPath);
            y0 serializer = this.f23639a.getSerializer();
            if (M.exists()) {
                this.f23639a.getLogger().c(j5.WARNING, "Current session is not ended, we'd need to end it.", new Object[0]);
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(M), f23638c));
                    f6 f6Var = (f6) serializer.c(bufferedReader, f6.class);
                    if (f6Var == null) {
                        this.f23639a.getLogger().c(j5.ERROR, "Stream from path %s resulted in a null envelope.", M.getAbsolutePath());
                    } else {
                        File file = new File(this.f23639a.getCacheDirPath(), ".sentry-native/last_crash");
                        Date date = null;
                        if (file.exists()) {
                            this.f23639a.getLogger().c(j5.INFO, "Crash marker file exists, last Session is gonna be Crashed.", new Object[0]);
                            Date a10 = a(file);
                            if (!file.delete()) {
                                this.f23639a.getLogger().c(j5.ERROR, "Failed to delete the crash marker file. %s.", file.getAbsolutePath());
                            }
                            f6Var.p(f6.b.Crashed, null, true);
                            date = a10;
                        }
                        if (f6Var.f() == null) {
                            f6Var.d(date);
                        }
                        this.f23640b.v(a4.a(serializer, f6Var, this.f23639a.getSdkVersion()));
                    }
                    bufferedReader.close();
                } catch (Throwable th) {
                    this.f23639a.getLogger().b(j5.ERROR, "Error processing previous session.", th);
                }
                if (!M.delete()) {
                    this.f23639a.getLogger().c(j5.WARNING, "Failed to delete the previous session file.", new Object[0]);
                }
            }
        }
    }
}
