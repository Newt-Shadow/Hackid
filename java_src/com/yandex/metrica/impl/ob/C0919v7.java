package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ac.CrashpadServiceHelper;
import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.v7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0919v7 implements InterfaceC0527f7<C0823r7> {

    /* renamed from: a  reason: collision with root package name */
    private final L1 f13792a;

    /* renamed from: com.yandex.metrica.impl.ob.v7$a */
    /* loaded from: classes2.dex */
    class a implements InterfaceC0741nm<String, C0445c0> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0823r7 f13793a;

        a(C0919v7 c0919v7, C0823r7 c0823r7) {
            this.f13793a = c0823r7;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
        public C0445c0 a(String str) {
            return C1008z0.a(str, Ul.b(this.f13793a.f13487b.a())).c(this.f13793a.f13488c.f10118a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.v7$b */
    /* loaded from: classes2.dex */
    class b implements InterfaceC0741nm<String, C0445c0> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0823r7 f13794a;

        b(C0919v7 c0919v7, C0823r7 c0823r7) {
            this.f13794a = c0823r7;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
        public C0445c0 a(String str) {
            return C1008z0.b(str, Ul.b(this.f13794a.f13487b.a())).c(this.f13794a.f13488c.f10118a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.v7$c */
    /* loaded from: classes2.dex */
    public static class c implements InterfaceC0716mm<File> {

        /* renamed from: a  reason: collision with root package name */
        private final String f13795a;

        public c(String str) {
            this.f13795a = str;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(File file) {
            CrashpadServiceHelper.a(this.f13795a);
        }
    }

    public C0919v7(L1 l12) {
        this.f13792a = l12;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0527f7
    public void a(C0823r7 c0823r7) {
        C0823r7 c0823r72 = c0823r7;
        this.f13792a.a(c0823r72, new b(this, c0823r72));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0527f7
    public void b(C0823r7 c0823r7) {
        C0823r7 c0823r72 = c0823r7;
        this.f13792a.a(c0823r72, new a(this, c0823r72));
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void a2(C0823r7 c0823r7) {
        this.f13792a.a(c0823r7, new a(this, c0823r7));
    }

    /* renamed from: b  reason: avoid collision after fix types in other method */
    public void b2(C0823r7 c0823r7) {
        this.f13792a.a(c0823r7, new b(this, c0823r7));
    }
}
