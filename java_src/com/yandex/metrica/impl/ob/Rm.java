package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.concurrent.Semaphore;
/* loaded from: classes2.dex */
public final class Rm {

    /* renamed from: g  reason: collision with root package name */
    private static final HashMap<String, Rm> f11236g = new HashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private final String f11237a;

    /* renamed from: b  reason: collision with root package name */
    private FileLock f11238b;

    /* renamed from: c  reason: collision with root package name */
    private FileChannel f11239c;

    /* renamed from: d  reason: collision with root package name */
    private final File f11240d;

    /* renamed from: e  reason: collision with root package name */
    private RandomAccessFile f11241e;

    /* renamed from: f  reason: collision with root package name */
    private Semaphore f11242f = new Semaphore(1, true);

    private Rm(Context context, String str) {
        File file;
        String str2 = str + ".lock";
        this.f11237a = str2;
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            file = null;
        } else {
            file = new File(cacheDir, "appmetrica_locks");
        }
        if (file != null) {
            file.mkdirs();
        }
        this.f11240d = file != null ? new File(file, str2) : null;
    }

    public static synchronized Rm a(Context context, String str) {
        Rm rm;
        synchronized (Rm.class) {
            HashMap<String, Rm> hashMap = f11236g;
            rm = hashMap.get(str);
            if (rm == null) {
                rm = new Rm(context, str);
                hashMap.put(str, rm);
            }
        }
        return rm;
    }

    public synchronized void b() {
        this.f11242f.release();
        if (this.f11242f.availablePermits() > 0) {
            L0.a(this.f11238b);
            A2.a((Closeable) this.f11239c);
            A2.a((Closeable) this.f11241e);
            this.f11239c = null;
            this.f11241e = null;
        }
    }

    public synchronized void a() {
        this.f11242f.acquire();
        if (this.f11240d != null) {
            if (this.f11239c == null) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.f11240d, "rw");
                this.f11241e = randomAccessFile;
                this.f11239c = randomAccessFile.getChannel();
            }
            this.f11238b = this.f11239c.lock();
        } else {
            throw new IllegalStateException("Lock file is null");
        }
    }
}
