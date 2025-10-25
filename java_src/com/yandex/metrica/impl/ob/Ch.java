package com.yandex.metrica.impl.ob;

import android.net.Uri;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.Socket;
import java.util.Map;
/* loaded from: classes2.dex */
class Ch {

    /* renamed from: a  reason: collision with root package name */
    private final Socket f9855a;

    /* renamed from: b  reason: collision with root package name */
    private final Gh f9856b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Bh> f9857c;

    /* renamed from: d  reason: collision with root package name */
    private final Hh f9858d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ch(Socket socket, Gh gh, Map<String, Bh> map, Hh hh) {
        this.f9855a = socket;
        this.f9856b = gh;
        this.f9857c = map;
        this.f9858d = hh;
    }

    public void a() {
        BufferedReader bufferedReader;
        int indexOf;
        int indexOf2;
        BufferedReader bufferedReader2 = null;
        String str = null;
        try {
            try {
                this.f9855a.setSoTimeout(1000);
                bufferedReader = new BufferedReader(new InputStreamReader(this.f9855a.getInputStream()));
            } catch (Throwable unused) {
                return;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f9858d.a();
            String readLine = bufferedReader.readLine();
            if (!TextUtils.isEmpty(readLine) && ((readLine.startsWith("GET /") || readLine.startsWith("POST /")) && (indexOf2 = readLine.indexOf(32, (indexOf = readLine.indexOf(47) + 1))) > 0)) {
                str = readLine.substring(indexOf, indexOf2);
            } else {
                ((Jh) this.f9856b).a("invalid_route", readLine);
            }
            if (str != null) {
                Uri parse = Uri.parse(str);
                Bh bh = this.f9857c.get(parse.getPath());
                if (bh != null) {
                    Ah a10 = bh.a(this.f9855a, parse, this.f9858d);
                    if (a10.f9719c.f12246b.equals(a10.f9720d.getQueryParameter("t"))) {
                        a10.a();
                    } else {
                        ((Jh) a10.f9718b).a("request_with_wrong_token");
                    }
                } else {
                    ((Jh) this.f9856b).a("request_to_unknown_path", str);
                }
            }
            bufferedReader.close();
        } catch (Throwable th2) {
            th = th2;
            bufferedReader2 = bufferedReader;
            try {
                ((Jh) this.f9856b).a("LocalHttpServer exception", th);
                if (bufferedReader2 != null) {
                    bufferedReader2.close();
                }
            } catch (Throwable th3) {
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused2) {
                    }
                }
                throw th3;
            }
        }
    }
}
