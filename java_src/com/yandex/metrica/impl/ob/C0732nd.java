package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.ResponseValidityChecker;
/* renamed from: com.yandex.metrica.impl.ob.nd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0732nd implements ResponseValidityChecker {
    @Override // com.yandex.metrica.networktasks.api.ResponseValidityChecker
    public boolean isResponseValid(int i10) {
        return (i10 == 400 || i10 == 500) ? false : true;
    }
}
