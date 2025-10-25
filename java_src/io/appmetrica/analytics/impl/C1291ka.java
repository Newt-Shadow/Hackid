package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
/* renamed from: io.appmetrica.analytics.impl.ka  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1291ka {

    /* renamed from: a  reason: collision with root package name */
    public final File f19955a;

    /* renamed from: b  reason: collision with root package name */
    public FileLock f19956b;

    /* renamed from: c  reason: collision with root package name */
    public RandomAccessFile f19957c;

    /* renamed from: d  reason: collision with root package name */
    public FileChannel f19958d;

    /* renamed from: e  reason: collision with root package name */
    public int f19959e;

    public C1291ka(Context context, String str) {
        this(a(context, str));
    }

    public final synchronized void a() {
        RandomAccessFile randomAccessFile = new RandomAccessFile(this.f19955a, "rw");
        this.f19957c = randomAccessFile;
        FileChannel channel = randomAccessFile.getChannel();
        this.f19958d = channel;
        if (this.f19959e == 0) {
            this.f19956b = channel.lock();
        }
        this.f19959e++;
    }

    public final synchronized void b() {
        this.f19955a.getAbsolutePath();
        int i10 = this.f19959e - 1;
        this.f19959e = i10;
        if (i10 == 0) {
            Va.a(this.f19956b);
        }
        Rn.a((Closeable) this.f19957c);
        Rn.a((Closeable) this.f19958d);
        this.f19957c = null;
        this.f19956b = null;
        this.f19958d = null;
    }

    public C1291ka(String str) {
        this(FileUtils.getFileFromPath(str + ".lock"));
    }

    public C1291ka(File file) {
        this.f19959e = 0;
        this.f19955a = file;
    }

    public static File a(Context context, String str) {
        File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(context, str + ".lock");
        if (fileFromSdkStorage != null) {
            return fileFromSdkStorage;
        }
        throw new IllegalStateException("Cannot create lock file");
    }
}
