package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ac.CrashpadHelper;
import java.util.Objects;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class A7 implements InterfaceC0651k7 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9699a;

    /* renamed from: b  reason: collision with root package name */
    private final A3 f9700b;

    /* renamed from: c  reason: collision with root package name */
    private C0991y7 f9701c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0716mm<Bundle> f9702d;

    /* renamed from: e  reason: collision with root package name */
    private final E7 f9703e;

    /* renamed from: f  reason: collision with root package name */
    private final I7 f9704f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC0741nm<Void, String> f9705g;

    /* loaded from: classes2.dex */
    class a implements InterfaceC0716mm<Bundle> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(Bundle bundle) {
            CrashpadHelper.setUpNativeUncaughtExceptionHandler(bundle);
        }
    }

    /* loaded from: classes2.dex */
    class b implements InterfaceC0741nm<Void, String> {
        b() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
        public String a(Void r12) {
            return CrashpadHelper.getLibraryVersion();
        }
    }

    public A7(Context context, A3 a32) {
        this(context, a32, new B0(), new a());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0651k7
    public String a() {
        return "appmetrica_native_crashes";
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0651k7
    public void b() {
        CrashpadHelper.cancelSetUpNativeUncaughtExceptionHandler();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0651k7
    public String c() {
        return "appmetrica-native";
    }

    private A7(Context context, A3 a32, B0 b02, InterfaceC0716mm<Bundle> interfaceC0716mm) {
        this(context, a32, new C0991y7(context, b02, P.g().d().b()), interfaceC0716mm, new E7(), new I7(), new b());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0651k7
    public void a(String str, String str2, String str3) {
        C7 b10 = this.f9701c.b();
        if (b10 != null) {
            if (TextUtils.isEmpty(b10.f9833a) && b10.f9836d == null) {
                return;
            }
            this.f9704f.a(str3);
            String str4 = null;
            this.f9704f.b(this.f9705g.a(null));
            InterfaceC0716mm<Bundle> interfaceC0716mm = this.f9702d;
            String a10 = this.f9704f.a();
            Bundle bundle = new Bundle();
            E7 e72 = this.f9703e;
            A3 a32 = this.f9700b;
            e72.getClass();
            try {
                str4 = Base64.encodeToString(new JSONObject().put("arg_cd", new JSONObject().put("arg_ak", str).put("arg_pn", a32.f()).put("arg_pd", a32.g()).put("arg_ps", a32.h()).put("arg_rt", CounterConfiguration.b.MAIN.b())).toString().getBytes(), 0);
            } catch (Throwable unused) {
            }
            bundle.putString("arg_cd", str4);
            bundle.putString("arg_rc", a10);
            bundle.putString("arg_dd", str2);
            bundle.putString("arg_hp", b10.f9833a);
            bundle.putBoolean("arg_i64", b10.f9834b);
            bundle.putBoolean("arg_ul", b10.f9835c);
            Context context = this.f9699a;
            bundle.putString("arg_sn", context.getPackageName() + "-crashpad_new_crash_socket");
            if (b10.f9836d == null) {
                bundle.putBoolean("arg_ap", false);
            } else {
                bundle.putBoolean("arg_ap", true);
                Objects.requireNonNull(b10.f9836d);
                bundle.putString("arg_mc", "com.yandex.metrica.impl.ac.HandlerRunner");
                bundle.putString("arg_akp", b10.f9836d.f13114a);
                bundle.putString("arg_lp", b10.f9836d.f13115b);
                bundle.putString("arg_dp", b10.f9836d.f13116c);
            }
            interfaceC0716mm.b(bundle);
        }
    }

    A7(Context context, A3 a32, C0991y7 c0991y7, InterfaceC0716mm<Bundle> interfaceC0716mm, E7 e72, I7 i72, InterfaceC0741nm<Void, String> interfaceC0741nm) {
        this.f9699a = context;
        this.f9700b = a32;
        this.f9701c = c0991y7;
        this.f9702d = interfaceC0716mm;
        this.f9703e = e72;
        this.f9704f = i72;
        this.f9705g = interfaceC0741nm;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0651k7
    public void a(boolean z10) {
        CrashpadHelper.logsEnabled(z10);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0651k7
    public void a(String str) {
        this.f9704f.a(str);
        CrashpadHelper.updateRuntimeConfig(this.f9704f.a());
    }
}
