package nf;

import java.util.ArrayList;
import java.util.List;
import mf.g;
import of.m;
/* loaded from: classes2.dex */
public class d implements c {

    /* renamed from: a  reason: collision with root package name */
    b f26896a;

    /* renamed from: b  reason: collision with root package name */
    List f26897b;

    /* renamed from: c  reason: collision with root package name */
    String f26898c;

    /* renamed from: d  reason: collision with root package name */
    m f26899d;

    /* renamed from: e  reason: collision with root package name */
    String f26900e;

    /* renamed from: f  reason: collision with root package name */
    String f26901f;

    /* renamed from: g  reason: collision with root package name */
    Object[] f26902g;

    /* renamed from: h  reason: collision with root package name */
    long f26903h;

    /* renamed from: i  reason: collision with root package name */
    Throwable f26904i;

    public void a(g gVar) {
        if (gVar == null) {
            return;
        }
        if (this.f26897b == null) {
            this.f26897b = new ArrayList(2);
        }
        this.f26897b.add(gVar);
    }

    public b b() {
        return this.f26896a;
    }

    public m c() {
        return this.f26899d;
    }

    public void d(Object[] objArr) {
        this.f26902g = objArr;
    }

    public void e(b bVar) {
        this.f26896a = bVar;
    }

    public void f(m mVar) {
        this.f26899d = mVar;
    }

    public void g(String str) {
        this.f26898c = str;
    }

    public void h(String str) {
        this.f26901f = str;
    }

    public void i(String str) {
        this.f26900e = str;
    }

    public void j(Throwable th) {
        this.f26904i = th;
    }

    public void k(long j10) {
        this.f26903h = j10;
    }
}
