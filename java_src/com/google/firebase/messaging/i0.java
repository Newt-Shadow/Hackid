package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import m6.Task;
/* loaded from: classes.dex */
public class i0 implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final URL f8916a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Future f8917b;

    /* renamed from: c  reason: collision with root package name */
    private Task f8918c;

    private i0(URL url) {
        this.f8916a = url;
    }

    private byte[] c() {
        URLConnection openConnection = this.f8916a.openConnection();
        if (openConnection.getContentLength() <= 1048576) {
            InputStream inputStream = openConnection.getInputStream();
            try {
                byte[] d10 = b.d(b.b(inputStream, 1048577L));
                if (inputStream != null) {
                    inputStream.close();
                }
                if (Log.isLoggable("FirebaseMessaging", 2)) {
                    Log.v("FirebaseMessaging", "Downloaded " + d10.length + " bytes from " + this.f8916a);
                }
                if (d10.length <= 1048576) {
                    return d10;
                }
                throw new IOException("Image exceeds max size of 1048576");
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        throw new IOException("Content-Length exceeds max size of 1048576");
    }

    public static i0 e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new i0(new URL(str));
        } catch (MalformedURLException unused) {
            Log.w("FirebaseMessaging", "Not downloading image, bad URL: " + str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(m6.l lVar) {
        try {
            lVar.c(b());
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    public Bitmap b() {
        if (Log.isLoggable("FirebaseMessaging", 4)) {
            Log.i("FirebaseMessaging", "Starting download of: " + this.f8916a);
        }
        byte[] c10 = c();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(c10, 0, c10.length);
        if (decodeByteArray != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Successfully downloaded image: " + this.f8916a);
            }
            return decodeByteArray;
        }
        throw new IOException("Failed to decode image: " + this.f8916a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f8917b.cancel(true);
    }

    public Task f() {
        return (Task) n5.q.k(this.f8918c);
    }

    public void h(ExecutorService executorService) {
        final m6.l lVar = new m6.l();
        this.f8917b = executorService.submit(new Runnable() { // from class: com.google.firebase.messaging.h0
            @Override // java.lang.Runnable
            public final void run() {
                i0.this.g(lVar);
            }
        });
        this.f8918c = lVar.a();
    }
}
