package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import q2.h;
import q2.m;
@Keep
/* loaded from: classes.dex */
public class CctBackendFactory implements q2.d {
    @Override // q2.d
    public m create(h hVar) {
        return new d(hVar.b(), hVar.e(), hVar.d());
    }
}
