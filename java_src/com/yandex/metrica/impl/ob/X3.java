package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.D3;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class X3 implements InterfaceC0662ki, R3 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f11719a;

    /* renamed from: b  reason: collision with root package name */
    private final I3 f11720b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0748o4<S3> f11721c;

    /* renamed from: d  reason: collision with root package name */
    private final C0834ri f11722d;

    /* renamed from: e  reason: collision with root package name */
    private final C0449c4 f11723e;

    /* renamed from: f  reason: collision with root package name */
    private S3 f11724f;

    /* renamed from: g  reason: collision with root package name */
    private Q3 f11725g;

    /* renamed from: h  reason: collision with root package name */
    private List<InterfaceC0662ki> f11726h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private final J3 f11727i;

    public X3(Context context, I3 i32, D3 d32, C0449c4 c0449c4, InterfaceC0748o4<S3> interfaceC0748o4, J3 j32, C0513ei c0513ei) {
        this.f11719a = context;
        this.f11720b = i32;
        this.f11723e = c0449c4;
        this.f11721c = interfaceC0748o4;
        this.f11727i = j32;
        this.f11722d = c0513ei.a(context, i32, d32.f9871a);
        c0513ei.a(i32, this);
    }

    public void a(C0445c0 c0445c0, D3 d32) {
        S3 s32;
        ((C1012z4) a()).a();
        if (C1008z0.a(c0445c0.o())) {
            s32 = a();
        } else {
            if (this.f11724f == null) {
                synchronized (this) {
                    S3 a10 = this.f11721c.a(this.f11719a, this.f11720b, this.f11723e.a(), this.f11722d);
                    this.f11724f = a10;
                    this.f11726h.add(a10);
                }
            }
            s32 = this.f11724f;
        }
        if (!C1008z0.b(c0445c0.o())) {
            D3.a aVar = d32.f9872b;
            synchronized (this) {
                this.f11723e.a(aVar);
                Q3 q32 = this.f11725g;
                if (q32 != null) {
                    ((C1012z4) q32).a(aVar);
                }
                S3 s33 = this.f11724f;
                if (s33 != null) {
                    s33.a(aVar);
                }
            }
        }
        s32.a(c0445c0);
    }

    public synchronized void b(InterfaceC0648k4 interfaceC0648k4) {
        this.f11727i.b(interfaceC0648k4);
    }

    public synchronized void a(InterfaceC0648k4 interfaceC0648k4) {
        this.f11727i.a(interfaceC0648k4);
    }

    private Q3 a() {
        if (this.f11725g == null) {
            synchronized (this) {
                Q3 b10 = this.f11721c.b(this.f11719a, this.f11720b, this.f11723e.a(), this.f11722d);
                this.f11725g = b10;
                this.f11726h.add(b10);
            }
        }
        return this.f11725g;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0662ki
    public synchronized void a(C0787pi c0787pi) {
        for (InterfaceC0662ki interfaceC0662ki : this.f11726h) {
            interfaceC0662ki.a(c0787pi);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0662ki
    public synchronized void a(EnumC0563gi enumC0563gi, C0787pi c0787pi) {
        for (InterfaceC0662ki interfaceC0662ki : this.f11726h) {
            interfaceC0662ki.a(enumC0563gi, c0787pi);
        }
    }

    @Override // com.yandex.metrica.impl.ob.R3
    public void a(D3 d32) {
        this.f11722d.a(d32.f9871a);
        D3.a aVar = d32.f9872b;
        synchronized (this) {
            this.f11723e.a(aVar);
            Q3 q32 = this.f11725g;
            if (q32 != null) {
                ((C1012z4) q32).a(aVar);
            }
            S3 s32 = this.f11724f;
            if (s32 != null) {
                s32.a(aVar);
            }
        }
    }
}
