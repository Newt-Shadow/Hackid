package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0837rl;
import java.util.regex.Pattern;
/* renamed from: com.yandex.metrica.impl.ob.ok  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0764ok implements Cl {

    /* renamed from: a  reason: collision with root package name */
    private final Pattern f13093a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0764ok(Pattern pattern) {
        this.f13093a = pattern;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public boolean a(Object obj) {
        return !this.f13093a.matcher((String) obj).matches();
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public C0837rl.b a() {
        return C0837rl.b.REGEXP_NOT_MATCHED;
    }
}
