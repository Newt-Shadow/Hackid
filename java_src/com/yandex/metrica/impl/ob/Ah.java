package com.yandex.metrica.impl.ob;

import android.net.Uri;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class Ah {

    /* renamed from: a  reason: collision with root package name */
    final Socket f9717a;

    /* renamed from: b  reason: collision with root package name */
    final Gh f9718b;

    /* renamed from: c  reason: collision with root package name */
    final C0488di f9719c;

    /* renamed from: d  reason: collision with root package name */
    final Uri f9720d;

    /* renamed from: e  reason: collision with root package name */
    final Hh f9721e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ah(Socket socket, Uri uri, Gh gh, C0488di c0488di, Hh hh) {
        this.f9717a = socket;
        this.f9720d = uri;
        this.f9718b = gh;
        this.f9719c = c0488di;
        this.f9721e = hh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, Map<String, String> map, byte[] bArr) {
        BufferedOutputStream bufferedOutputStream;
        this.f9721e.b();
        BufferedOutputStream bufferedOutputStream2 = null;
        BufferedOutputStream bufferedOutputStream3 = null;
        BufferedOutputStream bufferedOutputStream4 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(this.f9717a.getOutputStream());
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e10) {
            e = e10;
        }
        try {
            bufferedOutputStream.write(str.getBytes());
            a(bufferedOutputStream);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                a(bufferedOutputStream, key, entry.getValue());
                bufferedOutputStream3 = key;
            }
            a(bufferedOutputStream);
            bufferedOutputStream.write(bArr);
            bufferedOutputStream.flush();
            this.f9721e.c();
            ((Jh) this.f9718b).b(this.f9717a.getLocalPort(), this.f9721e);
            bufferedOutputStream2 = bufferedOutputStream3;
        } catch (IOException e11) {
            e = e11;
            bufferedOutputStream4 = bufferedOutputStream;
            ((Jh) this.f9718b).a("io_exception_during_sync", e);
            bufferedOutputStream = bufferedOutputStream4;
            bufferedOutputStream2 = bufferedOutputStream4;
            A2.a((Closeable) bufferedOutputStream);
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2 = bufferedOutputStream;
            A2.a((Closeable) bufferedOutputStream2);
            throw th;
        }
        A2.a((Closeable) bufferedOutputStream);
    }

    private void a(OutputStream outputStream, String str, String str2) {
        outputStream.write((str + ": " + str2).getBytes());
        a(outputStream);
    }

    private void a(OutputStream outputStream) {
        outputStream.write("\r\n".getBytes());
    }
}
