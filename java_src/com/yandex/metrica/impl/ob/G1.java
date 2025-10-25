package com.yandex.metrica.impl.ob;

import android.content.Context;
/* loaded from: classes2.dex */
public class G1 {

    /* loaded from: classes2.dex */
    class a implements InterfaceC1021zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0997yd f10103a;

        a(G1 g12, C0997yd c0997yd) {
            this.f10103a = c0997yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            this.f10103a.getClass();
            return false;
        }
    }

    /* loaded from: classes2.dex */
    class b implements InterfaceC1021zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0997yd f10104a;

        b(G1 g12, C0997yd c0997yd) {
            this.f10104a = c0997yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            if (this.f10104a.a(context) && this.f10104a.c(context)) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    class c implements InterfaceC1021zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0997yd f10105a;

        c(G1 g12, C0997yd c0997yd) {
            this.f10105a = c0997yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            return this.f10105a.c(context);
        }
    }

    /* loaded from: classes2.dex */
    class d implements InterfaceC1021zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0997yd f10106a;

        d(G1 g12, C0997yd c0997yd) {
            this.f10106a = c0997yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            this.f10106a.getClass();
            return false;
        }
    }

    /* loaded from: classes2.dex */
    class e implements InterfaceC1021zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0997yd f10107a;

        e(G1 g12, C0997yd c0997yd) {
            this.f10107a = c0997yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            if (this.f10107a.a(context)) {
                this.f10107a.getClass();
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    class f implements InterfaceC1021zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0997yd f10108a;

        f(G1 g12, C0997yd c0997yd) {
            this.f10108a = c0997yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            this.f10108a.getClass();
            return false;
        }
    }

    /* loaded from: classes2.dex */
    class g implements InterfaceC1021zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0997yd f10109a;

        g(G1 g12, C0997yd c0997yd) {
            this.f10109a = c0997yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            this.f10109a.getClass();
            return false;
        }
    }

    /* loaded from: classes2.dex */
    class h implements InterfaceC1021zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0997yd f10110a;

        h(G1 g12, C0997yd c0997yd) {
            this.f10110a = c0997yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            return this.f10110a.a(context);
        }
    }

    /* loaded from: classes2.dex */
    class i implements InterfaceC1021zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0997yd f10111a;

        i(G1 g12, C0997yd c0997yd) {
            this.f10111a = c0997yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1021zd
        public boolean a(Context context) {
            return this.f10111a.a(context);
        }
    }

    public InterfaceC1021zd a(C0997yd c0997yd) {
        return new i(this, c0997yd);
    }

    public InterfaceC1021zd b(C0997yd c0997yd) {
        return new h(this, c0997yd);
    }

    public InterfaceC1021zd c(C0997yd c0997yd) {
        return new g(this, c0997yd);
    }

    public InterfaceC1021zd d(C0997yd c0997yd) {
        if (A2.a(29)) {
            return new a(this, c0997yd);
        }
        if (A2.a(23)) {
            return new b(this, c0997yd);
        }
        return new c(this, c0997yd);
    }

    public InterfaceC1021zd e(C0997yd c0997yd) {
        if (A2.a(29)) {
            return new d(this, c0997yd);
        }
        if (A2.a(23)) {
            return new e(this, c0997yd);
        }
        return new f(this, c0997yd);
    }
}
