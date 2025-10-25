package io.sentry.internal.gestures;

import io.sentry.util.q;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    final WeakReference f23173a;

    /* renamed from: b  reason: collision with root package name */
    final String f23174b;

    /* renamed from: c  reason: collision with root package name */
    final String f23175c;

    /* renamed from: d  reason: collision with root package name */
    final String f23176d;

    /* renamed from: e  reason: collision with root package name */
    final String f23177e;

    /* loaded from: classes2.dex */
    public enum a {
        CLICKABLE,
        SCROLLABLE
    }

    public b(Object obj, String str, String str2, String str3, String str4) {
        this.f23173a = new WeakReference(obj);
        this.f23174b = str;
        this.f23175c = str2;
        this.f23176d = str3;
        this.f23177e = str4;
    }

    public String a() {
        return this.f23174b;
    }

    public String b() {
        String str = this.f23175c;
        if (str != null) {
            return str;
        }
        return (String) q.c(this.f23176d, "UiElement.tag can't be null");
    }

    public String c() {
        return this.f23177e;
    }

    public String d() {
        return this.f23175c;
    }

    public String e() {
        return this.f23176d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (q.a(this.f23174b, bVar.f23174b) && q.a(this.f23175c, bVar.f23175c) && q.a(this.f23176d, bVar.f23176d)) {
            return true;
        }
        return false;
    }

    public Object f() {
        return this.f23173a.get();
    }

    public int hashCode() {
        return q.b(this.f23173a, this.f23175c, this.f23176d);
    }
}
