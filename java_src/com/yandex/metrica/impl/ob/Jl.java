package com.yandex.metrica.impl.ob;

import android.os.Build;
import java.util.Set;
/* loaded from: classes2.dex */
public class Jl {

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f10570a;

    public Jl(Set<String> set) {
        this.f10570a = set;
    }

    public String a() {
        if (A2.a(21)) {
            String a10 = a(Build.SUPPORTED_64_BIT_ABIS);
            return a10 != null ? a10 : a(Build.SUPPORTED_32_BIT_ABIS);
        }
        return a(new String[]{Build.CPU_ABI, Build.CPU_ABI2});
    }

    private String a(String[] strArr) {
        for (String str : strArr) {
            if (this.f10570a.contains(str)) {
                return str;
            }
        }
        return null;
    }
}
