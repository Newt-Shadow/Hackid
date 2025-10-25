package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0837rl;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class Nk implements Cl {

    /* renamed from: a  reason: collision with root package name */
    private final Pattern f10912a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Nk(Pattern pattern) {
        this.f10912a = pattern;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public boolean a(Object obj) {
        return this.f10912a.matcher((String) obj).matches();
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public C0837rl.b a() {
        return C0837rl.b.BAD_REGEXP_MATCHED;
    }
}
