package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
/* renamed from: com.yandex.metrica.impl.ob.tm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0886tm {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13655a;

    /* renamed from: b  reason: collision with root package name */
    private final String f13656b;

    /* renamed from: c  reason: collision with root package name */
    private final B0 f13657c;

    /* renamed from: d  reason: collision with root package name */
    private File f13658d;

    /* renamed from: e  reason: collision with root package name */
    private FileLock f13659e;

    /* renamed from: f  reason: collision with root package name */
    private RandomAccessFile f13660f;

    /* renamed from: g  reason: collision with root package name */
    private FileChannel f13661g;

    /* renamed from: h  reason: collision with root package name */
    private int f13662h;

    public C0886tm(Context context, String str) {
        this(context, str, new B0());
    }

    public synchronized void a() {
        File b10 = this.f13657c.b(this.f13655a.getFilesDir(), this.f13656b);
        this.f13658d = b10;
        if (b10 != null) {
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.f13658d, "rw");
            this.f13660f = randomAccessFile;
            FileChannel channel = randomAccessFile.getChannel();
            this.f13661g = channel;
            if (this.f13662h == 0) {
                this.f13659e = channel.lock();
            }
            this.f13662h++;
        } else {
            throw new IllegalStateException("Cannot create lock file");
        }
    }

    public synchronized void b() {
        File file = this.f13658d;
        if (file != null) {
            file.getAbsolutePath();
        }
        int i10 = this.f13662h - 1;
        this.f13662h = i10;
        if (i10 == 0) {
            L0.a(this.f13659e);
        }
        A2.a((Closeable) this.f13660f);
        A2.a((Closeable) this.f13661g);
        this.f13660f = null;
        this.f13659e = null;
        this.f13661g = null;
    }

    public synchronized void c() {
        b();
        File file = this.f13658d;
        if (file != null) {
            file.delete();
        }
    }

    C0886tm(Context context, String str, B0 b02) {
        this.f13662h = 0;
        this.f13655a = context;
        this.f13656b = str + ".lock";
        this.f13657c = b02;
    }
}
